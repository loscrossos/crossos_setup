# CROSSOS AI-Python development

With this setup you will be all set to start GPU accelerated AI-development with python on Mac,Windows or Linux. All apps and tools are industry standard tools and integrate well with each other. No matter what system you are in the tools will behave the same.

The installation script performs all needed setup. After the scritp is finished you only need to restart your computer and you are ready to go and start coding!

Still, you should understand what is happening, so please, read on.

Purposes:
- General purpose python software development
- Runing LLMs
- Running AI Models like: Text-to-Speech (TTS), Text-To-Video(TTV), Image-to-Video(ITV), Text-to-Audio(TTA), Voice cloning etc.

## AI software Development with python

This setup is based on on standard python, CUDA(WinLin), Metal(Mac).
Native Windows(not WSL).

For Software development you will need:


**C++-Compiler**: for pure python code you do not need a C++-compiler. However most projects need a C++ compiler as libraries contain code that needs to be compiled in the background. This does not need to worry you for as long as you have it properly installed, everything will happen in the background.

**GPU Computig Libraries**: For CUDA Development you need the nvidia driver and CUDA toolkit.

**Python**: python itself needs to be installed and ready to use. We install different versions and manage them efficiently with python virtual environments.

**Development tools**: several tools are needed for day-to-day tasks. the Scripts install the most used tools and some that will ease your life like: wget, curl, git, etc.

**A code Editor**: a simple text editor will be enough. but a dedicated code editor makes writing/editing or simply reading code easier. Code editors with comprehensive integrations and tools are called Integrated Development Environments (IDE). The IDE script can automatically setup the most common and needed addons.



### Tools installed by the scripts

To operate OS independently we ensure that all platforms contain the same set of tools (or equivalent tools) that allow you to move across them. Here is a list of the tools installed.

**x**= The app is installed by the script

**PI**= Pre-Installed = the OS has this tools out-of-the-box

**n.a.** = not available = this tools is not available or used on this OS

### Script 06 Development Core Setup

Category	| Software	        | MacOS	| Windows	| Linux	| Licence       | Commentary
 ---        | ---               | ---   | ---       | ---   | ---           | ---
Mode	    |Enable Dev Mode	|PI 	|x	        |PI 	|free           | Needed to set symlinks (needed for python and to save space)
Mode	    |sleep settings	    |x	    |x	        |x	    |free	        | prevent PC from sleeping 8 hours if we need to run programs over night
Compiler	|MSVS C++Buildtools |n.a.   |x          |n.a.   |free,propietary| we could use gcc/mingw but MSVC seems easier to auto-setup with cuda.
Compiler    |Compiler Tools	    |x	    |n.a.	    |x	    |free,openSource| gcc/cmake. Mac:most tools installed by brew already
Driver	    |GPU Driver(Nvidia) |n.a.   |x	        |x      |free,propietary| GPU driver for games and AI
Compiler/API|Nvidia CUDA Toolkit|n.a.   |x	        |x      |free,propietary| Library for AI. Apple uses built-in Metal
Programming |python3.8          |PI/n.a.|x          |x      |free,OpenSource| python3.8 is preinstalled on older macos. not available on silicon mac
Programming |python3.9	        |x	    |x	        |x	    |free,OpenSource|
Programming |python3.10	        |x	    |x	        |x	    |free,OpenSource|
Programming |python3.11	        |x	    |x	        |x	    |free,OpenSource|
Programming |python3.12	        |x	    |x	        |x	    |free,OpenSource|
Programming |python3.13	        |x	    |x	        |x	    |free,OpenSource|	
FileTransfer|Wget	            |x      |x          |PI	    |free,OpenSource| library to download files
FileTransfer|Curl	            |PI	    |PI         |x      |free,OpenSource| library to download files
Repository	|Git	            |(x)    |x	        |PI     |free,OpenSource| git on macos was installed by XCode tools triggered by brew. Git should have long paths enabled as well as the autocrlf set to write LF endings to repositories.
Repository	|Git LFS            |x	    |x	        |x	    |free,OpenSource| git large file storage (LFS) is needed to download large files like AI models from repositories
Repository	|Github CLI	        |x	    |x	        |x	    |free,propietary| needed to interact with github from the command line, one of the most used software repositories
AudioLibrary|FFmpeg	            |x      |x	        |PI	    |free,OpenSource| used by several audio/video libraries
Phonemizer  |eSpeak-NG          |x	    |x	        |x	    |free,OpenSource| used by several AI text to speech models.

