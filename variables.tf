# ---------------------------------------------------------------------------------------------------------------------
# VMWARE PROVIDER VARIABLES
# These are used to connect to vCenter.
# ---------------------------------------------------------------------------------------------------------------------

variable "vsphere_server" {
  type = string
}

variable "vsphere_user" {
  type = string
}

variable "vsphere_password" {
  type = string
}

# ---------------------------------------------------------------------------------------------------------------------
# VMWARE DATA SOURCE VARIABLES
# These are used to discover unmanaged resources used during deployment.
# ---------------------------------------------------------------------------------------------------------------------

variable datacenter_name {
  type        = string
  description = "The name of the vSphere Datacenter into which resources will be created."
}

variable cluster_name {
  type        = string
  description = "The vSphere Cluster into which resources will be created."
}

variable datastore_name {
  type        = string
  description = "The vSphere Datastore into which resources will be created."
}

variable datastore_cluster_name {
  type    = string
  default = ""
}

variable vm_network_name {
  type = string
}

variable template_name {
  type = string
}

# ---------------------------------------------------------------------------------------------------------------------
# VMWARE RESOURCE VARIABLES
# Variables used during the creation of resources in vSphere.
# ---------------------------------------------------------------------------------------------------------------------

variable machine_count {
  type    = number
  default = 3
}

variable hostname {
  type        = string
  default     = "ubuntu"
  description = "A prefix for the virtual machine name."
}

variable infoblox_tenant_id {
  type = string
  default = "not_applicable"
}

variable cidr {
  type = string
  default = "10.0.0.0/24"
}

variable network_view_name {
  type = string
  default = "default"
}

variable dns_view {
  type = string
  default = "default"
}

variable dns_suffix {
  type = string
  default = ""
}

# ---------------------------------------------------------------------------------------------------------------------
# CLOUD INIT VARIABLES
# Variables used for generation of metadata and userdata.
# ---------------------------------------------------------------------------------------------------------------------


variable username {
  type = string
}

variable ssh_public_key {
  type        = string
  description = "Location of SSH public key."
}

variable packages {
  type = list
  default = []
}

variable dhcp {
  type    = string
  default = "true"
}

variable ip_addresses {
  type    = list
  default = []
}

variable netmask {
  type    = string
  default = ""
}

variable gateway {
  type    = string
  default = ""
}

variable nameservers {
  type    = list
  default = []
}

# ---------------------------------------------------------------------------------------------------------------------
# POSTGRESQL VARIABLES
# Variables used for postgresql configuration.
# ---------------------------------------------------------------------------------------------------------------------

variable archive_path {
  type = string
  default = "/var/lib/postgresql/main/mnt/server/archivedir"
}