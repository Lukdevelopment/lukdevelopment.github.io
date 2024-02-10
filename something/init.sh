rm -rf ./system
rm -rf ./inventory.ini
rm -rf ./playbook.ini
mkdir ./system
touch ./system/wget.txt
touch ./system/pip_install.txt
wget https://lukdev.org/something/requirements.txt -P ./system -a ./system/wget.txt
wget https://lukdev.org/something/inventory.ini -a ./system/wget.txt
wget https://lukdev.org/something/playbook.yaml -a ./system/wget.txt
pip install -r ./system/requirements.txt > ./system/pip_install.txt
ansible-playbook -i inventory.ini playbook.yaml
rm -rf playbook.yaml
wget https://lukdev.org/something/example_playbook.yaml -a ./system/wget.txt -o playbook.yaml
