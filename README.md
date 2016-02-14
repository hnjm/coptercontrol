coptercontrol (BETA)
============

A dron with Android brain <br />
<br />

A drone with Android brain.<br />
Consist in a little external USB module plugged into a Android. This module also have PWM outputs (0v-3v) that allow connect any self-powered engines. Velocity of engines are controlled by the PWM.<br />
Android device, the USB module and the desired engines designates the drone, at same time other Android application in the client allowing the control of the first through the AppWarp API for communication.<br />
<br />

Materials: <br />
- Device with Android <br />
- PIC 18F2550 (USB) <br />
<br />

Includes: <br />
- Software: <br />
- Android brain project using SCEJ API for 3D visualization, USB API, etc... <br />
<br />
- Firmware (pic 18F2550. XC8 v1.36): <br />
- Proteus & MPLABX project <br />
<br />

Changelog: <br />
- Connection and communication between Android app and PIC18F2550 <br />
<br />
 
Todo´s: <br />
- PWM in PIC according to gyroscope sensor data (4 outputs) <br />
- Testing with real engines <br />
- Proteus schematic <br />
- Android client application for the control of the Android server (the dron brain) using AppWarp <br />
- Handle 3 or more detected outputs <br />