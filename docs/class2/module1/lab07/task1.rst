API - Part 2
=====================

Now that we have the authentication token, we will make use of it to create new BIG-IP DNS configurations. Given that we are creating a new FTP service, we need to create a new pool and a Wide-IP.

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

Once complete, login to gtm1.site1 via Web interface and look for the new configuration elements to confirm they were created. Do the same on gtm1.site2.