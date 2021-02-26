output "env-dynamic-url" {
  value = "https://${hcloud_server.k8s-master-1.endpoint}"
}
