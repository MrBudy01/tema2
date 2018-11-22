#!/bin/bash
find /etc -name '*.conf' 2>/home/student/error.txt -exec stat {} + | grep Size |cut -d " " -f4 | awk '{SUM+=$1} END {print SUM}' >/home/student/total_size.txt


