#!/bin/bash

gcc home/server.c -lfcgi -o server
spawn-fcgi -p 8080 server
