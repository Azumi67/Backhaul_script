#!/bin/bash
## Extremely Managed Server Script
sudo apt update
sudo apt install -y python3 python3-pip curl

install_package_if_available() {
    package_name=$(apt search "$1" 2>/dev/null | grep -o "^$1\S*")
    if [[ -n "$package_name" ]]; then
        sudo apt install -y "$package_name"
    else
        echo "Package $1 not found in the repositories."
    fi
}

install_package_if_available "python3-netifaces"
install_package_if_available "python3-colorama"
install_package_if_available "python3-requests"
sudo apt install -y python3-venv
python3 -m venv /tmp/my_env
source /tmp/my_env/bin/activate

pip install --upgrade pip
pip install netifaces colorama requests
pip list

bash -c "$(curl -fsSL https://raw.githubusercontent.com/Azumi67/Backhaul_script/refs/heads/main/backhaul.sh)"
deactivate
