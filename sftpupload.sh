#!/usr/bin/expect
                            ######### Written by N0z ##########
# This script is part of N0z's linux maintanance repo
# For this to work, you need to have expect installed on your system.
#Remember to escape any special characters in your password, as bash might interpret it differently, causing sign-in failure!
 
spawn sftp User@your_server_ip
expect "password:"
send   "<Enter your password here>"
expect "sftp>"
send   "cd /home/NetworkFiles/'Linux backups'\n"
expect "sftp>"
send   "put /Backup-*.tar.gz\n"
expect "sftp>"
send   "bye\n" 
