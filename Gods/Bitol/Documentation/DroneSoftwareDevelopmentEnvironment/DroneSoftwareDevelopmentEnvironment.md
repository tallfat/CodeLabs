# Drone Software Development Environment

> This is executed at your __Workstation__

Please make sure to execute all the steps found under this page and under the following pages as part of Drone Software Development Environment:

- PX4
- JMAVSim
- Ardupilot
- SITL Simulator
- DroneKit SITL
- QGroundControl
- MAVLink
- OpenCV
- Git Source Code Management

## Common Setup

# Sudoers

In case you are not "Sudoer"

```sh
user@workstation:~$ sudo adduser <user> sudo
user@workstation:~$ sudo usermod -a -G sudo <user>
```

```sh
user@workstation:~$ sudo nano /etc/sudoers
...
user    ALL=(ALL:ALL) ALL
...
```

# Packages

```sh
user@workstation:~$ sudo apt update
user@workstation:~$ sudo apt upgrade
user@workstation:~$ sudo apt install git
user@workstation:~$ sudo apt install unzip
user@workstation:~$ sudo apt install build-essential
```

# Packages :: Pip

```sh
user@workstation:~$ sudo apt install python-pip --upgrade
user@workstation:~$ pip install --upgrade pip
user@workstation:~$ sudo pip install virtualenv virtualenvwrapper
user@workstation:~$ sudo rm -rf ~/.cache/pip
user@workstation:~$ nano ~/.bashrc
# virtualenv and virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
user@workstation:~$ source ~/.bashrc
user@workstation:~$ mkvirtualenv cv -p python3
(cv) user@workstation:~$ exit
```
