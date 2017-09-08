Pools
===============

Create s pool with a single member

Navigate to: **Local Traffic  ››  Pools : Pool List**

Create a pool on asm1.site1 and asm2.site1 according to the following table.

.. csv-table::
   :header: "Setting", "Value"
   :widths: 15, 15

   "Name", "site1_adc_https_pool"
   "Health Monitors", "shared/example.com_https_monitor"
   "New Members", "Node Name: site1_adc_https_node"
   "New Members", "Address: 10.1.50.100"
   "Service Port", "443"

https://asm1.site1.example.com/tmui/Control/jspmap/tmui/locallb/pool/create.jsp

https://asm2.site1.example.com/tmui/Control/jspmap/tmui/locallb/pool/create.jsp

TMSH command for asm1.site1 and asm2.site1

.. admonition:: TMSH

   tmsh create ltm pool site1_adc_https_pool monitor shared/example.com_https_monitor members add { site1_adc_https_node:443 { address 10.1.50.100 } }
