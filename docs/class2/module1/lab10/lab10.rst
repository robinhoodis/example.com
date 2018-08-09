Failure Condition
=====================

.. toctree::
   :maxdepth: 1
   :hidden:
   :glob:

   task*

Having followed the excercises up to this point will create an active/standby disaster recovery topology. A consistent response is received when querying www.example.com. From the command prompt in the Jumpbox type "dig ftp.example.com"

.. image:: /_static/class1/dc01_new_delegation_create_cname_results.png
   :align: left

#. Introduce a network problem in the ISP at site1

   Log into the router and disable all interfaces.

   https://router01.branch01.example.com/tmui/Control/jspmap/tmui/locallb/network/interface/list.jsp

   .. image:: /_static/class1/router_disable_isp1_site_interface.png

   TMSH command to run on the router01 to simulate an ISP failure   

   .. admonition:: TMSH

      tmsh modify interface all disabled

#. View the effect

   Log into gtm1.site2 and observe the status of "Link" objects:

   .. image:: /_static/class1/dns_gslb1_site2_links.png

   https://gtm1.site2.example.com/tmui/Control/jspmap/xsl/gtm_link/list

   .. admonition:: TMSH

      tmsh show gtm link

#. Set the site1 isp link back up

   Log into the router and enable the interface 1.6 connecting ISP1 to site1

   https://router01.branch01.example.com/tmui/Control/jspmap/tmui/locallb/network/interface/list.jsp

   .. image:: /_static/class1/router_enable_isp1_site_interface.png

   .. admonition:: TMSH

      tmsh modify interface 1.6 enabled

   .. note:: Even though you re-enabled the primary site1, a persistence record from the previous lab is still in place.

|links_link|

.. |links_link| raw:: html

   <a href="https://support.f5.com/csp/article/K13827" target="_blank">More information on DNS Delegation</a>

.. image:: /_static/class1/gtm_global_settings.png
   :align: left

