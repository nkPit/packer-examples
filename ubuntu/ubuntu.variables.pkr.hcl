variable "user" {
  type = object({
    username           = string
    encrypted_password = string
    password           = string
  })
  default = {
    username           = "parallels"
    encrypted_password = "$6$parallels$TmuiKCQ7TlOer2.zN6OtTpQ6XmE8P69xwgfA6e8mRgYBQY3ZA3JHQ8HVJuifbgwcfJZjLWC2muyPlGiDF3c180"
    password           = "parallels"
  }
}

variable "version" {
  type    = string
  default = "23.04"
}

variable "machine_name" {
  type    = string
  default = ""
}

variable "hostname" {
  type    = string
  default = ""
}

variable "machine_specs" {
  type = object({
    cpus      = number
    memory    = number
    disk_size = string
  })
  default = {
    cpus      = 2
    memory    = 2048
    disk_size = "65536"
  }
}

variable "boot_command" {
  type    = list(string)
  default = []
}

variable "boot_wait" {
  type    = string
  default = "10s"
}

variable "isos_urls" {
  type    = list(string)
  default = []
}

variable "iso_checksum" {
  type    = string
  default = ""
}

variable "shutdown_timeout" {
  type    = string
  default = "15m"
}

variable "ssh_username" {
  type    = string
  default = ""
}

variable "ssh_password" {
  type    = string
  default = ""
}

variable "ssh_timeout" {
  type    = string
  default = "60m"
}

variable "ssh_port" {
  type    = number
  default = 22
}

variable "ssh_wait_timeout" {
  type    = string
  default = "10000s"
}

variable "addons" {
  type = list(string)
  default = []
}

variable "create_vagrant_box" {
  type    = bool
  default = false
}