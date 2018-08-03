API - Part 2
=====================

Now that we have a token, we will make use of it to create new BIG-IP DNS configurations. Given that we are creating a new FTP service, we will create a new pool, virtual servers and a Wide-IP.

.. toctree::
   :hidden:
   :maxdepth: 2
   :glob:

In Postman, inside of the "API" collection, navigate to each request and click Send.

|site1-settings_link|

.. |site1-settings_link| raw:: html

   On gtm1.site<b>1</b> navigate to: <a href="https://gtm1.site1.example.com/tmui/Control/jspmap/tmui/dns/settings/gslb/properties_general.jsp" target="_blank">DNS  ››  Settings : GSLB : General</a>

.. image:: /_static/class1/gtm_global_settings.png
   :align: left

Once complete, login to gtm1.site1 via Web interface and look for the new configuration elements.

You've just successfully created a highly available service on BIG-IP DNS! The related configuration on the BIG-IP LTM as well as on the DNS servers have already been completed for you.