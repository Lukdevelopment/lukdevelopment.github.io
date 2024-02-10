rm -rf ./sample_data
rm -rf ./system
mkdir ./system
touch ./system/wget.txt
touch ./system/pip_install.txt
wget https://lukdev.org/something/requirements.txt -P ./system -a ./system/wget.txt
wget https://lukdev.org/something/inventory.ini -a ./system/wget.txt
wget https://lukdev.org/something/playbook.yaml -a ./system/wget.txt
pip install -r ./system/requirements.txt > ./system/pip_install.txt
ansible-playbook -i inventory.ini playbook.yaml
