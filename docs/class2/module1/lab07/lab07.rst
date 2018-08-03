API
=====================

The BIG-IP DNS has many options for programmability, this includes Ansible, RESTui, REST, Puppet and Chef to name a few. In this task, our example company has an additional service for FTP that requires the necessary BIG-IP DNS configuration. We will perform all configuration on the BIG-IP DNS via Postman which uses REST to perform confguration changes.

.. toctree::
   :hidden:
   :maxdepth: 2
   :glob:

|rest_link|

.. |rest_link| raw:: html

   <a href="https://devcentral.f5.com/d/icontrolr-rest-api-user-guide-version-1300-241" target="_blank">More information on REST on BIG-IP</a>

|site1-settings_link|

.. |site1-settings_link| raw:: html

   On gtm1.site<b>1</b> navigate to: <a href="https://gtm1.site1.example.com/tmui/Control/jspmap/tmui/dns/settings/gslb/properties_general.jsp" target="_blank">DNS  ››  Settings : GSLB : General</a>

.. image:: /_static/class1/gtm_global_settings.png
   :align: left

Configure the global settings for GSLB according to the following table:

.. csv-table::
   :header: "Field", "Value"
   :widths: 15, 15

   "Synchronize", "checked"
   "Group Name", "EXAMPLE_group"
   "Synchronize DNS Zone Files", "checked"

The above work may alternatively be completed using the command line. Using Putty log into gtm1.site1 and issue the following command.

.. admonition:: TMSH

   tmsh modify gtm global-settings general synchronization yes synchronization-group-name EXAMPLE_group synchronize-zone-files yes
