This Terraform code can be used to deploy a virtual machine into a vSphere environment and then install Terraform Enterprise.

It leverages cloud-init for configuration, and the VMware GuestInfo datasource to pass metadata through for this customisation. A Packer file that installs these prerequisites can be found at https://github.com/grantorchard/packer-vsphere-cloudinit