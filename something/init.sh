rm -rf ./sample_data
rm -rf ./system
rm -rf ./ansible_quickstart
wget https://lukdev.org/something/requirements.txt -P ./system
touch ./system/pip_install.txt
pip install -r ./system/requirements.txt > ./system/pip_install.txt
wget https://lukdev.org/something/inventory.ini -P ./ansible_quickstart
ansible all -m ping -i ./ansible_quickstart/inventory.ini
