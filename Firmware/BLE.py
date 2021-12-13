import dbus
import sys

sys.path.append('GATT-Server')
from advertisement import Advertisement
from service import Application, Service, Characteristic
from sensors import *

NOTIFY_TIMEOUT = 2500

biodomeServiceUUID = "00000000-0000-4A5B-8D75-3E5B444BC3CF"

temperatureServiceUUID   = "00000001-0000-4A5B-8D75-3E5B444BC3CF"
temperatureCharAlphaUUID = "00000001-AAAA-4A5B-8D75-3E5B444BC3CF"
temperatureCharBetaUUID  = "00000001-BBBB-4A5B-8D75-3E5B444BC3CF"

moistureServiceUUID = "00000002-0000-4A5B-8D75-3E5B444BC3CF"
moistureCharUUID    = "00000002-AAAA-4A5B-8D75-3E5B444BC3CF"

lightServiceUUID = "00000003-0000-4A5B-8D75-3E5B444BC3CF"
lightCharUUID    = "00000003-AAAA-4A5B-8D75-3E5B444BC3CF"

class BiodomeAdvertisement(Advertisement):
    def __init__(self, index):
        Advertisement.__init__(self, index, "peripheral")
        self.add_local_name("Biodome")
        self.add_service_uuid(biodomeServiceUUID)
        self.include_tx_power = True

class TemperatureService(Service):
    def __init__(self, index):
        Service.__init__(self, index, temperatureServiceUUID, True)
        self.add_characteristic(GeneralCharacteristic(self, temperatureCharAlphaUUID, TemperatureSensor()))
        self.add_characteristic(GeneralCharacteristic(self, temperatureCharBetaUUID, TemperatureSensor()))

class MoistureService(Service):
    def __init__(self, index):
        Service.__init__(self, index, moistureServiceUUID, True)
        self.add_characteristic(GeneralCharacteristic(self, moistureCharUUID, TemperatureSensor()))

class LightService(Service):
    def __init__(self, index):
        Service.__init__(self, index, lightServiceUUID, True)
        self.add_characteristic(GeneralCharacteristic(self, lightCharUUID, TemperatureSensor()))

class GeneralCharacteristic(Characteristic):
    def __init__(self, service, UUID, sensor):
        self.sensor = sensor
        self.notifying = False
        Characteristic.__init__(self, UUID, ["notify", "read"], service)

    def getValue(self):
        value = []

        temp = self.sensor.getValue()

        byteArray = temp.to_bytes(2, byteorder='big', signed=True)
        for b in byteArray:
            value.append(dbus.Byte(b))

        return value

    def callback(self):
        if self.notifying:
            value = self.getValue()
            self.PropertiesChanged("org.bluez.GattCharacteristic1", {"Value": value}, [])

        return self.notifying

    def StartNotify(self):
        if self.notifying:
            return

        self.notifying = True

        value = self.getValue()
        self.PropertiesChanged("org.bluez.GattCharacteristic1", {"Value": value}, [])
        self.add_timeout(NOTIFY_TIMEOUT, self.callback)

    def StopNotify(self):
        self.notifying = False

    def ReadValue(self, options):
        value = self.getValue()

        return value
