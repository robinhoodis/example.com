ASM - SELFIP's
=====================

Create an IP address on each WAF instance

.. note::  **It is required to complete the following task on asm1.site1 asm2.site1 asm1.site2 and asm2.site2**

Navigate to: **Network  ››  Self IPs**

#. asm1.site1

   Create a new selfip on asm1.site1 according to the following table.

   .. csv-table::
      :header: "Setting", "Value"
      :widths: 15, 15

      "Name", "site1_waf_selfip"
      "IP Address", "10.1.50.14"
      "Netmask", "255.255.255.0"
      "VLAN/Tunnel", "site1_waf_vlan"

   https://asm1.site1.example.com/tmui/Control/jspmap/tmui/locallb/network/self_ip/create.jsp

   TMSH command for **asm1.site1**:

   .. admonition:: TMSH

      tmsh create net self site1_waf_selfip { address 10.1.50.14/24 vlan site1_waf_vlan }

#. asm2.site1

   Create a new selfip on **asm2.site1** according to the following table.

   .. csv-table::
      :header: "Setting", "Value"
      :widths: 15, 15

      "Name", "site1_waf_selfip"
      "IP Address", "10.1.50.15"
      "Netmask", "255.255.255.0"
      "VLAN/Tunnel", "site1_waf_vlan"

   https://asm2.site1.example.com/tmui/Control/jspmap/tmui/locallb/network/self_ip/create.jsp

   TMSH command for **asm2.site1**:

   .. admonition:: TMSH

      tmsh create net self site1_waf_selfip { address 10.1.50.15/24 vlan site1_waf_vlan }

#. asm1.site2

   Create a new selfip on **asm1.site2** according to the following table.

   .. csv-table::
      :header: "Setting", "Value"
      :widths: 15, 15

      "Name", "site2_waf_selfip"
      "IP Address", "10.1.60.24"
      "Netmask", "255.255.255.0"
      "VLAN/Tunnel", "site2_waf_vlan"

   https://asm1.site2.example.com/tmui/Control/jspmap/tmui/locallb/network/self_ip/create.jsp

   .. admonition:: TMSH

      tmsh create net self site2_waf_selfip { address 10.1.60.24/24 vlan site2_waf_vlan }

#. asm2.site2

   Create a new selfip on **asm2.site2** according to the following table.

   .. csv-table::
      :header: "Setting", "Value"
      :widths: 15, 15

      "Name", "site2_waf_selfip"
      "IP Address", "10.1.60.25"
      "Netmask", "255.255.255.0"
      "VLAN/Tunnel", "site2_waf_vlan"

   https://asm2.site2.example.com/tmui/Control/jspmap/tmui/locallb/network/self_ip/create.jsp

   .. admonition:: TMSH

      tmsh create net self site2_waf_selfip { address 10.1.60.25/24 vlan site2_waf_vlan }

