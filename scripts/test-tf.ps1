# Test-tf.ps1

cd infra/tf

## Initialize
terraform init

## Plan
terraform plan -var-file params.tfvars -out mySite.tfplan
terraform show mySite.tfplan

## apply
terraform apply mySite.tfplan

## clean up
terraform destroy 