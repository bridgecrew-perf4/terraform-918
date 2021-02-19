
provider "hcloud" {
  # Configuration options
}

# Create Servers
resource "hcloud_server" "web" {
  name        = "k8s-master-1"
  image       = var.ubuntu_image
  server_type = "cx11"
}

resource "hcloud_server" "web" {
  name        = "k8s-worker-1"
  image       = var.ubuntu_image
  server_type = "cx21"
}

resource "hcloud_server" "web" {
  name        = "k8s-worker-2"
  image       = var.ubuntu_image
  server_type = "cx21"
}