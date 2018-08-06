API - Part 3
=====================

Now lets test the new service we created. The related configuration on the BIG-IP LTM and on the DNS server are already complete for you. Open up FileZilla from your client workstation and connect to the DNS service gslb2.example.com. This is a CNAME for FTP.example.com

.. toctree::
   :hidden:
   :maxdepth: 2
   :glob:

.. note::  **Use FTP credentials admin/admin**

.. image:: /_static/API3.png
   :align: left

You've just successfully created a highly available service on BIG-IP DNS all through a few very simple API commands.