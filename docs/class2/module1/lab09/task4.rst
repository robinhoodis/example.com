Good Title
=====================

Create a brand new configuration element that is relevant to a disaster recovery design, where site 2 is converted to a standby site.

In order to make site2 a standby site, modify the load balancing method of each of its pools from "Preferred" to "Global Availability". Demonstrate the behavior using the dig command on the Jumpbox.

Open Postman and select the "Find Pool Syntax" and then click "Send" in order to "POST" the command command. Find the REST command by analyzing the body of the response.

  .. image:: /_static/API4-a.png
     :align: left


  .. image:: /_static/API4-b.png
     :align: left

Click and send the next POST command and once again analyze the body of the response.

  .. image:: /_static/API4-c.png
   :align: left

  .. image:: /_static/API4-d.png
   :align: left

Click and send the next POST command and once again analyze the body of the response.

  .. image:: /_static/API4-e.png
   :align: left

  .. image:: /_static/API4-f.png
   :align: left

We now have the full paths that we need to issue our REST commands. Please send the last two PATCH commands which will alter the GSLB load balancing method. Take a look at the URL defined in the command, this is the URL we found in the previous few steps.

  .. image:: /_static/API4-g.png
   :align: left

  .. image:: /_static/API4-h.png
   :align: left
