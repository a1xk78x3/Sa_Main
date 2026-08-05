module "rg" {
    source = "../Child/RG"
    RG = var.RGs
}
module "vnet" {
    depends_on = [module.rg]
    source = "../Child/Vnet"
    vnet = var.Vnets
}
module "subnet" {
    depends_on = [module.vnet]
    source = "../Child/Subnet"
    sbnet = var.subnet
}
module "nic" {
    depends_on = [module.subnet]
    source = "../Child/NIC"
    nic = var.NIC
}
module "vm" {
    depends_on = [module.nic]
    source = "../Child/VM"
    vms = var.VM
}