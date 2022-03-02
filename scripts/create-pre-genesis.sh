#!/bin/bash

NETWORK=game-1
DAEMON=nibirud
HOME_DIR=~/.nibiru
CONFIG=~/.nibiru/config
TOKEN_DENOM=ugame
GENESIS=$HOME_DIR/config/genesis.json

rm -rf $HOME_DIR

$DAEMON init $NETWORK --chain-id $NETWORK

sed -i "s/\"stake\"/\"$TOKEN_DENOM\"/g" $GENESIS
sed -i -e 's/"signed_blocks_window": "100"/"signed_blocks_window": "10000"/' $GENESIS
sed -i -e 's/"min_signed_per_window": "0.500000000000000000"/"min_signed_per_window": "0.050000000000000000"/' $GENESIS
sed -i -e 's/"slash_fraction_downtime": "0.010000000000000000"/"slash_fraction_downtime": "0.000100000000000000"/' $GENESIS
sed -i -e 's/"voting_period": "172800s"/"voting_period": "1209600s"/' $GENESIS
sed -i -e 's/"max_deposit_period": "172800s"/"max_deposit_period": "1209600s"/' $GENESIS
sed -i -e 's/"inflation": "0.130000000000000000"/"inflation": "0.300000000000000000"/' $GENESIS
sed -i -e 's/"inflation_max": "0.200000000000000000"/"inflation_max": "0.300000000000000000"/' $GENESIS
sed -i -e 's/"inflation_min": "0.070000000000000000"/"inflation_min": "0.300000000000000000"/' $GENESIS
sed -i -e 's/"send_enabled": true/"send_enabled": false/' $GENESIS
sed -i -e 's/"receive_enabled": true/"receive_enabled": false/' $GENESIS

jq '.app_state.gov.deposit_params.min_deposit[0].amount="1000000000"' $GENESIS > tmp.json && mv tmp.json $GENESIS
jq '.genesis_time="2022-03-16T11:00:00Z"' $GENESIS > tmp.json && mv tmp.json $GENESIS

rm -rf mainnet
git clone https://github.com/cosmos-gaminghub/mainnet.git

echo 'creating game.json...'
cd mainnet/accounts && jq -s add $(ls |grep .json) > ../../game.json
cd ../../

echo 'importing snaphot.json and game.json...'
gzip -d snapshot.json.gz
nibirud import-genesis-accounts-from-snapshot ./snapshot.json ./game.json

cp $GENESIS ./pre-genesis.json

echo 'created pre-genesis.json!'
