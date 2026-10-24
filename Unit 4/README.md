# Unit 4 — AWS, Terraform & Ansible Infrastructure Automation
**Prepared for:** Vaidehi More

Starter configuration for AWS CLI v2, Terraform infrastructure as code, and Ansible server setup.

## Safety
Use an authorized AWS account. Never commit credentials, private keys, Terraform state, or local `terraform.tfvars`. AWS resources may incur charges. Review `terraform plan` before applying and use `terraform destroy` when finished. SSH should be restricted to your current public IP with `/32`, not `0.0.0.0/0`.

## Install tools (Ubuntu / WSL Ubuntu)
```bash
chmod +x scripts/*.sh
./scripts/install-tools-ubuntu.sh
./scripts/verify-tools.sh
```

## AWS credentials
Configure locally using your approved method:
```bash
aws configure
aws sts get-caller-identity
```

## Terraform
```bash
cd terraform
cp terraform.tfvars.example terraform.tfvars
```
Edit the new `terraform.tfvars`: set your current public IP `/32` and an existing EC2 key-pair name. Then:
```bash
terraform init
terraform fmt -recursive
terraform validate
terraform plan
```
Only apply after reviewing the plan and costs:
```bash
terraform apply
```
Clean up lab resources when done:
```bash
terraform destroy
```

## Ansible
After EC2 is created, copy its real public IP into `ansible/inventory.ini` and set the correct private key path:
```bash
ansible -i inventory.ini all -m ping
ansible-playbook -i inventory.ini site.yml
```
The playbook installs Nginx and Docker; it does not deploy the Unit 3 app automatically.
