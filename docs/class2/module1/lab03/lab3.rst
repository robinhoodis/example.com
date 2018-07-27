Data Centers
############################################

.. toctree::
   :maxdepth: 1
   :hidden:
   :glob:

   task*

Datacenters are logical groupings of devices that share a gateway.

.. note::   The tasks in this section are to be only completed on gtm1.site1

|site1-datacenter_link|

.. |site1-datacenter_link| raw:: html

   On gtm1.site<b>1</b> navigate to: <a href="https://gtm1.site1.example.com/tmui/Control/jspmap/tmui/globallb/data_center/create.jsp" target="_blank">DNS > GSLB : Data Centers : Data Center List: Create</a>

.. image:: /_static/class1/create_datacenters_flyout.png
   :align: left

Create two data centers according to the table below:

.. csv-table::
   :header: "Field", "Value"
   :widths: 15, 15

   "Name", "site1_datacenter"
   "Name", "site2_datacenter"

.. image:: /_static/class1/create_datacenters.png
   :align: left

TMSH command for only site1.gtm1:

.. admonition:: TMSH

   tmsh create gtm datacenter site1_datacenter

.. admonition:: TMSH

   tmsh create gtm datacenter site2_datacenter


