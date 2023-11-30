
# Домашнее задание к занятию 2. «Применение принципов IaaC в работе с виртуальными машинами»

## Как сдавать задания

Обязательны к выполнению задачи без звёздочки. Их нужно выполнить, чтобы получить зачёт и диплом о профессиональной переподготовке.

Задачи со звёздочкой (*) — дополнительные задачи и/или задачи повышенной сложности. Их выполнять не обязательно, но они помогут вам глубже понять тему.

Домашнее задание выполните в файле readme.md в GitHub-репозитории. В личном кабинете отправьте на проверку ссылку на .md-файл в вашем репозитории.

Любые вопросы по решению задач задавайте в чате учебной группы.

---
## Важно

**Перед началом работы над дипломным заданием изучите [Инструкция по экономии облачных ресурсов](https://github.com/netology-code/devops-materials/blob/master/cloudwork.MD).**

Перед отправкой работы на проверку удаляйте неиспользуемые ресурсы.
Это нужно, чтобы не расходовать средства, полученные в результате использования промокода.

Подробные рекомендации [здесь](https://github.com/netology-code/virt-homeworks/blob/virt-11/r/README.md).

---

## Задача 1
Установите на личный linux-компьютер или учебную **локальную** ВМ с linux(облачная ВМ не подойдет):

- [VirtualBox](https://www.virtualbox.org/),
- [Vagrant](https://github.com/netology-code/devops-materials), рекомендуем версию 2.3.4
- [packer](https://github.com/netology-code/devops-materials/blob/master/README.md) + плагин от Яндекс-облако по [инструкции](https://cloud.yandex.ru/docs/tutorials/infrastructure-management/packer-quickstart)


## Задача 2
- Создайте виртуальную машину Virtualbox с помощью Vagrant.
- Зайдите внутрь ВМ, убедитесь, что Docker установлен с помощью команды
```
docker version && docker compose version
```
Vagrantfile находятся в [папке](https://github.com/netology-code/virt-homeworks/tree/virt-11/05-virt-02-iaac/src).

Примечание. Если Vagrant выдаёт ошибку(блокировка трафика):
```
URL: ["https://vagrantcloud.com/bento/ubuntu-20.04"]     
Error: The requested URL returned error: 404:
```

выполните следующие действия:

1. Скачайте с [сайта](https://app.vagrantup.com/bento/boxes/ubuntu-20.04) файл-образ "bento/ubuntu-20.04".
2. Добавьте его в список образов Vagrant: "vagrant box add bento/ubuntu-20.04 <путь к файлу>".

Важно!: Если ваша хостовая рабочая станция - это windows ОС, то у вас могут возникнуть проблемы со вложенной виртуализацией.  [способы решения](https://www.comss.ru/page.php?id=7726)  . Если вы устанавливали hyper-v или docker desktop то  все равно может возникать ошибка: Stderr: VBoxManage: error: AMD-V VT-X is not available (VERR_SVM_NO_SVM) . Попробуйте в этом случае выполнить в windows от администратора команду: "bcdedit /set hypervisorlaunchtype off" и перезагрузиться

## Задача 3
- Отредактируйте файл mydebian.json или mydebian.json.pkr.hcl в директории src(packer умеет и в json и в hcl форматы). Ваша задача добавить в скрипт установку docker(возьмите готовый скрипт из Vagrantfile). Так же установите в данном образе htop и tmux.
- Найдите свой образ в web консоли или с помощью yc tool.
- Создайте новую ВМ(минимальные параметры) в облаке, используя данный образ. 
- Подключитесь по ssh и убедитесь в наличии установленного docker.
- Удалите ВМ и образ.
- ВНИМАНИЕ!!! Никогда не выкладываете oauth token в git-репозиторий! После выполнения задания обязательно удалите секретные данные из файла mydebian.json!!!