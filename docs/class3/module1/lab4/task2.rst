Virtuals
==================

An LTM VIP needs to be created in order to accept traffic from the ADC.

Navigate to: **Local Traffic  ››  Virtual Servers : Virtual Server List  ››  New Virtual Server**

.. image:: /_static/class3/waf1_virtual_creation.png

Create VIPS on all four WAF devices according to the follwing tables

#. asm1.site1

   .. csv-table::
      :header: "Setting", "Value"
      :widths: 15, 15

      "Name", "site1_waf1_virtual"
      "Destination Address/Mask", "10.1.50.101"
      "Service Port", "443"
      "Protocol Profile (Client)", "shared/example.com_tcp_profile"
      "HTTP Profile", "shared/example.com_http_profile"
      "SSL Profile (Client)", "clientssl"
      "SSL Profile (Server)", "serverssl"
      "Source Address Translation", "Auto Map"
      "Default Pool", "pool site1_adc_https_pool"

   TMSH command for asm1.site1:

   .. code-block:: tcl

      tmsh create ltm virtual site1_waf1_virtual { destination 10.1.50.101:https ip-protocol tcp profiles add { clientssl { context clientside } serverssl { context serverside } shared/example.com_http_profile { } shared/example.com_tcp_profile { } } source-address-translation { type automap } security-log-profiles add { "Log all requests" } pool site1_adc_https_pool }


#. asm2.site1

   .. csv-table::
      :header: "Setting", "Value"
      :widths: 15, 15

      "Name", "site1_waf2_virtual"
      "Destination Address/Mask", "10.1.50.102"
      "Service Port", "443"
      "Protocol Profile (Client)", "shared/example.com_tcp_profile"
      "HTTP Profile", "shared/example.com_http_profile"
      "SSL Profile (Client)", "clientssl"
      "SSL Profile (Server)", "serverssl"
      "Source Address Translation", "Auto Map"
      "Default Pool", "pool site1_adc_https_pool"

   TMSH command for asm2.site1:

   .. code-block:: tcl

      tmsh create ltm virtual site1_waf2_virtual { destination 10.1.50.102:https ip-protocol tcp profiles add { clientssl { context clientside } serverssl { context serverside } shared/example.com_http_profile { } shared/example.com_tcp_profile { } } source-address-translation { type automap } security-log-profiles add { "Log all requests" } pool site1_adc_https_pool }

#. asm1.site2

   .. csv-table::
      :header: "Setting", "Value"
      :widths: 15, 15

      "Name", "site2_waf1_virtual"
      "Destination Address/Mask", "10.1.60.101"
      "Service Port", "443"
      "Protocol Profile (Client)", "shared/example.com_tcp_profile"
      "HTTP Profile", "shared/example.com_http_profile"
      "SSL Profile (Client)", "clientssl"
      "SSL Profile (Server)", "serverssl"
      "Source Address Translation", "Auto Map"
      "Default Pool", "pool site2_adc_https_pool"

   TMSH command for asm1.site2:

   .. code-block:: tcl

      tmsh create ltm virtual site2_waf1_virtual { destination 10.1.60.101:https ip-protocol tcp profiles add { clientssl { context clientside } serverssl { context serverside } shared/example.com_http_profile { } shared/example.com_tcp_profile { } } source-address-translation { type automap } security-log-profiles add { "Log all requests" } pool site2_adc_https_pool }

#. asm2.site2

   .. csv-table::
      :header: "Setting", "Value"
      :widths: 15, 15

      "Name", "site2_waf1_virtual"
      "Destination Address/Mask", "10.1.60.102"
      "Service Port", "443"
      "Protocol Profile (Client)", "shared/example.com_tcp_profile"
      "HTTP Profile", "shared/example.com_http_profile"
      "SSL Profile (Client)", "clientssl"
      "SSL Profile (Server)", "serverssl"
      "Source Address Translation", "Auto Map"
      "Default Pool", "pool site2_adc_https_pool"

   TMSH command for asm2.site2:

   .. code-block:: tcl

      tmsh create ltm virtual site2_waf2_virtual { destination 10.1.60.102:https ip-protocol tcp profiles add { clientssl { context clientside } serverssl { context serverside } shared/example.com_http_profile { } shared/example.com_tcp_profile { } } source-address-translation { type automap } security-log-profiles add { "Log all requests" } pool site2_adc_https_pool }


