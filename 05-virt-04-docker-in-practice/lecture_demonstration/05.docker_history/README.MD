History

docker build --build-arg ARG_PASSWORD_CLI=qwerty -t test_python_history . --no-cache

docker history test_python_history

docker rm -f test_python_history