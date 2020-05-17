#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
# Root Module
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*

provider "azurerm" {
    version         =   "~> 2.6"
    
    features {
        virtual_machine {
            delete_os_disk_on_deletion = true
        }
    }
}

terraform {
    backend "azurerm" {}
}

resource "azurerm_resource_group" "rg" {
    name        =       "TestRG"
    location    =       "South India"
}

// module "vnet" {
//     source                  =   "./vnet"
//     // rgname                  =   "testmodule"
//     // location                =   "south india"
//     // vnet_cidr               =   "172.16.0.0/16"
//     // subnetCIDR              =   ["172.16.1.0/24", "172.16.2.0/24", "172.16.3.0/24"]
// }

// module "lbrvm" {
//     source  =   "./api-vm"
// }

# module "keyvault" {
#     source  =   "./keyvault"
# }

// module "winvm" {
//      source  =   "./winVM"
// }

// module "bastion" {
//     source   =   "./bastion"
// }

// module "linuxvm" {
//      source  =   "./linuxVM"
//  }

//  module "fw-lbr" {
//     source  =   "./fw-lbr"
// }