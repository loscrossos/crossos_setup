
REM show file extensions
REM  only current user
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d 0 /f




rem setup code and codium with plugins



rem install extensions
rem --list-extensions
rem --uninstall-extension
rem --disable-extensions
rem python highlighting
code --install-extension ms-python.python
rem code intelligence an autocomlete
code --install-extension ms-python.vscode-pylance
rem display mermaid text definitions as diagrams
code  --install-extension bierner.markdown-mermaid
rem autoindent
code --install-extension KevinRose.vsc-python-indent
rem code intelligence for toml: colors, validation
code --install-extension tamasfe.even-better-toml
rem autocreate documentation strings if you start to type a comment directly under a function
code --install-extension njpwerner.autodocstring
rem graphically see git and perform actions on it
code --install-extension mhutchie.git-graph
rem manage docker containers
code --install-extension ms-azuretools.vscode-docker
rem linter: formats code to standards and shows erros in code
rem code --install-extension charliermarsh.ruff
rem show the latest version of a library when browsing dependencie
code --install-extension pflannery.vscode-versionlens


REM extensions are per user! therefore no admin script will work


rem install extensions
rem --list-extensions
rem --uninstall-extension
rem --disable-extensions
rem #display mermaid text definitions as diagrams
codium  --install-extension bierner.markdown-mermaid
rem linter: formats code to standards and shows erros in code
rem codium --install-extension charliermarsh.ruff
rem autoindent
codium --install-extension KevinRose.vsc-python-indent
rem graphically see git and perform actions on it
codium --install-extension mhutchie.git-graph
rem mmanage docker containers
codium --install-extension ms-azuretools.vscode-docker
rem python highlighting
codium --install-extension ms-python.python
rem autocreate documentation strings if you start to type a comment directly under a function
codium --install-extension njpwerner.autodocstring
rem code intelligence for toml: colors, validation
codium --install-extension tamasfe.even-better-toml

rem code intelligence an autocomlete. try to install if the licence ever allows it
codium --install-extension ms-python.vscode-pylance
rem replacement for pylance on codium as pylances EULA does not allow it on codium
codium --install-extension ms-pyright.pyright
rem show the latest version of a library when browsing dependencies
codium --install-extension pflannery.vscode-versionlens



