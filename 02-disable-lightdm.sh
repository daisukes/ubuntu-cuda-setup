#!/bin/bash

echo "After this, you need to type \"Ctrl+Alt+F1\" to enable CUI to continue"
echo -n "Please hit enter key to continue! [Enter]"
read
sudo service lightdm stop
