
provider "hcloud" {
  # Configuration options
}

# Create Servers
resource "hcloud_server" "k8s-master-1" {
  name        = "k8s-master-1"
  image       = var.ubuntu_image
  server_type = "cx11"
  location    = "nbg1"
}

resource "hcloud_server" "k8s-worker-1" {
  name        = "k8s-worker-1"
  image       = var.ubuntu_image
  server_type = "cx21"
  location    = "nbg1"
}

# resource "hcloud_server" "k8s-worker-2" {
#   name        = "k8s-worker-2"
#   image       = var.ubuntu_image
#   server_type = "cx21"
#   location    = "nbg1"

# }