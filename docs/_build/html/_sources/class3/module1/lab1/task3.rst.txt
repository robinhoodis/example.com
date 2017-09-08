Default Route
==========================

Create a default gateway on each WAF

Navigate to: **Network  ››  Routes**

Create a default gateway according to the table below.

.. csv-table::
   :header: "Setting", "Value"
   :widths: 15, 15

   "Name", "default_route"
   "Destination", "0.0.0.0"
   "Netmask", "0.0.0.0"
   "Gateway Address", "10.1.50.100"

https://asm1.site1.example.com/tmui/Control/jspmap/tmui/locallb/network/route/create.jsp

TMSH command for asm1.site1 and asm2.site1:

.. admonition:: TMSH

    tmsh create net route default_route { gw 10.1.50.100 mtu 1500 network default }

Create a default gateway according to the table below.

.. csv-table::
   :header: "Setting", "Value"
   :widths: 15, 15

   "Name", "default_route"
   "Destination", "0.0.0.0"
   "Netmask", "0.0.0.0"
   "Gateway Address", "10.1.60.100"

https://asm2.site1.example.com/tmui/Control/jspmap/tmui/locallb/network/route/create.jsp

TMSH command for asm1.site2 and asm2.site2:

.. admonition:: TMSH

    tmsh create net route default_route { gw 10.1.60.100 mtu 1500 network default }
