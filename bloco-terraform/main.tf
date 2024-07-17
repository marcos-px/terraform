terraform {
  required_version = "~> 1.3.0"

  required_providers {
    aws = {
      version = "1.0"
      source  = "hashicorp/aws"
    }

    azurerm = {
      version = "2.0"
      source  = "hashicorp/azurerm"
    }
  }


  backend "azurerm" {
    resource_group_name  = "rg-terraform"
    storage_account_name = "saterraform"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}