# ahiru
ahiru is a simple open-source cross-platform program for running commands.<br>
This program is written in [Lazarus/Object Pascal](https://www.lazarus-ide.org/).<br>
<div align="center"><img src="screenshots/winxp-gtk2.png"> <img src="screenshots/debian-kde-qt5.png"> <img src="screenshots/freebsd-icewm-gtk2.png"> <img src="screenshots/haiku-qt5.png"></div>

## Features
On Windows, ahiru can run, for example - `explorer`, on Linux/FreeBSD - `xmessage "123" -display :0`, and on Haiku - `HaikuDepot`.<br>

### Design flexibility
If you hover your mouse over an element in the window, hold down `Ctrl` or `Shift`, and scroll up/down with the wheel, you can resize the element.<br>
<br>
Step for `Ctrl` - 1 px<br>
The step for `Shift` - 10 px

## Supported platforms
ahiru officially supports 4 operating systems - Windows, Linux, FreeBSD and Haiku.<br>
There are versions with GTK2 (Windows, Linux, FreeBSD) and Qt5 (Windows, Linux, Haiku) widget sets.<br>
For Windows, FreeBSD and Haiku, there are official builds for only two architectures - `i386` and `x86_64`.<br>
For Linux, `i386`, `x86_64`, `arm`, `aarch64`, `ppc64` processors are officially supported.
