# CMDS ---------------------------------------------------------------------------------------

terraform init                         -------- terraform starts
terraform plan --var-file file name    -------- dry run & specify .tfvars file name
terraform apply                       --------  starts building resources and enter yes
terraform apply --auto-approve        --------  starts building resources

terraform destroy                      -------- delete resources created by terraform only
terraform destroy --auto-approve     --------

terraform show                         -------- displays current resources