### Script 07 Development IDE: Code Editors/Integraded Development Environment (IDE)

Category	| Software	        | Macos	| Windows	| Linux	| Licence       | Commentary
 ---        | ---               | ---   | ---       | ---   | ---           | ---
IDE  	    |VS Code	        |x	    |x	        |x	    |free,OpenSource| IDE from microsoft. widely used. has some propietary code.
IDE         |VS Codium	        |x	    |x	        |x	    |free,OpenSource| open source, telemetry free version of VS Code. Some plugins do not work with it.
code search |ag silversearcher  |x	    |x	        |x	    |free,OpenSource|ultra fast terminal code search tool


### User development setup


The Crossos setup is designed in a secure way. This means all the setup is in admin mode but your day-to-day programming tasks are in normal-user mode. Thats right. You dont need Admin-rights for AI python development. You just have to setup your system right. All the projects i do are with a normal user account. 

The last script will therefore, setup your development account with user specific settings as listed below:

The IDE Plugins will be installed for VS Code and for VS Codium. 


Category	| Software	            | Macos	| Windows	| Linux	| Licence       | Commentary
 ---        | ---                   | ---   | ---       | ---   | ---           | ---
Setting     | Show file extensions  | PI    | x         | PI    |  n.a.         | this is done on a per-user basis on windowws as not to confuse other users if its a shared PC.
IDE-Plugin  | ms-Python             | x     | x         | x     | free          | Python code highlighting
IDE-Plugin  | vscode-pylance        | x     | x         | x     | free          | code intelligence an autocomlete. For VSCode only. Its licence does not allow to install on Codium
IDE-Plugin  | pyright               | x     | x         | x     | free          | Codium replancement for Pylance 
IDE-Plugin  | markdown-mermaid      | x     | x         | x     | free          | Display Markdown mermaid diagrams in md-files
IDE-Plugin  | vsc-python-indent     | x     | x         | x     | free          | Auto-indent for python code
IDE-Plugin  | even-better-toml      | x     | x         | x     | free          | Code intelligence for toml-files
IDE-Plugin  | Autodocstring         | x     | x         | x     | free          | Autocreate documentation strings if you start to type a comment directly under a python function
IDE-Plugin  | Git-Graph             | x     | x         | x     | free          | Graphically see git and perform actions on it. Good if you work in programming teams.
IDE-Plugin  | vscode-docker         | x     | x         | x     | free          | Manage docker containers
IDE-Plugin  | vscode-versionlens    | x     | x         | x     | free          | show the latest version of a library when browsing dependency files.








## Python AI Development Environment Installation 

### Pre-requisites

