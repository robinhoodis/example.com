API - Part 4
=====================

You have seen how easy is to create new configurations on the BIG-IP DNS via iControlREST using Postman. In this step we will create a brand new configuration element that is relevant to our disaster recovery design; we will convert site 2 to a standby site.

We can make site 2 a standby site by modifying the load balancing method of each of its pools from Preferred to Global Availability. We will then demonstrate the new behavior using dig.

Open Postman once again and click on Find Pool Syntax and then Send the POST command. By running this command, you will see how easy it is to find the REST command we require by analyzing the body of the response.

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
