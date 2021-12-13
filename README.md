# Biodome
Hardware, firmware, and Bluetooth Low Energy (BLE) iOS app for monitoring plants around the house. Inspired by the Cloud Forest in Singapore.

<p align="center">
  <img src="https://github.com/MarkSherstan/Biodome/blob/main/Resources/CloudForestSingapore.png" width="250"/>
</p>

# Requirements
## App
* Computer running macOS
* Xcode 13.0 or greater
* Device running iOS 15.0 or greater (UI built for iPhone Xs)

## Hardware
* Raspberry Pi 3B+
* Custom PCB board (boards are built with KiCad 5 and manufactured by JLCPCB))

## Firmware
* Python 3 
* Standard Raspbian OS

# Setup
## App
* Build using Xcode and upload to iOS device. See `/Resources` for example screenshots of the app using simulated data.

## Hardware
* Power on system (remember RPi is 3V3 logic)

## Firmware
As of BlueZ version 5.43 (currently shipped with Raspbian), some BLE aspects are still experimental. You will need to add the 'Experimental' flag to the bluetooth daemon. Open the file: `sudo nano /etc/systemd/system/dbus-org.bluez.service` and add the `-E` flag at the end of the `ExecStart` line. It should look like this:
```
ExecStart=/usr/lib/bluetooth/bluetoothd -E
```
To disable auto battery reading and prevent connection issues, edit the same file and add `-P battery` to the end of the `ExecStart` line to disable the Battery feature in bluetooth. Your ExecStart should look something like:
```
ExecStart=/usr/lib/bluetooth/bluetoothd -E -P battery
```
Run `systemctl daemon-reload` and `systemctl restart bluetooth` to apply the changes to the Bluetooth service

Navigate to `\Firmware` and run `python3 main.py`. The RPi is now ready to share values with the iOS app.

# Future Work
## App
* Fix connection logic
* Connect to multiple devices
* More general UI layout

### Resources 
Core Bluetooth
* https://www.raywenderlich.com/231-core-bluetooth-tutorial-for-ios-heart-rate-monitor#toc-anchor-009
* https://www.novelbits.io/intro-ble-mobile-development-ios-part-2/
* https://learn.adafruit.com/build-a-bluetooth-app-using-swift-5/code
* https://punchthrough.com/core-bluetooth-basics/

Style and UI:
*  https://betterprogramming.pub/flat-design-list-swiftui-part-i-ab9e841720cd
*  https://developer.apple.com/tutorials/swiftui/building-lists-and-navigation
*  https://betterprogramming.pub/creating-an-apple-like-splash-screen-in-swiftui-fdeb36b47e81

Other:
* https://www.raywenderlich.com/2164-arduino-tutorial-integrating-bluetooth-le-and-ios-with-swift#toc-anchor-009

## Hardware
* Use digital pin to wake up moisture sensor (change to 3.3V 555 timer)
* Check backorder on BME280 - Not currently used for V1
* Make the board act as a shield for the Pi (pins and mounting holes)

## Firmware 
* Website JavaScript interface (similar to Octo-Print)
* Slow logging... Log on ram for 24h then save to SD card (Dont burn out SD card)
* Photos/Image Processing, moisture, humidity, temperature, light, pressure


# Node Install Instructions (RPi)
sudo apt-get update
sudo apt-get dist-upgrade

curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
node -v
