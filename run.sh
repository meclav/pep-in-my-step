IP=188.166.149.40
VM="root@$IP"
rsync -a "$(dirname ${BASH_SOURCE[0]})"/ $VM:/app/pep/
ssh $VM systemctl restart pep.service
