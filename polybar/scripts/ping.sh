#!/bin/sh

echo `ping 8.8.8.8 -c 1 | head -n 2 | tail -n 1 | cut -d '=' -f 4`
