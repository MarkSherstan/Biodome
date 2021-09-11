import UIKit

var greeting = "Hello, playground"

var sensors = ["Humidity 1: ", "Humidity 2: ", "Light: ", "Temperature: "]

print(sensors.count)

for sensor in sensors{
    print(sensor)
}

for ii in 1...sensors.count{
    print(ii)
}

print(sensors)
