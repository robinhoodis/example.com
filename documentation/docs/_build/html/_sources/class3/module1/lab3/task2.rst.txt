HTTP Profile
======================

The HTTP profile may be the same across all WAF devices.

Navigate to: **Local Traffic  ››  Profiles : Services : HTTP**

.. image:: /_static/class3/waf_create_http_profile_navigation.png

https://asm1.site1.example.com/tmui/Control/jspmap/tmui/locallb/profile/http/create.jsp

Create an HTTP profile according to the table below.

.. csv-table::
   :header: "Setting", "Value"
   :widths: 15, 15

   "Name", "shared/example.com_http_profile"

.. image:: /_static/class3/shared_http_profile.png

TMSH command for asm1.site1:

.. admonition:: TMSH

    tmsh create ltm profile http shared/example.com_http_profile
