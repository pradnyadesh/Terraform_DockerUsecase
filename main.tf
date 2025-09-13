resource "docker_image" "nginx" {
  name="nginx:alpine"
}

resource "docker_container" "nginx_cont" {
  image = docker_image.nginx
  name =  "nginx_container"
  ports {
    internal = 80
    external = 80
  }
}
