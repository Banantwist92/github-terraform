resource "azurerm_storage_account" "sa" {
  name                     = var.saname
  resource_group_name      = var.rgname
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = local.common_tags
}

resource "azurerm_mssql_server" "mysqlserver" {
  name                         = var.mssqlservername
  resource_group_name          = var.rgname
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
  tags                         = local.common_tags
}

resource "azurerm_mssql_database" "mssqldb" {
  name           = var.mssqldbname
  server_id      = azurerm_mssql_server.mysqlserver.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  license_type   = "LicenseIncluded"
  max_size_gb    = 2
  sku_name       = "S0"
  zone_redundant = false
  tags           = local.common_tags


  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = false
  }
}