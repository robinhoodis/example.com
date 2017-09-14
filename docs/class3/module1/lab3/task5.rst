Pools
===============

Create a pool with a single member

Navigate to: **Local Traffic  ››  Pools : Pool List**

https://asm1.site1.example.com/tmui/Control/jspmap/tmui/locallb/pool/create.jsp

.. image:: /_static/class3/waf_create_pool_navigation.png

#. Create a pool on asm1.site1 according to the following table.

   .. csv-table::
      :header: "Setting", "Value"
      :widths: 15, 15

      "Name", "shared/site1_adc_https_pool"
      "Health Monitors", "shared/example.com_https_monitor"
      "New Members", "Node Name: shared/site1_adc_https_node"
      "New Members", "Address: 10.1.50.100"
      "Service Port", "443"

   .. image:: /_static/class3/waf_create_pool_properties.png

   TMSH command for asm1.site1

   .. admonition:: TMSH

      tmsh create ltm pool shared/site1_adc_https_pool monitor shared/example.com_https_monitor members add { shared/site1_adc_https_node:443 { address 10.1.50.100 } }

#. Create a pool on asm1.site1 according to the following table.

   .. csv-table::
      :header: "Setting", "Value"
      :widths: 15, 15

      "Name", "shared/site2_adc_https_pool"
      "Health Monitors", "shared/example.com_https_monitor"
      "New Members", "Node Name: shared/site2_adc_https_node"
      "New Members", "Address: 10.1.60.100"
      "Service Port", "443"

   TMSH command for asm1.site1

   .. admonition:: TMSH

      tmsh create ltm pool shared/site2_adc_https_pool monitor shared/example.com_https_monitor members add { shared/site2_adc_https_node:443 { address 10.1.60.100 } }

