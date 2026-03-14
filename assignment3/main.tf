# Pulls the image
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# Starts the container
resource "docker_container" "web_server" {
  image = docker_image.nginx.image_id
  name  = "assignment3-nginx"
  
  ports {
    internal = 80
    external = 8080
  }
}