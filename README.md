# IaaCTerraform
Add resource group usng tf code
enable az login
clone repo

add gitignore file so terraform wont get added while committing
vim .gitignore  -> .terraform/

create main.tf file to add res group, create vms in azure
terraform init
terraform validate
terraform apply

to create a new key in vm, do ssh-keygen and add that key inside the code 
C:\Users\ashna\.ssh: path to store keys
it might be either stored id_rsa.pub or keys ur wish
ssh-keygen -t rsa -b 2048 -f ~/.ssh/id_rsa

if u ever get error when u do git push:
do the following:
1. pip install git-filter-branch or git-filter-repo
2. git filter-repo --path terraform.tfstate --invert-paths
3. https://github.com/ashnageorge98/IaaCTerraform/security/secret-scanning/unblock-secret/2kJ4BE65Ey5DmhdCBkpLu4M0kXX --and allow saying its for test
4. add terraform.tfstate to gitignore file (Ensure that sensitive files, such as terraform.tfstate, are included in your .gitignore file to prevent them from being accidentally committed:)
5. git push origin main --force

connect github PAT (developer settings) to jenkins credentials secret text, secrer field (past github pat)
 or...
generate ssh key in gitbash to github (settings ssh and gpg keys new ssh key) and add to jenkins creds- ssh username with private key username, private key field paste ssh key (rsa format)
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

cat ~/.ssh/id_rsa.pub

convert ssh-rsa key to PEM key to connect to azure vm via gitbash:
ssh-keygen -e -m pem -f /c/Users/ashna/.ssh/keys.pub > /c/Users/ashna/Downloads/keyss.pem(keyss.pem is the newfilename to save ur private key)
