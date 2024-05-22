eval $(ssh-agent)
ssh-add


export MYSECRET=qwerty12345
docker build --secret id=env_sec,env=MYSECRET -t test_secret . --ssh default --no-cache

docker history test_secret  --no-trunc 

docker run -it --rm test_secret bash



