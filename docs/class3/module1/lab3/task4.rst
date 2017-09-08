Health Monitor
=======================

Create a common health monitor

Navigate to: **Local Traffic  ››  Monitors  ››  New Monitor...**

Create a health monitor on asm1.site1 according to the following table.

.. csv-table::
   :header: "Setting", "Value"
   :widths: 15, 15

   "Name", "shared/example.com_https_monitor"
   "Type", "HTTPS"
   "Send String", "GET /login.php\r\n"

TMSH command for asm1.site1:

.. code-block:: tcl

   tmsh create ltm monitor https shared/example.com_https_monitor send "GET /login.php\r\n"

https://support.f5.com/csp/article/K13397
