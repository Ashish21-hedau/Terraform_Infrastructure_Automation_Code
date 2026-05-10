terraform {
  backend "azurerm" {}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.68.0"
    }
  }

}

provider "azurerm" {
  features {}

  subscription_id = "1038f44a-e6a4-4d90-821a-412f08cd9720"
}


// terraform {
//   required_providers {
//     azurerm = {
//       source  = "hashicorp/azurerm"
//       version = "4.68.0"
//     }
//     // random = {
//     //   source  = "hashicorp/random"
//     //   version = "3.6.3"
//   }
//   }
//   backend "azurerm" {
//   resource_group_name  = "dushyrg"           # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
//   storage_account_name = "randomsto1"         # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
//   container_name       = "terenamm"          # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
//   key                  = "terraformashish.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
//   }

// provider "azurerm" {
//   features {}
//     // key_vault {
//     //   purge_soft_delete_on_destroy    = true
//     //   recover_soft_deleted_key_vaults = true

//   subscription_id = "1038f44a-e6a4-4d90-821a-412f08cd9720"
// }


// // provider "random" {

// // }


//  backend "azurerm" {
//   //   resource_group_name  = "Pipelinekeliyeuse"
//   //   storage_account_name = "ashisstorageacciunt"
//   //   container_name       = "ashishcontainers"
//   //   key                  = "terraformmain.tfstate"
//   // }


terraform {
  backend "azurerm" {}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.68.0"
    }
  }

}

provider "azurerm" {
  features {}

  subscription_id = "1038f44a-e6a4-4d90-821a-412f08cd9720"
}



