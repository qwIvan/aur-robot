#!/bin/bash
while :;do
nvchecker source.ini && nvcmp source.ini | awk '{print $1}' | xargs -i sh -c "cd {} && git pull origin master && ../{}.update && git push origin master && cd .. && nvtake source.ini {}"
sleep 3600
done
