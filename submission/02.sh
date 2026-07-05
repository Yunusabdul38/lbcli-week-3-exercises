# Create a native segwit address and get the public key from the address.
SEGWIT_ADDRESS=$(bitcoin-cli -regtest -rpcwallet=builderswallet getnewaddress "" "bech32")
bitcoin-cli -regtest -rpcwallet=builderswallet  getaddressinfo $SEGWIT_ADDRESS | jq -r ".pubkey"