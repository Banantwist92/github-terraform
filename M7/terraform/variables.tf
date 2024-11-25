variable "rg_name" {
  type        = string
  description = "Name of the resource group"
  default     = "rg-demo-001"

}

variable "rg_location" {
  type        = string
  description = "Location of the resource group"
  default     = "westeurope"
}