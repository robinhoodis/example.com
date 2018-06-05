Device Groups
=======================

**The following task only needds to be completed from asm1.site1**

Create a sync-only group that contains all four ASM devices

Navigate to: **Device Management  ››  Device Groups**

.. image:: /_static/class3/waf_create_device-group_navigation.png

Create the device group according to the following table:

.. csv-table::
   :header: "Setting", "Value"
   :widths: 15, 15

   "Name", "example.com_waf_sync-group"
   "Group Type", "Sync-Only"
   "Members", "Add all four WAF devices"
   "Sync Type", "Automatic with Full Sync"
   "Save on Automatic Sync", "Checked"

.. image:: /_static/class3/create_sync_group.png

https://asm1.site1.example.com/tmui/Control/jspmap/tmui/devmgmt/devicegroups/create.jsp

TMSH command for asm1.site1:

.. admonition:: TMSH

   tmsh create cm device-group example.com_waf_sync-group { auto-sync enabled devices add { asm1.site1.example.com { } asm1.site2.example.com { } asm2.site1.example.com { } asm2.site2.example.com { } } full-load-on-sync true save-on-auto-sync true }
