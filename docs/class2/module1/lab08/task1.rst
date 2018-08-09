Authenticate
=====================

From the Jumpbox, open up Postman (It should have loaded automatically) and navigate to the "API" section under the Collections on the left. In order to use the iControlREST API, we must first authenticate with the BIG-IP. 

.. note::  **Config Sync has been enabled in previous lab tasks. Due to this, all of the iControlREST configuration changes will be performed only on gtm1.site1 as they wi
ll become automatically synchronized to gtm1.site2**
<<<<<<< HEAD

Click on "Authenticate and Obtain Token from gtm1.site1". 
=======
>>>>>>> f8342a2d2db9b4c62911f19cbb040204b003d1fb

#. Click on "Authenticate and Obtain Token from gtm1.site1". 

   .. image:: /_static/API1-a.png
      :align: left

#. Click on the "Send" button in the top right. 

   .. image:: /_static/API1-b.png
      :align: left

#. Open the respone body and observe the received token. The token value is dynamic and your result will not be the same as illustrated below. The token received will be used for all subsequent authenticated actions with the BIG-IP DNS.

   .. image:: /_static/API1-c.png
      :align: left
