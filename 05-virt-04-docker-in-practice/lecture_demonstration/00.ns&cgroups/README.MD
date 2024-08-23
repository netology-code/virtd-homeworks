Namespaces, используются для изоляции ресурсов между процессами. 
Это позволяет каждому процессу иметь собственные экземпляры общесистемных объектов, таких как:

PID Namespace: Изолирует идентификаторы процессов. Процессы в разных PID namespaces могут иметь одинаковые PID.

Network Namespace: Позволяет создавать изолированные сетевые интерфейсы и стек. Каждый namespace может иметь свои сетевые интерфейсы, маршруты и настройки DHCP.

Mount Namespace: Изолирует файловую систему, так что каждый namespace может иметь свои точки монтирования.

User Namespace: Позволяет изолировать пользователские идентификаторы, обеспечивая безопасность, позволяя процессу запускаться с низкими привилегиями, даже если он запущен от пользователя с более высокими привилегиями.

UTS Namespace: Используется для изоляции имени хоста и имени домена.

Time Namespace: Изоляция системных часов и таймеров.

как увидеть all Namespace? -- lsns

docker rm -f $(docker ps -a -q)
docker run -d --name ns_nginx --cpus=".1" --memory="32m" nginx

pid=$(ps aux | grep "[n]ginx -g" | awk '{print $2}') && echo $pid

sudo nsenter --target $pid --uts
hostname
hostname 555
Ctrl+D

docker exec -it ns_nginx bash -c "cat /sys/fs/cgroup/cpu.max&&cat /sys/fs/cgroup/memory.max"
echo $((33554432/1024/1024))
32