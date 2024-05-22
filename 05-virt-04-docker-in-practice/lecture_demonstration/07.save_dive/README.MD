eval $(ssh-agent)
ssh-add

export MYSECRET=qwerty12345
docker build --secret id=env_sec,env=MYSECRET -t test_extract .  --no-cache


docker image  save -o  /tmp/image.tar.gz test_extract 
tar xf /tmp/image.tar.gz

cd blobs/sha256

docker run -ti --rm  -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive  test_secret

# Digest: sha256:f8194172658e9ce6e7923639c5ebd4f77a8a7a2b44b1e1462a110f793c17c280

tar xf f8194172658e9ce6e7923639c5ebd4f77a8a7a2b44b1e1462a110f793c17c280

