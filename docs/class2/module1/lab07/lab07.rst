Delegation
=================================

In this section we are going to perform delegation of part of the example.com domain to the BIG-IP DNS. Delegation is a means to 'delegate' or assign management of a portion of your DNS namespace to another entity, or in this case, another DNS server. When the DNS server receives a query for the delegated name space it will 'delegate' or forward them to BIG-IP DNS for proper handling.  For more information on delegation, please refer to the link below. 

|delegation_link|

.. |delegation_link| raw:: html

   <a href="https://support.f5.com/kb/en-us/products/big-ip_gtm/manuals/product/gtm-implementations-11-4-0/4.html" target="_blank">More information on DNS Delegation</a>


Login to the local DNS server (this should already be open) from the jumpbox, and open the DNS management UI:

.. image:: /_static/class1/dc01_dns_tools.png

.. toctree::
   :hidden:
   :maxdepth: 2
   :glob:

   task*
