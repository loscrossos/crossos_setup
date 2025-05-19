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
- Learn-Once-Use-Forever: What you learn should ideally apply to any OS. 
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
- Information on how to setup your system so that you can move with ease across MacOS, Windows and Linux.
- Installers for automatic software setup of OS independent configurations for diverse areas 
- Information on how to get OS independent workflows using the best software available
- step-by-step guides to get to your goal





# Preparation

The CrossOS-Setup consists of a base setup and scripts for different goals. 

## Installation overview 
Just clone this repository and install whatever modules you need from it. Use the pre-configured setup to OSI*fy* your computer.


More precisely, this is what we are going to do:

- **System Requirements**: check the pre-requisites,  supported systems and hardware, so you know if this works for you
- **Enable Crossos**: lets get the installer files ready in your PC.
    - **Update your system**: get the latest updates for your system: else the installation may fail
    - **Enable the package manager**: enables a sofware package manager
    - **Get Git**: ensure Git is installed (or perform a one liner easy install)
    - **Download the repository** downlad the installer files. just follow instructions.
- **Setup your system** install the script you need! currently Available:
    - **Python AI Development EnvironmentSetup** a full AI development setup
        - System checker: see what your system is missing to do AI development
        - Setup Installer: Install and setup all needed packages fully automatically
    






### System Requirements

Currently Focus on:

- MacOS Sequoia, Windows11, Kubuntu Linux (Debian based systems)
- NVidia CUDA capable cards and Apple Silicone (ARM).

**Nomenclature**

If instructions are for a specific OS, they will be marked as such (Mac/Win/Lin). If instructions apply to all systems the same they will be marked as **CrossOS** or **OSI** (OS Independent). 

**OS Version**

Your OS should be supported by the manufacturer! 
If you open support requests for Windows95 you likely wont get answers.


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



**Installed Software**: You can safely start from a fully empty system installation or a running system. You can apply the scripts even if you have some of the tools installed, in that case the installed tool will be either updated or skipped.


## Lets start

**IMPORTANT:** Before making changes to an existing system, make sure to create a backup of your important files!

Pre-requirement: To enable your systems package manager and get the installer to your system follow this:

[Enable Crossos](https://github.com/loscrossos/crossos_setup/blob/main/docs/01_enable_crossos_setup.md)



To setup your system for  pythonAI development:

[Development Environment setup](https://github.com/loscrossos/crossos_setup/blob/main/docs/06_development_env_setup.md)







# ROADMAP


- [x] Python AI-Development-Setup (MacWinLin)
- [ ] DualBoot-Setup (WinLin)
- [ ] day-to-day productivity Setup (MacWinLin)
- [ ] specialized setups
