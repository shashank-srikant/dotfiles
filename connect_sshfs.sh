# Install sshfs first

pgrep -lf sshfs | xargs echo;
kill $(pgrep -lf sshfs);

# Create empty folders folder1 and folder2 before mounting
sudo umount -f /local/drive/folder1/;
sudo umount -f /local/drive/folder2/;

sshfs -o IdentityFile=~/.ssh/private-key.pem -o nonempty ubuntu@instance.IP.address:/home/ubuntu/ /local/drive/folder1/
sshfs -o nonempty -o ssh_command='ssh -J username@jump.host.server.IP' username@assigned.instance.IP.address:/home/ /local/drive/folder2/
