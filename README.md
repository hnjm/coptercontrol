coptercontrol (BETA)
============

A drone with Android brain.<br />
Consist in a little external USB module plugged into a Android. This module also have PWM outputs (0v-3v) that allow connect any self-powered engines. Velocity of engines are controlled by the PWM.<br />
Android device, the USB module and the desired engines designates the drone, at same time other Android application in the client allowing the control of the first through the AppWarp API for communication.<br />
<br />

Materials: <br />
- Device with Android <br />
- 2 PIC 18F2550 SMD (Master SPI+USB+2PWM, SLAVE SPI+2PWM) <br />
<br />

Includes: <br />
- Software: <br />
- Android brain project using SCEJ API for 3D visualization, USB API, etc... <br />
<br />
- Firmware (pic 18F2550. XC8 v1.36): <br />
- Proteus & MPLABX project <br />
<br />

<img src="FIRMWARE/EXTRAS/capture-ISIS.jpg" /> <br />
<img src="FIRMWARE/EXTRAS/capture-ARES.jpg" /> <br />
<img src="FIRMWARE/EXTRAS/capture-3D.jpg" /> <br />
[![ScreenShot](https://raw.github.com/stormcolor/coptercontrol/master/capture.jpg)](https://www.youtube.com/watch?v=sSCysgmM9ws) <br />

Changelog: <br />
- 1. Connection and communication between Android app and Master PIC <br />
- 2. Activate 2 PWM in Master according to Android gyroscope X (Front/Back) sensor data <br />
- 3. Connection and communication between Master and Slave throught SPI <br />
- 4. Activate 2 PWM in Slave according to Android gyroscope Z (Left/Right) sensor data <br />
- 5. Proteus schematic <br />
- 6. PCB & materials <br />
<br />
 
Todo´s: <br />
- 7. Testing with real engines (Stabilization pre-proccess. Find minor elevation forces (50%))<br />
- 8. Fix stabilization accuracy (50%) using accelerometer <br />
- 9. Android client application for the control of the Android server (the dron brain) using AppWarp <br />
- Handle 3 or more detected outputs <br />