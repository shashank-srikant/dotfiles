pgrep -lf sshfs | xargs echo;
kill $(pgrep -lf sshfs);
sudo umount -f /home/local/mnt/folder/;
sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 -ononempty -o allow_other -oIdentityFile=/home/pth/to/private/key username@1.1.1.1:/home/ubuntu /home/local/mnt/folder/

