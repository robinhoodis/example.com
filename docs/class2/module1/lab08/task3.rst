API - Part 4
=====================

You have seen how easy is to create new configurations on the BIG-IP DNS via iControlREST using Postman. In this step we will create a brand new configuration element that is relevant to our disaster recovery design; we will convert site 2 to a standby site.

We can make site 2 a standby site by modifying the load balancing method of each of its pools from Preferred to Global Availability. We will then demonstrate the new behavior using dig.

Open Postman once again and click on Find Pool Syntax and then Send the POST command. By running this command, you will see how easy it is to find the REST command we require by analyzing the body of the response.

  .. image:: /_static/API4-a.png
     :align: left

Proceed to the next command and once again analyze the body of the response.

  .. image:: /_static/API4-b.png
     :align: left

And finally, proceed to the next and analyze the body of the response.

  .. image:: /_static/API4-c.png
   :align: left

We now have the full paths that we need to issue our REST commands. Please run the last two commands which will alter the GSLB load balancing method.

  .. image:: /_static/API4-d.png
   :align: left