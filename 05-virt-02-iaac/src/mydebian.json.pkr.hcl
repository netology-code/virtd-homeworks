
source "yandex" "debian_docker" {
  disk_type           = "network-hdd"
  token               = "xxxxx"
  folder_id           = "b1gqfo0sb395oot3m064"
  image_description   = "my custom debian with docker"
  image_name          = "debian-11-docker"
  source_image_family = "debian-11"
  ssh_username        = "debian"
  subnet_id           = "e9bv02urhgrf93ihhbic"
  use_ipv4_nat        = true
  zone                = "ru-central1-a"
}

build {
  sources = ["source.yandex.debian_docker"]

  provisioner "shell" {
    inline = [
        "echo 'hello from packer'",
        "sudo apt-get update",
        "sudo apt-get -y install ca-certificates curl",
        "sudo -y install -m 0755 -d /etc/apt/keyrings",
        "sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc",
        "sudo chmod a+r /etc/apt/keyrings/docker.asc",
        "echo \"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian $(. /etc/os-release && echo \"$VERSION_CODENAME\") stable\" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null",
        "sudo apt-get update",
        "sudo -y apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin",
        "apt search htop",
        "sudo apt -y install htop",
        "sudo apt -y install tmux"
    ]
  }

}
