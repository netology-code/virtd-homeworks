FROM ubuntu
RUN apt update && apt install -y iputils-ping psmisc
CMD ["/bin/ping", "ya.ru"]


#docker build -f 2.Dockerfile -t test_entry_cmd_2 .
#docker run --rm --name  test_entry_cmd_2 test_entry_cmd_2
