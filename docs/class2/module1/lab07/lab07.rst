API - Part 1
=====================

The BIG-IP DNS has many APIs (Application Programmable Interfaces) including TMSH, WebUI, iControlREST and SNMP to name a few. In this task, our example company has deployed an additional service for FTP that requires geographic high availability. We will perform all configuration on the BIG-IP DNS via Postman in this section, which uses iControlREST for interaction with the BIG-IP.

.. toctree::
   :hidden:
   :maxdepth: 2
   :glob:

|rest_link|

.. |rest_link| raw:: html

   <a href="https://devcentral.f5.com/d/icontrolr-rest-api-user-guide-version-1300-241" target="_blank">More information on the BIG-IP REST interface</a>

.. note::  **If you recall from the previous exercises, we have already enabled Config Sync. Due to this, all of our iControlREST configuration changes will be performed only on gtm1.site1 as they will become automatically synchronized with gtm1.site2**

From your RDP session, open up Postman (It should have booted automatically) and navigate to the "API" section under the Collections on the left. In order to use the iControlREST API, we must first authenticate with the BIG-IP. 

Click on "Authenticate and Obtain Token from gtm1.site1" and click on the "Send" button in the top right. Observe the output to confirm that a token was sucessfully received, indicating that the authentication was successful. This token will be used for all actions going forward.

|site1-settings_link|

.. |site1-settings_link| raw:: html

   On gtm1.site<b>1</b> navigate to: <a href="https://gtm1.site1.example.com/tmui/Control/jspmap/tmui/dns/settings/gslb/properties_general.jsp" target="_blank">DNS  ››  Settings : GSLB : General</a>

.. image:: /_static/class1/gtm_global_settings.png
   :align: left