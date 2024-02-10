rm -rf ./sample_data
rm -rf ./System
rm -rf ./ansible_quickstart
wget https://lukdev.org/something/requirements.txt -P ./System
touch ./System/pip_install.txt
pip install -r ./System/requirements.txt > ./System/pip_install.txt
wget https://lukdev.org/something/inventory.ini -P ./ansible_quickstart
ansible myhosts -m ping -i ./ansible_quickstart/inventory.ini
