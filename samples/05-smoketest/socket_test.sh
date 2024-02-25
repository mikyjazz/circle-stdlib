#!/bin/bash

# echo "Starting socat server in the background"

#socat -U TCP4-LISTEN:5001 "EXEC:yes socat server" &

echo "Waiting for QEMU to open socket 5000..."

while ! nc -z localhost 5000; do   
  sleep 0.1 # wait for 1/10 of the second before check again
done

echo "Socket test" | nc -v localhost 5000

echo "Socket test completed"
