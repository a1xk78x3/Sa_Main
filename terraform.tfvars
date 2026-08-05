RGs = {
    RG1 = {
        name     = "Sachin-RG"
        location = "Central India"
    }
}

Vnets = {
    Vnet1 = {
        name                = "Sachin-Vnet"
        address_space       = ["10.0.0.0/16"]
        location            = "Central India"
        resource_group_name = "Sachin-RG"
    }
}

subnet = {
    Subnet1 = {
        name                 = "Sachin-Subnet"
        resource_group_name  = "Sachin-RG"
        virtual_network_name = "Sachin-Vnet"
        address_prefixes     = ["10.0.1.0/24"]
    }

    Subnet2 = {
        name                 = "Sachin-Subnet2"
        resource_group_name  = "Sachin-RG"
        virtual_network_name = "Sachin-Vnet"
        address_prefixes     = ["10.0.2.0/24"]
    }
}

NIC = {
    NIC1 = {
      subnet_name = "Sachin-Subnet"
      vnet_name = "Sachin-Vnet"
      resource_group_name = "Sachin-RG"

        name = "Sachin-NIC"
        location = "Central India"
        nic_ip_configuration_name = "Sachin-NIC-IPConfig"
        nic_private_ip_address_allocation = "Dynamic"
        }
NIC2 = {
      subnet_name = "Sachin-Subnet2"
      vnet_name = "Sachin-Vnet"
      resource_group_name = "Sachin-RG"

        name = "Sachin-NIC2"
        location = "Central India"
        nic_ip_configuration_name = "Sachin-NIC-IPConfig"
        nic_private_ip_address_allocation = "Dynamic"
        }

    }
VM = {
    VM1 = {
        vm_name                  = "Sachin-VM"
        location              = "Central India"
        resource_group_name   = "Sachin-RG"
        vm_size               = "Standard_D2s_v3"
        admin_username        = "testadmin"
        admin_password        = "Password1234!"
        nic_name              = "Sachin-NIC"
    }
}