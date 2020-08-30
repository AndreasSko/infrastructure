variable "hcloud_location" {
  type    = string
  default = "fsn1"
}

variable "ssh_pub_key" {
  type        = string
  description = "The public key that will be used to manage the server from GitHub Actions"
}

variable "workstation_ssh_pub_key" {
  type        = string
  description = "The public key that will be used to access the server from the workstation"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC+MngXuYuh/ZrojLf3oANA94Wq2waFUvO3gW55SEKpnSK58nsqGGJz5CzrNdSmA5DrdEzuj86PyAIio67PjVfHz3q6bjC46P8upyk6jmGVwEMpqcfHcyTIo1faCoBai7GwciHYbemrKSK+YJNNKY9VYz998imyOPQKv8yk7G0bJlAEnj7RlR90I8FacTP/CQuD7pcMp3bFrvxRNKtBUVzBTqlJ/3EbCBuhRr1YwFhohxkmUzD9ic4FY3BIpqrbaMhEGAz+atrf7WUsw5V5WqV5ldk+3wCB0b3kwZ35RSHZCLdosgRSM9m+GdiVwabuXwtaC+zooGHUH8MQbpMKQ/PWT/E/+r537ptGd52SiGbSkSKLCiBekuEpncdfCQ6GbSJ3sj6uAtqwyGEgnfsoQbb863FxPAfrN7xtOuvjDHzbUkZ9WDPBtzQXc0BUS5Q8em01bj09skkGpe+uCZcsCw7NiVh3J4TmfRZZn5Fu+H4PKpj8sJB5zGaH61aKHVlf+ZM= askorczyk@Andreass-MacBook-Pro.local"
}
