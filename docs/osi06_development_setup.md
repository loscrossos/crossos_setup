# CROSSOS AI-Python development setup

With this setup you will be all set to start GPU accelerated AI-development with python cross-OS

All apps and tools are industry standard tools and integrate well with each other. 

The installation script performs all needed setup. After the scritp is finished you only need to restart your computer and you are ready to go and start coding!
Still, you should understand what is happening, so please, read on.

## What is needed

For Software development you will need:


**C++-Compiler**: for pure python code you do not need a C++-compiler. However most projects need a C++ compiler as libraries contain code that needs to be compiled in the background. This does not need to worry you for as long as you have it properly installed, everything will happen in the background.

**GPU Computig Libraries**: For CUDA Development you need the nvidia driver and CUDA toolkit.

**Python**: python itself needs to be installed and ready to use. We install different versions and manage them efficiently with python virtual environments.

**Development tools**: several tools are needed for day-to-day tasks. the Scripts install the most used tools and some that will ease your life like: wget, curl, git, etc.

**A code Editor**: a simple text editor will be enough. but a dedicated code editor makes writing/editing or simply reading code easier. Code editors with comprehensive integrations and tools are called Integrated Development Environments (IDE). The IDE script can automatically setup the most common and needed addons.



## Tools installed by the scripts

To operate OS independently we ensure that all platforms contain the same set of tools (or equivalent tools) that allow you to move across them. Here is a list of the tools installed.

**x**= The app is installed by the script

**PI**= Pre-Installed = the OS has this tools out-of-the-box

**n.a.** = not available = this tools is not available or used on this OS

### OSI06 Development Core Setup

Category	| Software	        | MacOS	| Windows	| Linux	| Price	        | Commentary
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
Repository	|Git	            |(x)    |x	        |PI     |free,OpenSource| git on macos was installed by XCode tools triggered by brew
Repository	|Git LFS            |x	    |x	        |x	    |free,OpenSource| git large file storage (LFS) is needed to download large files like AI models from repositories
Repository	|Github CLI	        |x	    |x	        |x	    |free,propietary| needed to interact with github from the command line, one of the most used software repositories
AudioLibrary|FFmpeg	            |x      |x	        |PI	    |free,OpenSource| used by several audio/video libraries
Phonemizer  |eSpeak-NG          |x	    |x	        |x	    |free,OpenSource| used by several AI text to speech models.

### (coming up) Development IDE: Code Editors/Integraded Development Environment (IDE)

Category	| Software	        | Macos	| Windows	| Linux	| Price	        | Commentary
 ---        | ---               | ---   | ---       | ---   | ---           | ---
IDE         |Kate	            |x      |x	        |PI/x	|free,openSource|does not work on Macos11. preinstalled in KDE.
IDE  	    |VS Code	        |x	    |x	        |x	    |free,OpenSource| IDE from microsoft. widely used. has some propietary code.
IDE         |VS Codium	        |x	    |x	        |x	    |free,OpenSource| open source, telemetry free version of VS Code. Some plugins do not work with it.
code search |ag silversearcher  |x	    |x	        |x	    |free,OpenSource|ultra fast terminal code search tool


### Roadmap

- [x] add base development tools
- [ ] add IDE tools 
- [ ] add virtualization tools