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
