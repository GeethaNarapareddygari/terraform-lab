output "container_urls" {
  # This loop creates the list of URLs dynamically
  value = [for c in var.container_config : "http://localhost:${c.port}"]
}