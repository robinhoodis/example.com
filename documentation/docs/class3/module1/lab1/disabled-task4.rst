LTM - SELFIP's
=====================

Create an IP address on each WAF instance

.. note::  **It is required to complete the following task on bigip1.site1 bigip2.site1 bigip1.site2 and bigip2.site2**

Navigate to: **Network  ››  Self IPs**

#. bigip1.site1

   Create a new selfip on bigip1.site1 according to the following table.

   .. csv-table::
      :header: "Setting", "Value"
      :widths: 15, 15

      "Name", "site1_waf_selfip"
      "IP Address", "10.1.50.2"
      "Netmask", "255.255.255.0"
      "VLAN/Tunnel", "site1_waf_vlan"

   https://bigip1.site1.example.com/tmui/Control/jspmap/tmui/locallb/network/self_ip/create.jsp

   TMSH command for **bigip1.site1**:

   .. admonition:: TMSH

      tmsh create net self site1_waf_selfip { address 10.1.50.2/24 vlan site1_waf_vlan }

#. bigip2.site1

   Create a new selfip on **bigip2.site1** according to the following table.

   .. csv-table::
      :header: "Setting", "Value"
      :widths: 15, 15

      "Name", "site1_waf_selfip"
      "IP Address", "10.1.50.3"
      "Netmask", "255.255.255.0"
      "VLAN/Tunnel", "site1_waf_vlan"

   https://bigip2.site1.example.com/tmui/Control/jspmap/tmui/locallb/network/self_ip/create.jsp

   TMSH command for **bigip2.site1**:

   .. admonition:: TMSH

      tmsh create net self site1_waf_selfip { address 10.1.50.3/24 vlan site1_waf_vlan }

   Create a new **floating** selfip on **bigip2.site1** according to the following table.

   .. csv-table::
      :header: "Setting", "Value"
      :widths: 15, 15

      "Name", "site1_waf_floating_selfip"
      "IP Address", "10.1.50.1"
      "Netmask", "255.255.255.0"
      "VLAN/Tunnel", "site1_waf_vlan"
      "Traffic Group", "traffic-group-1 (floating)"

   https://bigip2.site1.example.com/tmui/Control/jspmap/tmui/locallb/network/self_ip/create.jsp

   TMSH command for **bigip2.site1**:

   .. admonition:: TMSH

      tmsh create net self site1_waf_floating_selfip { address 10.1.50.1/24 vlan site1_waf_vlan traffic-group traffic-group-1 }

#. bigip1.site2

   Create a new selfip on **bigip1.site2** according to the following table.

   .. csv-table::
      :header: "Setting", "Value"
      :widths: 15, 15

      "Name", "site2_waf_selfip"
      "IP Address", "10.1.60.2"
      "Netmask", "255.255.255.0"
      "VLAN/Tunnel", "site2_waf_vlan"

   https://bigip1.site2.example.com/tmui/Control/jspmap/tmui/locallb/network/self_ip/create.jsp

   .. admonition:: TMSH

      tmsh create net self site2_waf_selfip { address 10.1.60.2/24 vlan site2_waf_vlan }

#. bigip2.site2

   Create a new selfip on **bigip2.site2** according to the following table.

   .. csv-table::
      :header: "Setting", "Value"
      :widths: 15, 15

      "Name", "site2_waf_selfip"
      "IP Address", "10.1.60.3"
      "Netmask", "255.255.255.0"
      "VLAN/Tunnel", "site2_waf_vlan"

   https://bigip2.site2.example.com/tmui/Control/jspmap/tmui/locallb/network/self_ip/create.jsp

   .. admonition:: TMSH

      tmsh create net self site2_waf_selfip { address 10.1.60.3/24 vlan site2_waf_vlan }

   Create a new **floating** selfip on **bigip2.site2** according to the following table.

   .. csv-table::
      :header: "Setting", "Value"
      :widths: 15, 15

      "Name", "site1_waf_floating_selfip"
      "IP Address", "10.1.60.1"
      "Netmask", "255.255.255.0"
      "VLAN/Tunnel", "site2_waf_vlan"
      "Traffic Group", "traffic-group-1 (floating)"

   https://bigip2.site1.example.com/tmui/Control/jspmap/tmui/locallb/network/self_ip/create.jsp

   TMSH command for **bigip2.site2**:

   .. admonition:: TMSH

      tmsh create net self site2_waf_floating_selfip { address 10.1.60.1/24 vlan site2_waf_vlan traffic-group traffic-group-1 }

