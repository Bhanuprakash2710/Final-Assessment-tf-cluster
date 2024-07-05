terraform {
   backend "azurerm" {
    resource_group_name = "rg-storage-accounts-1"
    storage_account_name = "tfstorageaccountbhanu"
    container_name = "tfstatefiles"
    key = "app-service.terraform.tfstate"
    
  }
}
