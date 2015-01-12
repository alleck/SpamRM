#!/bin/bash

echo -e "\033[36m   _____                              \033[31m _____    __  __ "
echo -e "\033[36m  / ____|                             \033[31m|  __ \  |  \/  |"
echo -e "\033[36m | (___    _ __     __ _   _ __ ___   \033[31m| |__) | | \  / |"
echo -e "\033[36m  \___ \  | '_ \   / _\` | | '_ \` _ \ \033[31m |  _  /  | |\/| |"
echo -e "\033[36m  ____) | | |_) | | (_| | | | | | | | \033[31m| | \ \  | |  | |"
echo -e "\033[36m |_____/  | .__/   \__,_| |_| |_| |_| \033[31m|_|  \_\ |_|  |_|"
echo -e "\033[36m          | |                                                  "
echo -e "\033[36m          |_|                                                  "
echo -e "\033[0m"

read -p "Please input search string: " searchs
echo -e "\033[0m"
echo -e "\033[35m"
echo 'Searching for' $searchs;
echo -e "\033[36m"

find /var/lib/spam-admin/Maildir/cur -type f -exec grep -Rl $searchs {} \; > /var/log/spamrmscan.log

cat /var/log/spamrmscan.log | xargs rm -f

echo -e "\033[32mDone!\033[0m"
