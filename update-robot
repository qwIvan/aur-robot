#!/bin/bash
while :;do
nvchecker source.ini && nvcmp source.ini | awk '{print $1}' | xargs -i sh -c "cd {} && git pull && ../{}.update && git push && cd .. && nvtake source.ini {}"
sleep 3600
done
