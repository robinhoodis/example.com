tcpdump
=====================================================

Using Putty log into the Active bigip in site1

execute the following command

.. admonition:: TMSH

   tcpdump -nni 0.0 dst 203.0.113.9 and port 443

Open a CMD prompt and run the following command

.. admonition:: TMSH

   curl -k https://203.0.113.9/info.php

Observe the information captured in the tcpdump

.. toctree::
   :hidden:
   :glob:

