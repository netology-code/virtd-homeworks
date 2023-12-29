History

export MYSECRET=qwerty
docker build --secret id=env_sec,env=MYSECRET -t test_secret . --no-cache

docker history test_secret  --no-trunc | grep 'env_sec'

docker run -it --rm test_secret cat ./env_sec


