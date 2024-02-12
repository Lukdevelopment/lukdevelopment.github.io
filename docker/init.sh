wget https://lukdev.org/something/requirements.txt
wget https://lukdev.org/something/inventory.ini
wget https://lukdev.org/something/playbook.yaml
pip install -r ./requirements.txt
ansible-playbook -i inventory.ini playbook.yaml
rm -rf requirements.txt
rm -rf playbook.yaml
rm -rf inventory.ini
echo ----- Deleting -----
rm -rf init.sh
