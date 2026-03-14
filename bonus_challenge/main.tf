module "dynamic_containers" {
  # This converts the list into a map so for_each can process it
  for_each = { for c in var.container_config : c.name => c }

  source         = "./modules/nginx_container"
  container_name = each.value.name
  container_port = each.value.port
  image_name     = "nginx:latest"
}