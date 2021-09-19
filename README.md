# Biodome
Sensor suite and webpage interface for monitoring plants around the house. Inspired by the Cloud Forest in Singapore.

## Ideas
- Website JavaScript interface (similar to Octo-Print)
- Each plant have its own tab? -> Put notes with date info?
- Slow logging... Log on ram for 24h then save to SD card (Dont burn out SD card)

## Things to Sense / Calculate
- Photos / Image Processing
- Soil Moisture
- Ambient Humiditiy
- Ambient Temperature
- Ambient Light (lux)
- Ambient Pressure (Barometric?)

## PCB V2 Notes
- Use digital pin to wake up sensor (change to 3.3V 555 timer)
- Check backorder on BME280 - Not currently used for V1
- Make the board act as a shield for the Pi (pins and mounting holes)

## To Order
- RPi 40 pin cable: https://www.digikey.ca/en/products/detail/adafruit-industries-llc/1988/7241480
- 5V supply (barallel plug - center postive - double check polarity)
- Servo connectors???

## Resources
Core Bluetooth
- https://www.raywenderlich.com/231-core-bluetooth-tutorial-for-ios-heart-rate-monitor#toc-anchor-009
- https://www.novelbits.io/intro-ble-mobile-development-ios-part-2/
- https://learn.adafruit.com/build-a-bluetooth-app-using-swift-5/code
- https://punchthrough.com/core-bluetooth-basics/

Style and UI:
- https://betterprogramming.pub/flat-design-list-swiftui-part-i-ab9e841720cd
- https://developer.apple.com/tutorials/swiftui/building-lists-and-navigation
- https://betterprogramming.pub/creating-an-apple-like-splash-screen-in-swiftui-fdeb36b47e81

Other:
- https://www.raywenderlich.com/2164-arduino-tutorial-integrating-bluetooth-le-and-ios-with-swift#toc-anchor-009



## RPi Setup
https://github.com/Douglas6/cputemp

As of BlueZ version 5.43 (currently shipped with Raspbian Stretch), some BLE aspects are still experimental. You will need to add the 'Experimental' flag to the bluetooth daemon. Do this: sudo nano /etc/systemd/system/dbus-org.bluez.service and add the '-E' flag at the end of the 'ExecStart' line. It should look like this:

ExecStart=/usr/lib/bluetooth/bluetoothd -E

To disable auto Battery reading
Open the bluetooth service file /usr/lib/systemd/system/bluetooth.service, or /etc/systemd/system/bluetooth.target.wants/bluetooth.service in a text editor. You may need sudo permission to write to this file.
Add -P battery to the end of the ExecStart line to disable the Battery feature in bluetoothd. Your ExecStart should look something like ExecStart=/usr/lib/bluetooth/bluetoothd -P battery now.
Save the file.
Run systemctl daemon-reload and systemctl restart bluetooth to apply the changes to the Bluetooth service

