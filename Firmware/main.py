from BLE import *

def main():
    app = Application()
    app.add_service(TemperatureService(0))
    app.add_service(MoistureService(1))
    app.add_service(LightService(2))
    app.register()

    adv = BiodomeAdvertisement(0)
    adv.register()

    try:
        app.run()
    except KeyboardInterrupt:
        app.quit()

if __name__ == "__main__":
    main()