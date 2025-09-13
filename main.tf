resource "docker_image" "nginx_custom" {
  name = "nginx:customimage"

  build {
    context    = "${path.module}/App"
    dockerfile = "${path.module}/App/Dockerfile"
  }
}

resource "docker_container" "nginx_cont" {
  name  = "nginx_container"
  image = docker_image.nginx_custom.name
  ports {
    internal = 80
    external = 80
  }
}