terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "azurerm" {} # Backend configuration will be injected by the pipeline
}

provider "azurerm" {
  features {}
  subscription_id = "7c3e4f76-b362-487a-a9a9-6baf9a5ed816"
}

resource "azurerm_resource_group" "rg1" {
  name     = "rg-jk-demo-01"
  location = "East US"
  tags = {
    Environment = "Prod"
    Owner       = "JK"
  }
}

resource "azurerm_resource_group" "rg2" {
  name     = "rg-jk-demo-02"
  location = "East US"
  tags = {
    Environment = "Prod"
    Owner       = "JK"
  }
}
