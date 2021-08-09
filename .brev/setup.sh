#!/bin/bash

################################################################################
##### Specify software and dependencies that are required for this project #####
################################################################################

##### Update and upgrade packages #####
sudo apt-get update
sudo apt-get upgrade -y

##### Yarn #####
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt install -y yarn

##### Node v12.x + npm #####
curl -fsSL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

##### Intall golang 14.x #####
wget https://golang.org/dl/go1.14.14.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && tar -C /usr/local -xzf go1.14.14.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version

##### Install vs-code extensions #####
code-server --install-extension christian-kohler.npm-intellisense
code-server --install-extension dbaeumer.vscode-eslint
code-server --install-extension donjayamanne.githistory
code-server --install-extension eriklynd.json-tools
code-server --install-extension esbenp.prettier-vscode
code-server --install-extension GitHub.copilot
code-server --install-extension GitHub.vscode-pull-request-github
code-server --install-extension golang.go
code-server --install-extension mariomatheu.syntax-project-pbxproj
code-server --install-extension mark-tucker.aws-cli-configure
code-server --install-extension mikestead.dotenv
code-server --install-extension mohsen1.prettify-json
code-server --install-extension ms-azuretools.vscode-docker
code-server --install-extension ms-toolsai.jupyter
code-server --install-extension ms-vscode-remote.remote-containers
code-server --install-extension msjsdiag.debugger-for-chrome
code-server --install-extension mziyabo.vscode-codedeploy
code-server --install-extension streetsidesoftware.code-spell-checker
code-server --install-extension tberman.json-schema-validator
code-server --install-extension ThreadHeap.serverless-ide-vscode
code-server --install-extension TimVaneker.serverless-snippets
code-server --install-extension zhuangtongfa.material-theme
