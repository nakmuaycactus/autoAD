#ESXI Settings
  vcenter_server        = "192.168.3.150" 
  host                  = "localhost.localdomain"
  username              = "root"
  password              = "Thrunters1!FTW"
  insecure_connection   = true
  datastore             = "AD-VMs"
  network               = "VM Network"
  network_card          = "vmxnet3"

#Created VM Config
  vm_name               = "pkr_UL"  
  guest_os_type         = "ubuntu64Guest"
  iso_paths             = ["[AD-VMs] ISOs/ubuntu-16.04.7-server-amd64.iso"]   
  CPUs                  = 4
  RAM                   = 8192
  RAM_reserve_all       = true
  disk_controller_type  = ["pvscsi"]
  disk_size             = 32768
  disk_thin_provisioned = true
  ssh_username          = "packer"
  ssh_password          = "packer"
  floppy_files          = ["http/UL-preseed.cfg"]
  output_directory      = "./output/UL"
  boot_command          = ["<enter><wait><f6><wait><esc><wait>",
                          "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
                          "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
                          "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
                          "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
                          "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
                          "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
                          "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
                          "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>",
                          "<bs><bs><bs>", "/install/vmlinuz",
                          " initrd=/install/initrd.gz", " priority=critical",
                          " locale=en_US", " netcfg/choose_interface=eth0", " file=/media/UL-preseed.cfg",
                          "<enter>"]