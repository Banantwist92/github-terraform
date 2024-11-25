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