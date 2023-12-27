docker run -d --privileged --name test_systemd_ubuntu oowy/ubuntu:20.04
docker exec -it test_systemd_ubuntu bash
#apt update && apt install -y curl
#bash -c "$(curl -L https://setup.vector.dev)"
#apt install -y vector
#systemctl start vector && systemctl status vector
#docker rm -f test_systemd_ubuntu