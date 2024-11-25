variable "location" {
  type        = string
  description = "Location of deployment"
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
  type        = string
  description = "Virtual Network Name"
  default     = "virtual-network-adrian"
}