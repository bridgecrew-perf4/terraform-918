# Set the variable value in *.tfvars file
# or using the -var="hcloud_token=..." CLI option
variable "hcloud_token" {}

# Configure the Hetzner Cloud Provider
provider "hcloud" {
  token = "${var.hcloud_token}"
}

# Create a server
resource "hcloud_server" "web" {
  name        = "my-server"
  image       = "var.ubuntu_image"
  server_type = "cx11"
}
