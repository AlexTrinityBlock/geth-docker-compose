cd  /mnt/sda1/geth-docker
docker compose exec geth geth attach --exec admin.nodeInfo.enode |tee /mnt/sda1/geth-docker/nfs/enode
