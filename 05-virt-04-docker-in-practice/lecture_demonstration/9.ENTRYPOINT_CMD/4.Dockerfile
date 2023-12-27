FROM ubuntu
RUN apt update && apt install -y iputils-ping psmisc
ENTRYPOINT ["/bin/ping"]
CMD ["ya.ru"]

#docker build -f 4.Dockerfile -t test_entry_cmd_4 .
#docker run --rm --name  test_entry_cmd_4 test_entry_cmd_4
