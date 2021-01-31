#!/bin/bash
#################################
## Begin of user-editable part ##
#################################

SERVER=us2.ethermine.org:5555
WALLET="0x39a5E2e6da689Be87D6E4f38BD144942E90e85a7"
WORKER_NAME=rig1 

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

/root/t-rex -a ethash -o stratum+ssl://$SERVER -u $WALLET -w $WORKER_NAME -d 1

