#!/bin/bash
echo "Process Name, PID, Memory Usage (MB)"
ps -eo comm,pid,rss --sort --rss | awk 'NR<=6 {printf "%s, %s, %.2f\n", $1, $2}'
