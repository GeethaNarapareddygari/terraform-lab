terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  # This connects to the default Docker socket on your Mac
  host = "unix:///var/run/docker.sock"
}