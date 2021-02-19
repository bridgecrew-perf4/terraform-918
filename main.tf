terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "1.24.1"
    }
  }
}

provider "hcloud" {
  # Configuration options
}

# Create a server
resource "hcloud_server" "web" {
  name        = "my-server"
  image       = "var.ubuntu_image"
  server_type = "cx11"
}
