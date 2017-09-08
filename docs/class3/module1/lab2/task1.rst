ConfigSync IP
======================

An HA vlan and IP address have already been provisioned on each WAF device.

Log into each WAF and configure the system to use the IP address on the "ha_vlan" as the "Local Address" for ConfigSync.

Navigate to: **Device Management  ››  Devices  ››  asm1.site1.example.com**

.. image:: /_static/class3/configsync_IP.png

**Repeat the above step for all WAF devices**

https://asm1.site1.example.com/tmui/Control/jspmap/tmui/devmgmt/device/configsync.jsp?name=%2FCommon%2Fasm1.site1.example.com

https://asm2.site1.example.com/tmui/Control/jspmap/tmui/devmgmt/device/configsync.jsp?name=%2FCommon%2Fasm2.site1.example.com

https://asm1.site2.example.com/tmui/Control/jspmap/tmui/devmgmt/device/configsync.jsp?name=%2FCommon%2Fasm1.site2.example.com

https://asm2.site2.example.com/tmui/Control/jspmap/tmui/devmgmt/device/configsync.jsp?name=%2FCommon%2Fasm2.site2.example.com


TMSH command for asm1.site1:

.. admonition:: TMSH

   tmsh modify cm device asm1.site1.example.com configsync-ip 10.1.69.14

TMSH command for asm2.site1:

.. admonition:: TMSH

   tmsh modify cm device asm2.site1.example.com configsync-ip 10.1.69.15

TMSH command for asm1.site2:

.. admonition:: TMSH

   tmsh modify cm device asm1.site2.example.com configsync-ip 10.1.69.24

TMSH command for asm2.site2:

.. admonition:: TMSH

   tmsh modify cm device asm2.site2.example.com configsync-ip 10.1.69.25
