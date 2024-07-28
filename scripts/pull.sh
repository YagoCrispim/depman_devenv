#!/bin/bash

echo '----- ROOT -----'
git pull

echo ''
echo '----- DEV DEPMAN -----'
cd _dev_depman  
git pull
cd ..

