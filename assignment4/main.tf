module "dev_server" {
  source         = "./modules/nginx_container"
  container_name = "nginx-dev-container"
  container_port = 8084
  image_name     = "nginx:latest"
}

module "prod_server" {
  source         = "./modules/nginx_container"
  container_name = "nginx-prod-container"
  container_port = 8085
  image_name     = "nginx:latest"
}