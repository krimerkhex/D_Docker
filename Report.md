# Отчет

## Part 1. Готовый докер

Утановка образ nginx:
![installing_ngninx_imagen](..\report_imagens\Screenshot_1.png "Command Output")


Проверка наличия докер-образа через docker images:
![installing_imagen](..\report_imagens\Screenshot_2.png "Command Output")

Запуск докер-образ через docker run -d [image_id|repository]:
![ngninx_run](..\report_imagens\Screenshot_3.png "Command Output")


Проверка, что образ запустился через docker ps:
![](..\report_imagens\Screenshot_4.png "Command Output")

Посмотр информации о контейнере через docker inspect [container_id|container_name]
![](..\report_imagens\Screenshot_9.png "Command Output")
![](..\report_imagens\Screenshot_10.png "Command Output")
![](..\report_imagens\Screenshot_11.png "Command Output")
![](..\report_imagens\Screenshot_12.png "Command Output")
![](..\report_imagens\Screenshot_13.png "Command Output")
![](..\report_imagens\Screenshot_14.png "Command Output")


* Размер контейнера: 1.09kB (virtual 187MB) (docker ps -s)
* Список замапленных портов: 0 
* Ip контейнера: 172.17.0.2

Останови докер образ через docker stop [container_id|container_name]:
![](..\report_imagens\Screenshot_8.png "Command Output")

Проверь, что образ остановился через docker ps.
![](..\report_imagens\Screenshot_15.png "Command Output")

Запусти докер с портами 80 и 443 в контейнере, замапленными на такие же порты на локальной машине, через команду run.
![](..\report_imagens\Screenshot_16.png "Command Output")

Проверь, что в браузере по адресу localhost:80 доступна стартовая страница nginx.
![](..\report_imagens\Screenshot_17.png "Command Output")

Перезапусти докер контейнер через docker restart [container_id|container_name].
![](..\report_imagens\Screenshot_20.png "Command Output")

## Part 2. Операции с контейнером

Прочитай конфигурационный файл nginx.conf внутри докер контейнера через команду exec.
![](..\report_imagens\Screenshot_5.png "Command Output")

Создай на локальной машине файл nginx.conf.
![](..\report_imagens\Screenshot_6.png "Command Output")

Настрой в нем по пути /status отдачу страницы статуса сервера nginx.
![](..\report_imagens\Screenshot_7.png "Command Output")

Скопируй созданный файл nginx.conf внутрь докер-образа через команду docker cp.
![](..\report_imagens\Screenshot_18.png "Command Output")

Перезапусти nginx внутри докер-образа через команду exec.
![](..\report_imagens\Screenshot_21.png "Command Output")

Проверь, что по адресу localhost:80/status отдается страничка со статусом сервера nginx.
![](..\report_imagens\Screenshot_19.png "Command Output")

Экспортируй контейнер в файл container.tar через команду export.
![](..\report_imagens\Screenshot_22.png "Command Output")

Останови контейнер.
![](..\report_imagens\Screenshot_23.png "Command Output")

Удали образ через docker rmi [image_id|repository], не удаляя перед этим контейнеры.
![](..\report_imagens\Screenshot_24.png "Command Output")

Удали остановленный контейнер.
![](..\report_imagens\Screenshot_25.png "Command Output")

Импортируй контейнер обратно через команду import.
![](..\report_imagens\Screenshot_27.png "Command Output")

Запусти импортированный контейнер.
![](..\report_imagens\Screenshot_28.png "Command Output")

Проверь, что по адресу localhost:80/status отдается страничка со статусом сервера nginx.
![](..\report_imagens\Screenshot_29.png "Command Output")

## Part 3. Мини веб-сервер

Напиши мини-сервер на C и FastCgi, который будет возвращать простейшую страничку с надписью Hello World!.
![](..\report_imagens\Screenshot_30.png "Command Output")


Напиши свой nginx.conf, который будет проксировать все запросы с 81 порта на 127.0.0.1:8080.
Запусти написанный мини-сервер через spawn-fcgi на порту 8080.
![](..\report_imagens\Screenshot_33.png "Command Output")

Проверь, что в браузере по localhost:81 отдается написанная тобой страничка.
![](..\report_imagens\Screenshot_32.png "Command Output")

## Part 4. Свой докер

Проверь, что в браузере по localhost:81 отдается написанная тобой страничка.
![](..\report_imagens\Screenshot_34.png "Command Output")


## Part 5. **Dockle**

До
![](..\report_imagens\Screenshot_35.png "Command Output")


После
![](..\report_imagens\Screenshot_36.png "Command Output")

## Part 6. Базовый **Docker Compose**

1 машина
![](..\report_imagens\Screenshot_35.png "Command Output")

2 машина
![](..\report_imagens\Screenshot_35.png "Command Output")
