API
=====================

.. toctree::
   :hidden:
   :maxdepth: 2
   :glob:

   task*

The BIG-IP DNS has many APIs (Application Programmable Interfaces) including TMSH, WebUI, iControlREST, iControlLX and SNMP to name a few. In this task, our example company has deployed an additional service for FTP that also requires geographic high availability. We will perform all configuration on the BIG-IP DNS via Postman in this section, which uses iControlREST for interaction with the BIG-IP. 

|rest_link|

.. |rest_link| raw:: html

   <a href="https://devcentral.f5.com/d/icontrolr-rest-api-user-guide-version-1300-241" target="_blank">More information on the BIG-IP REST interface</a>

.. note::  **If you recall from the previous exercise, we have already enabled Config Sync on BIG-IP DNS. Due to this, all of our iControlREST configuration changes will be performed only on gtm1.site1 as they will become automatically synchronized with gtm1.site2**

