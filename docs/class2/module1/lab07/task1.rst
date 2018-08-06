API - Part 2
=====================

Now that we have the authentication token, we will make use of it to create new BIG-IP DNS configurations. Given that we are creating a new FTP service, we need to create a new pool and a Wide-IP.

.. toctree::
   :hidden:
   :maxdepth: 2
   :glob:

In Postman, inside of the "API" collection, navigate to each of the next 4 requests and click Send for each.

.. image:: /_static/AP2.png
   :align: left

Once complete, login to gtm1.site1 via Web interface and look for the new configuration elements to confirm that they were successfully created. Do the same on gtm1.site2.