# QGroundControl

> Intuitive and Powerful Ground Control Station for PX4 and ArduPilot UAVs. QGroundControl provides full flight control and mission planning for any MAVLink enabled drone. It provides configuration for ArduPilot or PX4 Pro powered vehicles. Its primary goal is ease of use for first time and professional users. All the code is open-source source, so you can contribute and evolve it as you want.

- [QGroundControl Homepage](http://qgroundcontrol.com/)
- [QGroundControl User Guide](https://docs.qgroundcontrol.com/en/)
- [QGroundControl Developer Guide](https://dev.qgroundcontrol.com/en/)
- [QGroundControl Github Source Code](https://github.com/mavlink/qgroundcontrol)

Architecture

- Platforms
  - QGroundControl runs on Windows, OS X, Linux, iOS and Android
- Autopilots
  - Supports multiple autopilots: PX4 Pro, ArduPilot or any vehicle that communicates using the MAVLink protocol
- Vehicles
  - Works with all vehicle types supported by PX4 Pro and ArduPilot (multi-rotor, fixed-wing, VTOL, etc.)

# Binary Download, Execution

```sh
user@workstation:~/Drones$ wget https://s3-us-west-2.amazonaws.com/qgroundcontrol/latest/QGroundControl.AppImage
user@workstation:~/Drones$ chmod +x QGroundControl.AppImage
user@workstation:~/Drones$ ./QGroundControl.AppImage
```

# Firmware

> _QGroundControl desktop versions can install PX4 Pro or ArduPilot firmware onto Pixhawk-family flight-controller boards. By default QGC will install the current stable version of the selected autopilot, but you can also choose to install beta builds, daily builds, or custom firmware files. QGroundControl can also install the firmware for SiK Radios and PX4 Flow devices._ [QGroundControl User Guide Loading Firmware](https://donlakeflyer.gitbooks.io/qgroundcontrol-user-guide/en/SetupView/Firmware.html)
