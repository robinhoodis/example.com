Failure Condition
=====================

.. toctree::
   :maxdepth: 1
   :hidden:
   :glob:

   task*

Having followed the excercises up to this point will have resulted in the creation of an active/standby disaster recovery topology. A consistent response is received when querying www.example.com. From the command prompt in the Jumpbox type "dig www.example.com". Repeat dig commands and observe the TTL counting down.

.. image:: /_static/class1/dc01_new_delegation_create_cname_results.png
   :align: left

#. Introduce a network problem for the SITE1 ADC

   Log into Active ADC device in SITE1 and disable all interfaces.

   https://router01.branch01.example.com/tmui/Control/jspmap/tmui/locallb/network/interface/list.jsp

   .. image:: /_static/class1/router_disable_isp1_site_interface.png

   TMSH command to run on bigip1.site1 and bigip2.site1 to simulate an ISP failure   

   .. admonition:: TMSH

      tmsh modify interface all disabled

#. View the effect

   Log into gtm1.site1 and observe the status of "Link" objects:

   .. image:: /_static/class1/dns_gslb1_site2_links.png

   https://gtm1.site1.example.com/tmui/Control/jspmap/xsl/gtm_link/list

   .. admonition:: TMSH

      tmsh show gtm link

#. Set the site1 interfaces to enabled

   Log into bigip1.site1 and bigip2.site1 nad enable all interfaces

   https://router01.branch01.example.com/tmui/Control/jspmap/tmui/locallb/network/interface/list.jsp

   .. image:: /_static/class1/router_enable_isp1_site_interface.png

   .. admonition:: TMSH

      tmsh modify interface all enabled


