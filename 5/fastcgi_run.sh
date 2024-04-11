#!/bin/bash

gcc home/server.c -lfcgi -o server
service nginx start
spawn-fcgi -p 8080 -n server
