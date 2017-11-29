ssldump
=====================================================

Using Putty log into the Active bigip in site1

execute the following command

.. admonition:: TMSH

   ssldump -A -d -k /config/ssl/ssl.key/default.key -n -isp1_vlan host 203.0.113.9 and port 443

Open a CMD prompt and run the following command

.. admonition:: TMSH

   curl -k https://203.0.113.9/info.php

Observe the information captured in the ssldump

For more information research https://devcentral.f5.com/articles/troubleshooting-tls-problems-with-ssldump

.. toctree::
   :hidden:
   :glob:

