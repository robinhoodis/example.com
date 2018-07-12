#!/bin/bash
#

FN=InstallPolicy-0.1.3-0003.noarch.rpm
CREDS=admin:admin
IP=10.1.10.13
DATA="{\"operation\":\"INSTALL\",\"packageFilePath\":\"/var/config/rest/downloads/$FN\"}"


LEN=$(wc -c $FN | cut -f 1 -d ' ')

curl -kvu $CREDS https://$IP/mgmt/shared/file-transfer/uploads/$FN -H 'Content-Type: application/octet-stream' -H "Content-Range: 0-$((LEN - 1))/$LEN" -H "Content-Length: $LEN" -H 'Connection: keep-alive' --data-binary @$FN


curl -kvu $CREDS "https://$IP/mgmt/shared/iapp/package-management-tasks" -H "Origin: https://$IP" -H 'Content-Type: application/json;charset=UTF-8' --data $DATA


curl --insecure -d '{ "policyvcsname": "https://raw.githubusercontent.com/f5devcentral/f5-asm-policy-template-v13/master/F5-ASM-GIT-Policy.xml", "policyname": "Declarative_API_Policy" }' -H "Content-Type: application/json" -H "Authorization: Basic YWRtaW46YWRtaW4=" -X POST https://10.1.10.13/mgmt/shared/workers/install_policy
