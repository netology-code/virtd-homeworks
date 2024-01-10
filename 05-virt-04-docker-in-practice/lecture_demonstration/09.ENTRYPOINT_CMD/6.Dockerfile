FROM ubuntu
RUN apt update && apt install -y iputils-ping psmisc


#ENTRYPOINT /bin/ping ya.ru  

#CMD /bin/ping ya.ru  #разницы не будет

#docker build -f 6.Dockerfile -t test_entry_cmd_6 .
#docker run --rm --name  test_entry_cmd_6 test_entry_cmd_6
#docker rm -f test_entry_cmd_6
