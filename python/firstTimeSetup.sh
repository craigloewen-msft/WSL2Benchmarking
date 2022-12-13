#!/bin/bash

echo "Setting up git tests"
cd git
rm -rf gitRepo
git clone https://github.com/microsoft/vscode.git gitRepo
cd ..

echo "Setting up Node tests"
cd node
rm -rf gitRepo
git clone https://github.com/craigloewen-msft/TicDappToe.git gitRepo
cd gitRepo
npm install aws aws4 axios bootstrap chalk commander cropperjs discord express live-server lodash metro4 missionlog moment ng-mocks react react-dom request shunter tslib viewerjs vue-js-modal vue-notification yo zui
cd ..
