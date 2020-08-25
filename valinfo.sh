#!/bin/sh
VALIDATOR=`curl -s http://127.0.0.1:3030/status | jq .validator_account_id | tr -d '"'`
VALINFO=`curl -s -d '{"jsonrpc": "2.0", "method": "validators", "id": "dontcare", "params": [null]}' -H 'Content-Type: application/json' https://rpc.betanet.near.org | jq -r --arg VALIDATOR "$VALIDATOR" '.result.current_validators[] | select(.account_id | contains ($VALIDATOR))'`
echo $VALINFO
exit 0
