TCP Profile
===================

TCP profiles are the same across WAF's in all sites.

Navigate to: **Local Traffic  ››  Profiles : Protocol : TCP**

.. image:: /_static/class3/create_tcp_profile_flyout.png

Create a TCP profile according to the table below.

.. csv-table::
   :header: "Setting", "Value"
   :widths: 15, 15

   "Name", "shared/example.com_tcp_profile"

.. image:: /_static/class3/create_tcp_profile.png

TMSH command for asm1.site1:

.. admonition:: TMSH

   tmsh create ltm profile tcp shared/example.com_tcp_profile defaults-from f5-tcp-lan
