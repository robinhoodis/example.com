Cut-Over
===================

.. image:: /_static/class3/waf_cutover_asm_pre.png

.. image:: /_static/class3/waf_cutover_asm.png

Change the ADC load balancing configuration so that traffic goes through the WAF before the application server.

Make the following changes on both bigip1.site1 and bigip1.site2.

Navigate to: **Local Traffic  ››  Virtual Servers : Virtual Server List  ››  isp2_site2_www.example.com_tcp_https_virtual**

Select "Resources" and associate the "site1_waf_https_pool"

.. image:: /_static/class3/modify_bigip_activate_asm.png

https://bigip1.site1.example.com/tmui/Control/jspmap/tmui/locallb/virtual_server/properties.jsp?name=/Common/isp1_site1_www.example.com_tcp_https_virtual

https://bigip1.site2.example.com/tmui/Control/jspmap/tmui/locallb/virtual_server/properties.jsp?name=/Common/isp2_site2_www.example.com_tcp_https_virtual

.. image:: /_static/class3/waf_cutover_asm_to_app.png
