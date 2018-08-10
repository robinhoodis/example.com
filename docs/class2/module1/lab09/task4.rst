Active/Standby
=====================

Create a brand new configuration element that is relevant to a disaster recovery design, where site 2 is converted to a standby site.

In order to make site2 a standby site, modify the load balancing method of each of its pools from "Preferred" to "Global Availability". Demonstrate the behavior using the dig command on the Jumpbox.

Open Postman and send the patch command 'Change LB Method WWW'.

  .. image:: /_static/API4-h.png
   :align: left

We now have the full paths that we need to issue our REST commands. Please send the last two PATCH commands which will alter the GSLB load balancing method. Take a look at the URL defined in the command, this is the URL we found in the previous few steps.


