
source "yandex" "debian_docker" {
  disk_type           = "network-hdd"
  folder_id           = "b1gfu..'это не секретные данные"
  image_description   = "my custom debian with docker"
  image_name          = "debian-11-docker"
  source_image_family = "debian-11"
  ssh_username        = "debian"
  subnet_id           = "e9bhm45v9j5tna68jf9n...совсем не секретные данные"
  token               = "y0_AgAAAAA...это точно секретные данные!"
  use_ipv4_nat        = true
  zone                = "ru-central1-a"
}

build {
  sources = ["source.yandex.debian_docker"]

  provisioner "shell" {
    inline = ["echo 'hello from packer'"]
  }

}
