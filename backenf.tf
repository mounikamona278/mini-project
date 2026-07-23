terraform {
  backend "azurerm" {
    resource_group_name  = "rg"  
    storage_account_name = "st_acc"                      
    container_name       = "con"                       
    key                  = "dev.terraform.tfstate"        
  }
  }
