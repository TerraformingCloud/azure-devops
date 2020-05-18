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
