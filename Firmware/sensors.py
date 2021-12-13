import random

class TemperatureSensor:
    def __init__(self):
        pass

    def getValue(self):
        print('Hello')
        return int(random.random() * 1000) - 500
