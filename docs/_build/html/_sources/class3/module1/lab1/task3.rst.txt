Default Route
==========================

Create a default gateway on each WAF

Navigate to: **Network  ››  Routes**

.. image:: /_static/class3/waf_create_new_route_navigation.png

#. Create a default gateway according to the table below.

   .. note::  **It is required to complete the following task on both asm1.site1 asm2.site1**

   .. csv-table::
      :header: "Setting", "Value"
      :widths: 15, 15

      "Name", "default_route"
      "Destination", "0.0.0.0"
      "Netmask", "0.0.0.0"
      "Gateway Address", "10.1.50.1"

   .. image:: /_static/class3/waf_create_new_route_properties.png

   https://asm1.site1.example.com/tmui/Control/jspmap/tmui/locallb/network/route/create.jsp

   https://asm2.site1.example.com/tmui/Control/jspmap/tmui/locallb/network/route/create.jsp

   TMSH command for asm1.site1 and asm2.site1:

   .. admonition:: TMSH

       tmsh create net route default_route { gw 10.1.50.1 mtu 1500 network default }

#. Create a default gateway according to the table below.

   .. note::  **It is required to complete the following task on both asm1.site1 asm2.site1**

   .. csv-table::
      :header: "Setting", "Value"
      :widths: 15, 15

      "Name", "default_route"
      "Destination", "0.0.0.0"
      "Netmask", "0.0.0.0"
      "Gateway Address", "10.1.60.1"

   https://asm1.site2.example.com/tmui/Control/jspmap/tmui/locallb/network/route/create.jsp

   https://asm2.site2.example.com/tmui/Control/jspmap/tmui/locallb/network/route/create.jsp

   TMSH command for asm1.site2 and asm2.site2:

   .. admonition:: TMSH

       tmsh create net route default_route { gw 10.1.60.1 mtu 1500 network default }
