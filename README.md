# Etape 1 : Prérequis
Remote Computer :
   --> Windows PowerShell 3.0
   --> .NET Framework 9.4.7

# Etape 2 : Installation des plugins Ansible dont nous avons besoin
ansible-galaxy collection install community.windows 
ansible-galaxy collection install ansible.windows

# Etape 3: Installation Ansible
python3 -m pip -V
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user
python3 -m pip install --user ansible


