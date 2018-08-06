BIG-IP DNS in Action Pt.2
=====================

#. Introduce a network problem in the ISP at site1

   Log into the router and disable interface 1.6 connecting ISP1 to site1

   https://router01.branch01.example.com/tmui/Control/jspmap/tmui/locallb/network/interface/list.jsp

   .. image:: /_static/class1/router_disable_isp1_site_interface.png

   TMSH command to run on the router01 to simulate an ISP failure   

   .. admonition:: TMSH

      tmsh modify interface 1.6 disabled

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

Note: Even though you re-enabled the primary site1, a persistence record from the previous lab is still in place.

.. toctree::
   :hidden:
   :maxdepth: 2
   :glob:

|links_link|

.. |links_link| raw:: html

   <a href="https://support.f5.com/csp/article/K13827" target="_blank">More information on DNS Delegation</a>

.. image:: /_static/class1/gtm_global_settings.png
   :align: left

