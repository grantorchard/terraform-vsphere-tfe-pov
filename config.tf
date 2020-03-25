data template_file "userdata" {
  template = file("${path.module}/templates/userdata.yaml")

  vars = {
    username       = var.username
    ssh_public_key = file(var.ssh_public_key)
    packages       = jsonencode(var.packages)
    ip_address  = infoblox_ip_allocation.this.ip_addr
  }
}

data template_file "metadata" {
  template = file("${path.module}/templates/metadata.yaml")

  vars = {
    dhcp        = var.dhcp
    hostname    = var.hostname
    ip_address  = infoblox_ip_allocation.this.ip_addr
    netmask     = var.netmask
    nameservers = jsonencode(var.nameservers)
    gateway     = var.gateway
  }
}