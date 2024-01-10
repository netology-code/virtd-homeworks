mkdir test_runc && cd test_runc

runc spec && ls
  config.json

mkdir rootfs
apt-get -y install skopeo
skopeo copy docker://docker.io/library/nginx:latest  oci:nginx:latest

apt install umoci
umoci unpack --image nginx:latest bundle
cp -r bundle/rootfs config.json ./nginx && cd nginx 

sed -i 's/terminal": true/terminal": false/' config.json
sed -i 's/"sh"/"sleep","60"/' config.json

runc run nginx --detach

nginx runc list
ID      ID      STATUS    BUNDLE                 CREATED  OWNER
nginx   124495  running   /root/test_runc/nginx  11:49    root

runc kill nginx && runc delete nginx
