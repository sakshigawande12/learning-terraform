# learning-terraform
Terraform is an IaC toolkit that helps create your infrastructure on demand on several cloud environments(called providers). Please, follow along the steps in this readme to set up your infrastructure on aws.

Prerequisites:
 *  AWS account
 *  AWS cli
 *  Terraform cli

 Once You have the above requirements , you need to follow the below steps:

 ## 1. Cloning repository

 git clone https://Viswam_pathipati@bitbucket.org/rightdata-knoldus/devops.git

## 2. Open the '.aws/credentials' file and configure the following values

[sakshi-terraform]

aws_access_key_id = fdhsgfhkghdk

aws_secret_access_key = gAHag1iZcHy/4i+5wFhd18/UyaXMeHD8SedhhfKl

[default]

aws_access_key_id = AKIAWUL6ZTMAWDXEPC4D

aws_secret_access_key = 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

## 3. Terraform Init
When you create a new configuration — or check out an existing configuration from version control — you need to initialize the directory with terraform init.
$ terraform init

## 4. Terraform Plan
It is a convenient way to check whether the execution plan for a set of changes matches your expectations without making any changes to real resources or to the state.
$ terraform plan

## 5. Terraform Apply
By executing this cmd we actual create our infra.
$ terraform apply

## 6. Clean up
$ terraform destroy
