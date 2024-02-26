FROM ubuntu
RUN apt update && apt install -y iputils-ping psmisc
ENTRYPOINT ["/bin/ping", "ya.ru"]


#docker build -f 1.Dockerfile -t test_entry_cmd_1 .
#docker run --rm --name  test_entry_cmd_1 test_entry_cmd_1
#docker history test_entry_cmd_1