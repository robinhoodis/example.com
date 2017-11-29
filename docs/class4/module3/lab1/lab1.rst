Connections
=====================================================

.. toctree::
   :hidden:
   :glob:

Open a CMD prompt and run the following command

.. admonition:: TMSH

   telnet 203.0.113.9 80

Using Putty log into the Active bigip in site1

execute the following command

.. admonition:: TMSH

   tmsh show sys connection cs-server-addr 203.0.113.9 all-properties

