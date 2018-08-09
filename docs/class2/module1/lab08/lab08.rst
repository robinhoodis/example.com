Rest API
=====================

.. toctree::
   :hidden:
   :maxdepth: 2
   :glob:

   task*

F5 supports many APIs (Application Programmable Interfaces) including TMSH, WebUI, iControlREST, iControlLX and SNMP to name a few. In this task, the example company will deploy an additional service for FTP which requires geographic high availability. Postman will be used to execute configuration changes on the BIG-IP, which uses the iControlREST interface.

|rest_link|

.. |rest_link| raw:: html

   <a href="https://devcentral.f5.com/d/icontrolr-rest-api-user-guide-version-1300-241" target="_blank">More information on the BIG-IP REST interface</a>

.. note::  **Config Sync has been enabled in previous lab tasks. Due to this, all of the iControlREST configuration changes will be performed only on gtm1.site1 as they will become automatically synchronized with gtm1.site2**

