# CrossOS Setup - your productivity toolkit.

## Overview
Do you use Windows, MacOS, or Linux-and dream of switching the OS without losing your workflow? 

What if you could configure your *current* system in a way that lets you move between Windows, Linux, and macOS without missing a beat? lets say you want to learn python AI programming? if you are going to learn anyway: dont learn "*the windows way*" or "*the linux way*": lets learn "the python way"! 

You want to learn graphic design, office tasks, Video, Audio editing.. its easier than you think!

OS-migration? Dual-boot? multi-boot? gotcha covered! lets get *OS* *I*ndependent! lets go OSI!

If you move to another OS, you will be already familiar with it. If you dual-boot your workflows stay with you!

That's exactly what this project aims to do:
 - by focusing on cross-platform, free, and open-source tools wherever possible, you get a consistent, streamlined experience no matter which OS you're on... you might even forget what OS you are currently on!
 - you dont have to use sub-par software. Its already possible to use the best industry standards with comfort! You are getting the best of the best!


And the best part: no complicated intallations! The installation and setup is silent and automated. Start the script, grab a coffee, and come back to a machine that's ready to work as you are already used to - safely and efficiently.

## Vision

This project focuses on:


- Cross-Platform Eco-Systems: Install essential tools that work seamlessly across all major operating systems. 

- Open Source first: free open source apps where possible. Free-Proprietary apps only when essential. Only free apps!

- Bloat-free defaults - no unused packages and clutter. Lets stay efficient!

- Optional AI/dev setup - Ready-to-go AI enabled Python setup (CUDA-enabled for Windows/Linux)

- Safe & transparent - No admin rights until you approve. No system-hacks: only safe settings using official system mechanisms. Optmizations on the edge of this remain optional.

- Free Information. All information and code is free! we should not pay for wisdom.


Perfect for:

- Developers who work across OSes

- Designers, writers, or researchers who switch devices

- Anyone who wants a clean, efficient setup

## Mission

what you will find here:
- Installers for automatic software setup of OS independent configurations for diverse areas 
- Information on how to get OS independent workflows using the best software available
- step-by-step guides to get to your goal





# Preparation

## Installation overview 
Just clone this repository and install whatever modules you need from it. Use the pre-configured setup to OSI*fy* your computer.


More precisely, this is what we are going to do:

- read the nomenclature (so you know how to read the instructions)
- check the pre-requisites: supported systems and hardware: so you know if this works for you
- get the latest updates for your system: else the installation may fail
- ensure git is installed (or perform a one liner easy install)
- downlad the installer repository (just follow instructions)
- install the script you need!



### Nomenclature

If instructions are for a specific OS, they will be marked as such (Mac/Win/Lin). If instructions apply to all systems the same they will be marked as **OSI** (OS Independent).


### System Requirements

**OS Version**: Your OS should be supported by the manufacturer! Currently Focus on  NVidia CUDA capable cards and Apple Silicone (ARM).

**Installed Software**: You can safely start from a fully empty system installation or a running system. You can apply the scripts even if you have some of the tools installed, in that case the installed tool will be either updated or skipped.


**Systems tested**
The scripts were tested on the following OS:

OS  | System            |Arch   | Tested
--- |---                | ---   | ---
Mac |***MacOS Sequoia***| ARM   | works (focus)
Mac |MacOS Sonoma       | ---   | untested but should work
Mac |MacOS Ventura      | x64   | works
Win |***Windows11pro*** | x64   | works (focus)
Lin |***KunbuntuLTS24***| x64   | works (focus)
Lin |Mint 22.01         | x64   | works 
Lin |Ubutu LTS24        | x64   | works 





### Update your system
**IMPORTANT**: Before installing any script you should fully update your system. Background updates will block the installation or parts of it leaving you with a half installed setup.
This is specially the case on windows and linux.

on mac and windows do this through the system settings menus. On Linux-Ubuntu-based systems enter this on a console 

```sudo apt -y update && sudo apt -y upgrade```


### Install git

**MacOS**

You need brew and git installed. 

If those are not present you can directly run a fully silent brew installer (that will enable git) by calling this code in the terminal (press Cmd+Space and type terminal). It automatically will ask you for admin password, so do not use sudo on it. copy paste this into the terminal:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/loscrossos/crossos_setup/HEAD/mac/00m_install_brew.sh)"
```


**Windows**


You can directly install git with this command from a cmd-terminal with admin rights. To start an admin-terminal press [Windows-key]+x and select "Terminal (Admin)". Then enter this command to install git for all users: 

```
winget install --id Git.Git -e --silent --accept-package-agreements --accept-source-agreements --scope machine
```

**Linux** 

Linux should come with git installed. if not just run this on Ubuntu based systems:

```
sudo apt install git
```



### Download the repository (CrossOS)

now get the latest version of this repository:

```
git clone https://github.com/loscrossos/crossos_setup
cd crossos_setup
```



# Python AI Development Setup 

Fully automated installer for a ready-to-use python based-AI development setup.
Purposes:
- General purpose python software development
- Runing LLMs
- Running AI Models like: Text-to-Speech (TTS), Text-To-Video(TTV), Image-to-Video(ITV), Text-to-Audio(TTA), Voice cloning etc.

Based on on standard python, CUDA(WinLin), Metal(Mac).
Windows: Does not use WSL.

for a full overview of the components read the [Development Setup Documentation](https://github.com/loscrossos/crossos_setup/blob/main/docs/osi06_development_setup.md)


### MacOS


start the installer (yes it has a txt ending) (it will ask you for admin password):
```
cd mac
./06m_install_dev_core_setup.sh
```


### Windows

run the dev_essential installer file. The installer will automatically ask for admin rights (if not already in admin mode):

```
cd win
06w_install_dev_core_setup.bat
```



### Linux

start the installer (yes it has a txt ending) (it will ask you for admin password):

```
cd lin
./06l_install_dev_core_setup.sh
```



# ROADMAP


- [x] Python AI-Development-Setup (MacWinLin)
- [ ] DualBoot-Setup (WinLin)
- [ ] day-to-day productivity Setup (MacWinLin)
- [ ] specialized setups
