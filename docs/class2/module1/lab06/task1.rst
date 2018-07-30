A Records
=================================

#. Expand the sub-menus to expose EXAMPLE.COM in the "Forward Lookup Zones"

   .. image:: /_static/class2/dc01_expand_dns.png
      :align: left

#. Right click on EXAMPLE.COM and select "New Host (A or AAAA)"

   .. image:: /_static/class2/dc01_right_click.png
      :align: left

#. Create two new A records for the new BIGP-IP nameservers.

   .. csv-table::
      :header: "Field", "Value"
      :widths: 15, 15

      "ns1", "203.0.113.8"
      "ns2", "198.51.100.40"


   .. image:: /_static/class2/dc01_create_ns1.png
      :align: left

   Create ns2.example.com

   .. image:: /_static/class1/dc01_new_A_ns2.png
      :align: left
