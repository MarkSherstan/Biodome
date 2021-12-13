from adafruit_mcp3xxx.analog_in import AnalogIn
import adafruit_mcp3xxx.mcp3008 as MCP
import digitalio
import busio
import board
import time

# Create SPI bus and chip select
spi = busio.SPI(clock=board.SCK, MISO=board.MISO, MOSI=board.MOSI)
cs = digitalio.DigitalInOut(board.D5)

# Create MCP object
mcp = MCP.MCP3008(spi, cs)

# Create analog input channels
ch0 = AnalogIn(mcp, MCP.P0)

print('Raw ADC Value: ', ch0.value)
print('ADC Voltage: ' + str(ch0.voltage) + 'V')


# pip3 install adafruit-circuitpython-mcp3xxx
# https://github.com/adafruit/Adafruit_CircuitPython_MCP3xxx
# https://circuitpython.readthedocs.io/projects/mcp3xxx/en/latest/api.html
