import random
import dbus
import sys

sys.path.append('GATT-Server')
from advertisement import Advertisement
from service import Application, Service, Characteristic

NOTIFY_TIMEOUT = 5000

biodomeServiceUUID = "00000000-0000-4A5B-8D75-3E5B444BC3CF"
temperatureServiceUUID   = "00000001-0000-4A5B-8D75-3E5B444BC3CF"
temperatureCharAlphaUUID = "00000001-AAAA-4A5B-8D75-3E5B444BC3CF"
temperatureCharBetaUUID  = "00000001-BBBB-4A5B-8D75-3E5B444BC3CF"

class BiodomeAdvertisement(Advertisement):
    def __init__(self, index):
        Advertisement.__init__(self, index, "peripheral")
        self.add_local_name("Biodome")
        self.add_service_uuid(biodomeServiceUUID)
        self.include_tx_power = True

class TemperatureService(Service):
    def __init__(self, index):
        Service.__init__(self, index, temperatureServiceUUID, True)
        self.add_characteristic(TemperatureCharacteristic(self, temperatureCharAlphaUUID))
        self.add_characteristic(TemperatureCharacteristic(self, temperatureCharBetaUUID))

class TemperatureCharacteristic(Characteristic):
    def __init__(self, service, UUID):
        self.notifying = False
        Characteristic.__init__(self, UUID, ["notify", "read"], service)

    def get_temperature(self):
        value = []

        temp = int(random.random() * 1000) - 500
        print(temp)

        byteArray = temp.to_bytes(2, byteorder='big', signed=True)
        for b in byteArray:
            value.append(dbus.Byte(b))

        return value

    def set_temperature_callback(self):
        if self.notifying:
            value = self.get_temperature()
            self.PropertiesChanged("org.bluez.GattCharacteristic1", {"Value": value}, [])

        return self.notifying

    def StartNotify(self):
        if self.notifying:
            return

        self.notifying = True

        value = self.get_temperature()
        self.PropertiesChanged("org.bluez.GattCharacteristic1", {"Value": value}, [])
        self.add_timeout(NOTIFY_TIMEOUT, self.set_temperature_callback)

    def StopNotify(self):
        self.notifying = False

    def ReadValue(self, options):
        value = self.get_temperature()

        return value

app = Application()
app.add_service(TemperatureService(0))
app.register()

adv = BiodomeAdvertisement(0)
adv.register()

try:
    app.run()
except KeyboardInterrupt:
    app.quit()