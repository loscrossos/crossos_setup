# Enable Crossos Setup

## The Crossos_setup repository

This repository is a collection of scripts that allow you to setup your System (Mac, Windows, Linux) with ease and in an automated way. Just download the code and use the needed installers. 

This section contains instructions to get the base code and pre-requisites into your system, so that you can use the dedicated installers as needed.


In this sections setup you will:
- Ensure your systems package manager is working
- Install git
- Ensure your system is setup so that you dont need admin rights for every day tasks.
- get the Crossos_setup copied to your system

The basic tasks are: 
- Update your OS
- Install Git
- clone this repository to your PC



## Crossos_setup installation


### Update your system

**IMPORTANT**: Before installing any script you should fully update your system. Background (critical) updates will block the installation or parts of it leaving you with a half installed setup. This is specially the case on windows and linux. On mac and windows do this through the system settings menus. On Linux-Ubuntu-based systems with the console command: 

```sudo apt -y update && sudo apt -y upgrade```

### TDLR summarized Install

IF you know what you are doing, here are all the commands you need. Else refer to the step-by-step instructions in the next section.

***Mac***: From an admin account:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/loscrossos/crossos_setup/HEAD/mac/00m_postos_install.sh)"
cd /Users/Shared
git clone https://github.com/loscrossos/crossos_setup
cd crossos_setup
cd mac
```


**Windows**: From an admin console:
```
winget install git.git --silent --accept-source-agreements --scope machine
mkdir c:\shared
cd c:\shared 
git clone https://github.com/loscrossos/crossos_setup
cd crossos_setup
cd win
```


**Linux**: From an admin acccount:
```
sudo mkdir /shared && sudo chmod a+rw /shared
cd /shared
git clone https://github.com/loscrossos/crossos_setup
cd crossos_setup
cd lin
```



### Step-by-Step Installation

Follow the steps below. 

Alternatively watch this video for the same procedure: https://youtu.be/wdZRp-s3GRY


---
**1.- Get git**

Git is a "version control system". It is used to manage software code. We are going to use it to copy the crossos_setup code to your computer.

**MacOS**

You need brew and git installed. Please read on even if you already have them!
This Setup installs brew, git and the Macos-compiler CLI tools. It also enables your system for admin/user mode, so you can use brew software from a non-admin account. So even if you have brew you should run it. 

The command runs a fully silent brew installer (that will enable git). 
Call this code in the terminal (press Cmd+Space and type terminal). It automatically will ask you for admin password, so do not use sudo on it. copy paste this into the terminal:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/loscrossos/crossos_setup/HEAD/mac/00m_postos_install.sh)"
```

It should be safe to run this even if you already have brew. The script will then just update it to the latest version or do nothing.

**Windows**


You can directly install git with this command from a cmd-terminal with admin rights. To start an admin-terminal press [Windows-key] and type "cmd" then select "run as Administrator" from the right side of the menu. Then enter this command to install git for all users: 

```
winget install git.git --silent --accept-source-agreements --scope machine
```

**Linux** 

Linux should come with git installed. if not just run this on a terminal on Ubuntu based systems using your admin account:

```
sudo apt install git
```



**2.- Ensure there is a directory accessible by all**

the storage advice for the repository would be:

OS  | where         |  how to enable it (as admin)
--- | ---           | ---   
mac | /Users/Shared | enabled by default 
win | c:\shared     | `mkdir c:\shared` 
lin | /shared       | `sudo mkdir /shared` <br>`sudo chmod a+rw /shared`


**3.- enter that directory**



OS  | command
--- |  ---   
mac | `cd /Users/Shared` 
win | `cd c:\shared` 
lin | `cd /shared`


**4.- Get the latest version of the crossos_setup repository**

```
git clone https://github.com/loscrossos/crossos_setup
cd crossos_setup
```

**5.- Enter the directory for your OS**

Enter the directory for your OS:

OS  | command
--- |  ---   
mac | `cd mac` 
win | `cd win` 
lin | `cd lin`



