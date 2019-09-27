# ESP32_AzureIoT
This project incoporates the ESP32 microcontroller and its Bluetooth and Wi-Fi abilities to create
an IoT device capabable of sending telemetry to an Azure IoT Hub.

# Protocols Used
- Bluetooth Low Energy from Bluetooth 4.1
- 802.11b/g/n with WPA2 security access
- MQTT for IoT client access

# IDE
This project is compatible and can only run within the Msys32 Toolchain.

# Device Configuration

Run `make menuconfig` -> `Example configuration` to configure IoT MQTT client example

Fetch IoT device connection string
```
az iot hub device-identity show-connection-string -n [IoTHub Name] -d [Device ID]
```

## Program Compiling and Flashing Procedure

Run the following command to compile and flash to the selected device

```
make -j4 flash
```
Make sure your Azure IoT hub is online and running to allow a connection
to be formed towards the ESP32 device
