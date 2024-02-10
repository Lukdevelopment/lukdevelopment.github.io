rm -rf ./sample_data
rm -rf ./system
rm -rf ./ansible_quickstart
mkdir ./system
touch ./system/wget.txt
touch ./system/pip_install.txt
wget https://lukdev.org/something/requirements.txt -P ./system -a ./system/wget.txt
wget https://lukdev.org/something/inventory.ini -P ./ansible -a ./system/wget.txt
wget https://lukdev.org/something/playbook.yaml -P ./ansible -a ./system/wget.txt
pip install -r ./system/requirements.txt > ./system/pip_install.txt
ansible-playbook -i ./ansible/inventory.ini ./ansible/playbook.yaml
