variable "location" {
  type        = string
  description = "Location of deployment"
  default     = "westeurope"
}
variable "company" {
  type        = string
  description = "Company name"
  default     = "AdrianComp"
}
variable "project" {
  type        = string
  description = "Project name"
  default     = "AD-303"
}
variable "billing_code" {
  type        = string
  description = "Billing code"
  default     = "Prod"
}
variable "rgname" {
  type        = string
  description = "Resource Group Name"
  default     = "rg-tf-demoadrian"
}


# Variables for the VMSS module
variable "vmssname" {
  description = "The name of the virtual machine scale set"
  type        = string
  default     = "vmss-tf-demoadrian-001"
}
variable "subnet_id" {
  description = "The ID of the subnet"
  type        = string
  default     = ""
}