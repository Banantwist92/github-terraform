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


# Variables for the network module
variable "nsgname" {
  description = "The name of the network security group"
  type        = string
  default     = "nsg-tf-demoadrian-001"
}
variable "vnetname" {
  description = "The name of the virtual network"
  type        = string
  default     = "vnet-tf-demoadrian-001"
}
variable "subnetname" {
  description = "Subnet Name"
  type        = string
  default     = "subnet-tf-demoadrian-001"
}


# Variables for the DB module
variable "saname" {
  description = "The name of the storage account"
  type        = string
  default     = "satfdemoadrian001"
}
variable "mssqlservername" {
  description = "SQL Server Name"
  type        = string
  default     = "mssql-server-001"
}
variable "mssqldbname" {
  description = "The name of the SQL database"
  type        = string
  default     = "mssql-db-001"
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