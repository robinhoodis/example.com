Associate Policy
==========================

Log into asm2.site1 asm1.site2 and asm2.site2 and associate the security policy to the VIPS.

Navigate to: **Local Traffic  ››  Virtual Servers : Virtual Server List  ››  site1_waf2_virtual**

Click Security and set "Application Security Policy" "Enabled" "www.example.com"

Repeat steps for all ASM devices.

.. image:: /_static/class3/associate_policy_to_vip.png

https://asm2.site1.example.com/tmui/Control/jspmap/tmui/locallb/virtual_server/security.jsp?name=/Common/site1_waf2_virtual

https://asm1.site2.example.com/tmui/Control/jspmap/tmui/locallb/virtual_server/security.jsp?name=/Common/site2_waf1_virtual

https://asm2.site2.example.com/tmui/Control/jspmap/tmui/locallb/virtual_server/security.jsp?name=/Common/site2_waf2_virtual


