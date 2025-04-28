
#setup code and codium with plugins


# install extensions
# --list-extensions
# --uninstall-extension
# --disable-extensions
# python highlighting
code --install-extension ms-python.python
# code intelligence an autocomlete
code --install-extension ms-python.vscode-pylance
# display mermaid text definitions as diagrams
code  --install-extension bierner.markdown-mermaid
# autoindent
code --install-extension KevinRose.vsc-python-indent
# code intelligence for toml: colors, validation
code --install-extension tamasfe.even-better-toml
# autocreate documentation strings if you start to type a comment directly under a function
code --install-extension njpwerner.autodocstring
# graphically see git and perform actions on it
code --install-extension mhutchie.git-graph
# manage docker containers
code --install-extension ms-azuretools.vscode-docker
# linter: formats code to standards and shows erros in code
#code --install-extension charliermarsh.ruff
# show the latest version of a library when browsing dependencie
code --install-extension pflannery.vscode-versionlens





# install extensions
#--list-extensions
#--uninstall-extension
#--disable-extensions
#display mermaid text definitions as diagrams
codium  --install-extension bierner.markdown-mermaid
# linter: formats code to standards and shows erros in code
#codium --install-extension charliermarsh.ruff
# autoindent
codium --install-extension KevinRose.vsc-python-indent
#graphically see git and perform actions on it
codium --install-extension mhutchie.git-graph
#manage docker containers
codium --install-extension ms-azuretools.vscode-docker
# python highlighting
codium --install-extension ms-python.python
# autocreate documentation strings if you start to type a comment directly under a function
codium --install-extension njpwerner.autodocstring
# code intelligence for toml: colors, validation
codium --install-extension tamasfe.even-better-toml

# code intelligence an autocomlete. try to install if the licence ever allows it
codium --install-extension ms-python.vscode-pylance
#replacement for pylance on codium as pylances EULA does not allow it on codium
codium --install-extension ms-pyright.pyright
# show the latest version of a library when browsing dependencies
codium --install-extension pflannery.vscode-versionlens
