#!/bin/sh
cd src/var
sudo rm -R cache/ view_preprocessed/
cd ../../
bin/magento s:up
bin/magento setup:static-content:deploy -f
cd src
sudo chmod -R 777 generated/ pub/ var/
cd ..
bin/magento c:f