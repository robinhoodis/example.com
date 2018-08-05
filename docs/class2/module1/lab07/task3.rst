API - Part 4
=====================

You have seen how easy to is to create new configurations on the BIG-IP DNS via iControlREST using Postman. In this step we will create a brand new configuration element that is relevant to both of our Wide-IPs; a Link.

A link is a a BIG-IP DNS object that defines a connection to the Internet. Typically, a link would be equivalent to an upstream router (toward the Internet) from the perspective of your data center. The link address itself defines the router IP address on the network path to the Internet. The uplink address is the router IP address on the ISP side of the link. We will create a link at each data center which will be used to monitor our Internet reachability. For more information on Links please refer to the link below.

.. toctree::
   :hidden:
   :maxdepth: 2
   :glob:

|links_link|

.. |links_link| raw:: html

   <a href="https://support.f5.com/csp/article/K13827" target="_blank">More information on DNS Delegation</a>

.. image:: /_static/class1/gtm_global_settings.png
   :align: left

