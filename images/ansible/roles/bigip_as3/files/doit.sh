#!/bin/bash
#

FN=f5-appsvcs-3.1.0-4.noarch.rpm
CREDS=admin:admin
IP=10.1.10.22
DATA="{\"operation\":\"INSTALL\",\"packageFilePath\":\"/var/config/rest/downloads/$FN\"}"


LEN=$(wc -c $FN | cut -f 1 -d ' ')

curl -kvu $CREDS https://$IP/mgmt/shared/file-transfer/uploads/$FN -H 'Content-Type: application/octet-stream' -H "Content-Range: 0-$((LEN - 1))/$LEN" -H "Content-Length: $LEN" -H 'Connection: keep-alive' --data-binary @$FN


curl -kvu $CREDS "https://$IP/mgmt/shared/iapp/package-management-tasks" -H "Origin: https://$IP" -H 'Content-Type: application/json;charset=UTF-8' --data $DATA
