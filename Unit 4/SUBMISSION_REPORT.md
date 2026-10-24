# Unit 4 Practical Report — AWS, Terraform and Ansible
**Student:** Vaidehi More

## Aim
To demonstrate AWS CLI verification, Infrastructure as Code using Terraform, and server configuration using Ansible.

## Tools
AWS CLI v2, Terraform, Ansible, an AWS account with appropriate permissions, and an existing EC2 key pair in the selected region.

## Procedure
1. Install the tools using `scripts/install-tools-ubuntu.sh`.
2. Configure credentials locally with an approved method and verify using `aws sts get-caller-identity`.
3. Copy `terraform/terraform.tfvars.example` to `terraform/terraform.tfvars`.
4. Set `ssh_allowed_cidr` to the current public IP with `/32`, and set `key_pair_name` to an existing EC2 key pair in `ap-south-1`.
5. Run `terraform init`, `terraform fmt -recursive`, `terraform validate`, and `terraform plan`.
6. Review the plan and cost implications before running `terraform apply`.
7. Use the actual instance public IP and private-key path in `ansible/inventory.ini`, then run the Ansible ping and playbook.
8. Capture real terminal and AWS Console screenshots after successful execution.
9. Run `terraform destroy` after the exercise if the resources are no longer needed.

## Safety and limitations
- Never upload AWS credentials, private keys, local `terraform.tfvars`, or Terraform state.
- The Terraform configuration creates billable AWS resources if applied.
- The Ansible playbook installs Nginx and Docker on the target Ubuntu instance.
- No live AWS provisioning or Ansible run is claimed by this project package.

## Conclusion
The files provide a starting implementation for AWS infrastructure automation. The practical is complete only after the configuration is validated and the resources/playbook are actually run in an authorized AWS account.
