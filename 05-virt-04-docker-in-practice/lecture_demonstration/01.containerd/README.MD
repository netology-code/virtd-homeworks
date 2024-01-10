ctr images pull docker.io/library/nginx:latest
ctr run --detach docker.io/library/nginx:latest test-nginx
ctr container ls

CONTAINER     IMAGE                             RUNTIME                    
test-nginx    docker.io/library/nginx:latest    io.containerd.runc.v2 

ctr task ls
TASK          PID       STATUS    
test-nginx    119630    RUNNING

ctr task kill test-nginx
TASK          PID       STATUS    
test-nginx    119630    STOPPED


ctr container remove test-nginx
