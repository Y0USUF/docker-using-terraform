terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.20.0"
    }
  }
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine" 
}

# Pull a Docker image
resource "docker_image" "nginx_image" {
  name         = "nginx:latest"
  keep_locally = false
}

# Create a Docker container
resource "docker_container" "nginx_container" {
  name  = "my_nginx"
  image = docker_image.nginx_image.name
  ports {
    internal = 80
  }
}
