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
code --install-extension christian-kohler.npm-intellisense
code --install-extension dbaeumer.vscode-eslint
code --install-extension donjayamanne.githistory
code --install-extension eriklynd.json-tools
code --install-extension esbenp.prettier-vscode
code --install-extension GitHub.copilot
code --install-extension GitHub.vscode-pull-request-github
code --install-extension golang.go
code --install-extension mariomatheu.syntax-project-pbxproj
code --install-extension mark-tucker.aws-cli-configure
code --install-extension mikestead.dotenv
code --install-extension mohsen1.prettify-json
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-toolsai.jupyter
code --install-extension ms-vscode-remote.remote-containers
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension mziyabo.vscode-codedeploy
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension tberman.json-schema-validator
code --install-extension ThreadHeap.serverless-ide-vscode
code --install-extension TimVaneker.serverless-snippets
code --install-extension zhuangtongfa.material-theme
