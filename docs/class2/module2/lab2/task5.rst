DNS Servers
################################

Create a pool for the Internal DNS servers.

Navigate to: **DNS  ››  Delivery : Load Balancing : Pools : Pool Listt**

.. image:: /_static/class2/router01_create_virtual_flyout.png

https://router01.branch01.example.com/tmui/Control/jspmap/tmui/dns/pool/list.jsp

Create a DNS pool according to the tables below:

.. csv-table::
   :header: "Field", "Value"
   :widths: 15, 15

   "Name", "branch01_dns_pool"
   "Destination Address", "10.1.70.200"
   "Service Port", "DNS 53"
   "VLAN and Tunnel Traffic -> Enabled on..", "branch01_vlan"
   "Protocol", "UDP"
   "Protocol Profile (Client)", "example.com_udp-dns_profile"
   "DNS Profile", "example.com_dns_profile"
   "Default Pool", "branch01_dns_pool"

.. image:: /_static/class2/router01_create_virtual_udp_properties.png

.. admonition:: TMSH

   tmsh create ltm pool branch01_dns_pool members add { dc01.example.com_node:53 }

