good build order

docker build -t test_python_good_order .
docker run -d -p 5000:5000 --name test_python_good_order python_good_order
docker ps
curl http://127.0.0.1:5000 
docker rm -f test_python_good_order