- The crossos_setup installer (this repository) is on your PC
- System was setup as described in [Enable Crossos](https://github.com/loscrossos/crossos_setup/blob/main/docs/01_enable_crossos_setup.md).
    - OS is updated
    - Macos: brew is installed
    - Win: Winget is working
    - Lin: apt is working
    - You are an admin user in a system console(admin console on windows) that is located on the cloned repository in the directory `crossos_setup`  and in the sub-directory of your OS

- **Do NOT use other commands** if not indicated here: specially in linux or mac do not use "sudo" if its not here. The scripts will ask you for a password if they need it.

### TDLR summarized Install
IF you know what you are doing, here are all the commands you need. Else refer to the step-by-step instructions in the next section.


***Mac***

From an admin account:
```
./06m_install_dev_core_setup.sh
./07m_install_dev_ide.sh
```
reboot your system and from the intended developer account call the last script:
```
./user_dev_install.sh
```


**Windows**

From an admin console:
```
06w_install_dev_core_setup.bat
07w_install_dev_ide.bat
```
reboot your system and from the intended developer account call the last script:
```
user_dev_install.bat
```


**Linux**

From an admin acccount:
```
./06m_install_dev_core_setup.sh
./07m_install_dev_ide.sh
```
reboot your system and from the intended developer account call the last script:
```
./user_dev_install.sh
```



### Step-by-Step Installation


**1.-Enter OS Directory** We enter the directory for our OS with the "change directory" (cd) command:


OS  | command
--- |  ---   
mac | `cd mac` 
win | `cd win` 
lin | `cd lin`

**2.- Optional:System precheck** we can precheck what is missing with the provided checker-script

OS  | command
--- |  ---   
mac | `./check06_dev_core_setup.sh` 
win | `check06_dev_core_setup.bat` 
lin | `./check06_dev_core_setup.sh`

we will see an output similar to this (exact output depends on your system):

```
Running checks...
-------------------
Check file 'Critical:MSVC      '...... ✅ Exists
Check exec 'Critical:Nvidia-smi'...... ✅ Success
Check exec 'Critical:Nvcc-CTK  '...... ❌ Failed
Check exec 'Critical:python3.8 '...... ❌ Failed
Check exec 'Critical:python3.9 '...... ❌ Failed
Check exec 'Critical:python3.10'...... ✅ Success
Check exec 'Critical:python3.11'...... ❌ Failed
Check exec 'Critical:python3.12'...... ❌ Failed
Check exec 'Critical:python3.13'...... ❌ Failed
Check exec 'Critical:wget-cli  '...... ❌ Failed
Check exec 'Critical:git       '...... ✅ Success
Check exec 'Optional:gh-cli    '...... ❌ Failed
Check exec 'Optional:ffmpeg    '...... ❌ Failed
Check exec 'Optional:espeak-ng '...... ❌ Failed
Check exec 'Adviced: VS-Code   '...... ✅ Success
Check exec 'Adviced: VS-Codium '...... ❌ Failed
Check exec 'Adviced: AGsearch  '...... ❌ Failed
```

`Critical` are important for the cases needed. You dont need all critical items always but if something is not installed its an important point if later something does not work.

Up to here nothing was changed on the system. now its time to install the missing packages.

**3.- Start the Installer**: now we trigger the installer.


OS  | command
--- |  ---   
mac | `./06m_install_dev_core_setup.sh` 
win | `06w_install_dev_core_setup.bat` 
lin | `./06l_install_dev_core_setup.sh`

This will take a while. About half an hour on a DSL connection.



**4.- Setup the IDE**: Now we install the IDEs: MS Code and Codium.


OS  | command
--- |  ---   
mac | `./07m_install_dev_ide.sh` 
win | `07w_install_dev_ide.bat` 
lin | `./07l_install_dev_ide.sh`

After the command has finished reboot your system for the changed to fully take effect.



**5.- Setup Developer Role**


Logout of your system account and login to the account that will be your developer account.
If you only use one account, of course, you can do this from the same account.
Start the console (no admin mode needed now) and go to the directory for your OS in the Crossos-setup as you did before.


OS  | command
--- |  ---   
mac | `./user_dev_install.sh` 
win | `user_dev_install.bat` 
lin | `./user_dev_install.sh`



**6.- OPTIONAL: re-run system checker**

You can rerun the checker from step 2 and the output should look better:

```
Running checks...
-------------------
Check file 'Critical:MSVC      '...... ✅ Exists
Check exec 'Critical:Nvidia-smi'...... ✅ Success
Check exec 'Critical:Nvcc-CTK  '...... ✅ Success
Check exec 'Critical:python3.8 '...... ✅ Success
Check exec 'Critical:python3.9 '...... ✅ Success
Check exec 'Critical:python3.10'...... ✅ Success
Check exec 'Critical:python3.11'...... ✅ Success
Check exec 'Critical:python3.12'...... ✅ Success
Check exec 'Critical:python3.13'...... ✅ Success
Check exec 'Critical:wget-cli  '...... ✅ Success
Check exec 'Critical:git       '...... ✅ Success
Check exec 'Optional:gh-cli    '...... ✅ Success
Check exec 'Optional:ffmpeg    '...... ✅ Success
Check exec 'Optional:espeak-ng '...... ✅ Success
Check exec 'Adviced: VS-Code   '...... ✅ Success
Check exec 'Adviced: VS-Codium '...... ✅ Success
Check exec 'Adviced: AGsearch  '...... ✅ Success
```

You are ready to go! Happy coding!



## Roadmap

- [x] add base development tools
- [x] add IDE tools 
- [ ] add virtualization tools