import sys
sys.path.append('GATT-Server')

import dbus
from advertisement import Advertisement
from service import Application, Service, Characteristic, Descriptor
from gpiozero import CPUTemperature

GATT_CHRC_IFACE = "org.bluez.GattCharacteristic1"
NOTIFY_TIMEOUT = 5000

BiodomeUUID = "00000000-710e-4a5b-8d75-3e5b444bc3cf"
TemperatureServiceUUID = "00000001-710e-4a5b-8d75-3e5b444bc3cf"

class BiodomeAdvertisement(Advertisement):
    def __init__(self, index):
        Advertisement.__init__(self, index, "peripheral")
        self.add_local_name("Biodome")
        self.add_service_uuid(BiodomeUUID)
        self.include_tx_power = True

class TemperatureService(Service):
    def __init__(self, index):
        Service.__init__(self, index, TemperatureServiceUUID, True)
        self.add_characteristic(TemperatureCharacteristic(self))


class TemperatureCharacteristic(Characteristic):
    TEMP_CHARACTERISTIC_UUID = "00000002-710e-4a5b-8d75-3e5b444bc3cf"

    def __init__(self, service):
        self.notifying = False

        Characteristic.__init__(
                self, self.TEMP_CHARACTERISTIC_UUID,
                ["notify", "read"], service)

    def get_temperature(self):
        value = []

        cpu = CPUTemperature()
        temp = int(round(cpu.temperature, 1) * 10)
        byteArray = temp.to_bytes(2, byteorder='big', signed=True)

        for b in byteArray:
            value.append(dbus.Byte(b))

        return value

    def set_temperature_callback(self):
        if self.notifying:
            value = self.get_temperature()
            self.PropertiesChanged(GATT_CHRC_IFACE, {"Value": value}, [])

        return self.notifying

    def StartNotify(self):
        if self.notifying:
            return

        self.notifying = True

        value = self.get_temperature()
        self.PropertiesChanged(GATT_CHRC_IFACE, {"Value": value}, [])
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

# https://btprodspecificationrefs.blob.core.windows.net/assigned-values/16-bit%20UUID%20Numbers%20Document.pdf