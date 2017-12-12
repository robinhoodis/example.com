Logging Headers
=====================================================

.. toctree::
   :hidden:
   :glob:

Navigate to: https://devcentral.f5.com/codeshare/log-http-headers

Copy the iRule code.

Navigate to: **Local Traffic  ››  iRules : iRule List**

https://bigip1.site1.example.com/tmui/Control/jspmap/tmui/locallb/rule/create.jsp

Create a new iRule named "shared/log_headers_irule" and paste the copied code from devcentral

Modify the LTM virtual server on bigip1.site1 isp1_site1_www.example.com_tcp_http_virtual 

Associate the log_headers_irule to the virtual server

on the active bigip in site1 run "tail -f /var/log/ltm"

From the Windows jumpbox CMD prompt run

curl http://203.0.113.9

