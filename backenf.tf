terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate_rg"  
    storage_account_name = "st_acc"                      
    container_name       = "tfstate_con"                       
    key                  = "dev.terraform.tfstate"        
  }
  }
