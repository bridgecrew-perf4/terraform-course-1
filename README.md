"# Terraform course from Cloudskills learnings" 
# CHECK OUT CLOUDSKILLS.io!!

Infrastructure as Code:

IAC is the modern way of looking at infrastructure. It is the management of infrastructure, like networks, vms, load balancers etc.
Combined with devops you can have a very tidy history of your infrastructure, not to mention the glorius benefits such as:

Repeatability
Speed
Documentation
Version Control
Validation
Reuse

Terraform is a cloud agnostic, open source tool built by hashicorp
written in Go language
Their goals are unifing the view of resources using IAC
Manage anything with an APO
Supports parallel management of resources
Seperates planning from execution

# Remember Syntax https://www.terraform.io/docs/language/syntax/configuration.html

# Reference = https://github.com/hashicorp/hcl/blob/hcl2/hclsyntax/spec.md


# INSTALLING TERRAFORM
# Using chocolately https://learn.hashicorp.com/tutorials/terraform/install-cli

choco install terraform




# install azure cli
Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi

# You can then login with
az login

# It will save the config in your system for terraform to use.

# FIRST BUILD (Folder Test Terraform after Install)

# create a file called main.tf then paste the below

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# I've edited mine to have a play around and create two and figure out the naming. DONT FORGET TO SAVE THE FILE, I had trouble where it was picking up nothing after running the next lot of cmds

# in cmd run # this cmd initialises everything terraform needs
terraform init

# this cmd generates a plan of action and will point out any issues you might need to fix.
terraform plan

# then to get the resources created run
terraform apply

# creates is hella quick
# when you are done you can run:

terraform destroy 

# which will remove all

# Still a lot to cover but as a get up and running and tested, very happy.
