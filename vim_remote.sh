#########################################################################
# File Name: vim_remote.sh
# Created Time: Tue Dec 28 18:00:01 2021
#########################################################################
#!/bin/bash


user="dongshixu"
remote_server=$1
file_path=$2

vim scp://$user@$remote_server/$file_path
