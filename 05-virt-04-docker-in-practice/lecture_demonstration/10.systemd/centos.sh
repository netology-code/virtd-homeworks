docker run -d --privileged --name test_systemd_centos oowy/centos:stream8
docker exec -it test_systemd_centos bash
# bash -c "$(curl -L https://setup.vector.dev)"
# dnf install -y vector
# systemctl start vector && systemctl status vector
# docker rm -f test_systemd_centos
