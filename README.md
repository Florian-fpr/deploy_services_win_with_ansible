# Etape 1 : Prérequis
Remote Computer :
   
   --> Windows PowerShell 3.0

   --> .NET Framework 9.4.7


# Etape 2 : Installation des plugins Ansible dont nous avons besoin
ansible-galaxy collection install community.windows 

ansible-galaxy collection install ansible.windows


# Etape 3: Installation des paquets python
sudo python3 -m pip -V

sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

sudo python3 get-pip.py --user

sudo python3 -m pip install --user ansible

sudo apt install python3-winrm
