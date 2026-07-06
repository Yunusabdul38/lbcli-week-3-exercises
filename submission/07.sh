# What is the total output value of this partially signed transaction in satoshis
transaction=cHNidP8BAHsCAAAAAhuVpgVRdOxkuC7wW2rvw4800OVxl+QCgezYKHtCYN7GAQAAAAD/////HPTH9wFgyf4iQ2xw4DIDP8t9IjCePWDjhqgs8fXvSIcAAAAAAP////8BigIAAAAAAAAWABTHctb5VULhHvEejvx8emmDCtOKBQAAAAAAAAAA
vout_value=$(bitcoin-cli -regtest decodepsbt $transaction | jq -r ".tx.vout[0].value * 100000000 | round")

echo $vout_value 