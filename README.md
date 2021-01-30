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

Remember Syntax https://www.terraform.io/docs/language/syntax/configuration.html

Reference = https://github.com/hashicorp/hcl/blob/hcl2/hclsyntax/spec.md


INSTALLING TERRAFORM
Using chocolately https://learn.hashicorp.com/tutorials/terraform/install-cli

choco install terraform

#install azure cli
Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi