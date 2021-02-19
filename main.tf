
# Configure the Hetzner Cloud Provider
provider "hcloud" {
}

# Create a server
resource "hcloud_server" "web" {
  name        = "my-server"
  image       = "var.ubuntu_image"
  server_type = "cx11"
}
