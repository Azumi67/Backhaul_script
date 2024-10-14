#!/bin/bash
##extemely managed server

sudo apt update

package_name=$(apt search python3-netifaces | grep -o '^python3-netifaces\S*')

if [[ -n "$package_name" ]]; then
    sudo apt install "$package_name"
else
    echo "Package python3-netifaces not found in the repositories."
fi

package_name=$(apt search python3-colorama | grep -o '^python3-colorama\S*')

if [[ -n "$package_name" ]]; then
    sudo apt install "$package_name"
else
    echo "Package python3-colorama not found in the repositories."
fi

bash -c "$(curl -fsSL https://raw.githubusercontent.com/Azumi67/Backhaul_script/refs/heads/main/backhaul.sh)"
