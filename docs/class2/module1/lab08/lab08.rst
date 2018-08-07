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

From your RDP session to client01, open up Postman (It should have loaded automatically) and navigate to the "API" section under the Collections on the left. In order to use the iControlREST API, we must first authenticate with the BIG-IP. 

Click on "Authenticate and Obtain Token from gtm1.site1". 

.. image:: /_static/API1-a.png
   :align: left

Click on the "Send" button in the top right. 

.. image:: /_static/API1-b.png
   :align: left

Open the respone body and look for the received token. Please note that this token value is dynamic and your result will not be the same as that depicted. The token we received will be used for all authenticated actions with the BIG-IP DNS going forward.

.. image:: /_static/API1-c.png
   :align: left