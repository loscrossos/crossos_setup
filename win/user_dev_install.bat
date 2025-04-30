@echo off
REM show file extensions
REM  only current user
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d 0 /f




rem setup code and codium with plugins


echo Code Extensions
rem install extensions
rem --list-extensions
rem --uninstall-extension
rem --disable-extensions

echo code: python highlighting
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension ms-python.python
echo code: intelligence an autocomlete
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension ms-python.vscode-pylance
echo code: display mermaid text definitions as diagrams
call "C:\Program Files\Microsoft VS Code\bin\code"  --install-extension bierner.markdown-mermaid
echo code: autoindent
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension KevinRose.vsc-python-indent
echo code: code intelligence for toml: colors, validation
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension tamasfe.even-better-toml
echo code: autocreate documentation strings if you start to type a comment directly under a function
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension njpwerner.autodocstring
echo code: graphically see git and perform actions on it
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension mhutchie.git-graph
echo code: manage docker containers
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension ms-azuretools.vscode-docker
rem linter: formats code to standards and shows erros in code
rem call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension charliermarsh.ruff
echo code: show the latest version of a library when browsing dependencie
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension pflannery.vscode-versionlens


REM extensions are per user! therefore no admin script will work

echo codium extensions
rem install extensions
rem --list-extensions
rem --uninstall-extension
rem --disable-extensions
echo codium: display mermaid text definitions as diagrams
call "C:\Program Files\VSCodium\bin\codium" --install-extension bierner.markdown-mermaid
rem linter: formats code to standards and shows erros in code
rem call "C:\Program Files\VSCodium\bin\codium" --install-extension charliermarsh.ruff
echo codium:  autoindent
call "C:\Program Files\VSCodium\bin\codium" --install-extension KevinRose.vsc-python-indent
echo codium:  graphically see git and perform actions on it
call "C:\Program Files\VSCodium\bin\codium" --install-extension mhutchie.git-graph
echo codium:  manage docker containers
call "C:\Program Files\VSCodium\bin\codium" --install-extension ms-azuretools.vscode-docker
echo codium:  python highlighting
call "C:\Program Files\VSCodium\bin\codium" --install-extension ms-python.python
echo codium:  autocreate documentation strings if you start to type a comment directly under a function
call "C:\Program Files\VSCodium\bin\codium" --install-extension njpwerner.autodocstring
echo codium:  code intelligence for toml: colors, validation
call "C:\Program Files\VSCodium\bin\codium" --install-extension tamasfe.even-better-toml

echo codium:  code intelligence an autocomlete. try to install if the licence ever allows it
call "C:\Program Files\VSCodium\bin\codium" --install-extension ms-python.vscode-pylance
echo codium:  replacement for pylance on codium as pylances EULA does not allow it on codium
call "C:\Program Files\VSCodium\bin\codium" --install-extension ms-pyright.pyright
echo codium:  show the latest version of a library when browsing dependencies
call "C:\Program Files\VSCodium\bin\codium" --install-extension pflannery.vscode-versionlens



