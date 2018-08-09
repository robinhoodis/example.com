Authenticate
=====================

From the Jumpbox, open up Postman (It should have loaded automatically) and navigate to the "API" section under the Collections on the left. In order to use the iControlREST API, we must first authenticate with the BIG-IP. 

#. Click on "Authenticate and Obtain Token from gtm1.site1". 

   .. image:: /_static/API1-a.png
      :align: left

#. Click on the "Send" button in the top right. 

   .. image:: /_static/API1-b.png
      :align: left

#. Open the respone body and observe the received token. The token value is dynamic and your result will not be the same as illustrated below. The token received will be used for all subsequent authenticated actions with the BIG-IP DNS.

   .. image:: /_static/API1-c.png
      :align: left
