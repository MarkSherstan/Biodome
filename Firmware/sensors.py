class TemperatureSensor:
    def __init__(self):
        self.ii = -100

    def getValue(self):
        self.ii += 2
        return int(self.ii)

class MoistureSensor:
    def __init__(self):
        self.ii = 0

    def getValue(self):
        self.ii += 5
        return int(self.ii)

class LightSensor:
    def __init__(self):
        self.ii = 0

    def getValue(self):
        self.ii += 10
        return int(self.ii)  
