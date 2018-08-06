API - Part 3
=====================

Now lets test the new service we created. The related configuration on the BIG-IP LTM and on the DNS server are already complete for you. Open up FileZilla from your client workstation and connect to the DNS service gslb2.example.com. This is a CNAME for FTP.example.com

.. toctree::
   :hidden:
   :maxdepth: 2
   :glob:

.. note::  **Use FTP credentials admin/admin**

|site1-settings_link|

.. |site1-settings_link| raw:: html

   On gtm1.site<b>1</b> navigate to: <a href="https://gtm1.site1.example.com/tmui/Control/jspmap/tmui/dns/settings/gslb/properties_general.jsp" target="_blank">DNS  ››  Settings : GSLB : General</a>

.. image:: /_static/class1/gtm_global_settings.png
   :align: left

You've just successfully created a highly available service on BIG-IP DNS all through a few very simple API commands.