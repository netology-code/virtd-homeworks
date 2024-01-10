bad build order

docker build -t python_bad_order .
docker run -d -p 5000:5000 --name python_bad_order python_bad_order && docker ps
curl http://127.0.0.1:5000 && docker rm -f python_bad_order