# test-ansible.ps1

## Setup
## Assume running on WSL or Cloud Shell
sudo apt-get update
sudo apt-get install python-pip git libffi-dev libssl-dev -y
sudo apt install python3-pip
pip install ansible pywinrm
ansible-galaxy collection install azure.azcollection
pip3 install -r ~/.ansible/collections/ansible_collections/azure/azcollection/requirements-azure.txt

az ad sp create-for-rbac myAnsibleSPN
cd infra/ansible

ansible-playbook webApp.yml


