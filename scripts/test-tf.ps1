# Test-tf.ps1

cd infra/tf

## Initialize
terraform init

## Plan
terraform plan -var-file params.tfvars -out azIaC.tfplan

terraform show azIaC.tfplan

## apply
terraform apply azIaC.tfplan

## clean up
terraform destroy 