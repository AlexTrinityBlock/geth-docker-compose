DIR="./geth"

if [ ! -d "$DIR" ]; then
  geth init genesis.json
fi

geth \
--http \
--http.api=eth,net,web3,engine,admin \
--http.addr=0.0.0.0 \
--http.vhosts=* \
--http.corsdomain=* \
--ws \
--ws.origins=* \
--ws.addr=0.0.0.0 \
--ws.api=eth,net,web3 \
--graphql \
--graphql.corsdomain=* \
--graphql.vhosts=* \
--authrpc.addr=0.0.0.0 \
--authrpc.vhosts=* \
--authrpc.jwtsecret=/root/.ethereum/jwt.hex \
--authrpc.port=8551 \
--txlookuplimit=0 \
--networkid 1234 \
--allow-insecure-unlock \
--nousb \
--unlock 0x240f99f0f6a315fa5ea6d51078c6336f9f3f985f \
--mine \
--miner.etherbase=0x240f99f0f6a315fa5ea6d51078c6336f9f3f985f \
--netrestrict 10.18.173.0/24 \
--nat=extip:10.18.173.78 \
--nodiscover \
--password "./password.txt" \
--verbosity 4
