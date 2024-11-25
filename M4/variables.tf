variable "location" {
  type        = string
  description = "Location of deployment"
  default     = "West Europe"
}

variable "rgname" {
  type        = string
  description = "Resource Group Name"
  default     = "rg-demoadrian-terraform"
}

variable "sgname" {
  type        = string
  description = "Security Group Name"
  default     = "security-group-adrian"
}

variable "vnname" {
  type        = list(string)
  description = "Virtual Network Name"
  default     = ["virtual-network-adrian1", "virtual-network-adrian2"]
}

variable "company" {
  type        = string
  description = "Company name"
}

variable "project" {
  type        = string
  description = "Project name"
}

variable "billing_code" {
  type        = string
  description = "Billing code"
}

variable "az_regions" {
  type        = list(string)
  description = "Azure regions for resources"
  default     = ["northeurope", "westeurope"]
}

variable "storage_account_names" {
  type        = list(string)
  description = "values for storage account names"
  default     = ["storage441", "storage442", "storage443"]
}