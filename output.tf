output "vm_ip_addresses" {
  value = {
    for vm in hcloud_server.k8s-worker:
    vm.name => vm.ipv4_address
  }
}
