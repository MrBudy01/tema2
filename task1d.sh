#!/bin/bash
sudo mkdir -p /mnt/mymnt/randoms
sudo mkdir -p /mnt/mymnt/passwords
sudo dd if=/dev/urandom of=/mnt/mymnt/randoms/random.bin bs=10000 count=1
for((i=1;i<=100;i++))do
	sudo < /dev/urandom tr -dc A-Za-z0-9  2>/dev/null | head -c30 >/mnt/mymnt/passwords/"only_numbers_and_letters$i.txt"
done

