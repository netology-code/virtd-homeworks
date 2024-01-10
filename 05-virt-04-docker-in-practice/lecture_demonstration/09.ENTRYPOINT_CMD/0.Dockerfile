FROM ubuntu
RUN apt update && apt install -y iputils-ping psmisc
# ENTRYPOINT

#docker build -f 0.Dockerfile -t test_entry_cmd_0 .
#docker run --rm --name  test_entry_cmd_0 test_entry_cmd_0
#docker history test_entry_cmd_0