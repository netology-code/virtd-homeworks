Multistage

docker build -t test_python_multistage . --no-cache
docker run -d -p 5000:5000 --name test_python_multistage test_python_multistage 
docker ps
curl http://127.0.0.1:5000 

docker exec -it test_python_multistage ash
apk add vim

docker rm -f test_python_multistage
docker images | grep test_python 