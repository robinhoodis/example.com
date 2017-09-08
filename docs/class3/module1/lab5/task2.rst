Parent Child
=================

Finally.... Let's create a policy.

Navigate to: **Security  ››  Application Security : Security Policies : Policies List**

Create a parent policy according to the following table

.. csv-table::
   :header: "Setting", "Value"
   :widths: 15, 15

   "Policy Name", "example.com_parent_policy"
   "Policy Type", "Parent"
   "Policy Template", "Rapid Deployment Policy"

.. image:: /_static/class3/create_policy_parent.png

https://asm1.site1.example.com/dms/policy/policies_ng.php?create_policy=1

Create a child policy according to the following table

.. csv-table::
   :header: "Setting", "Value"
   :widths: 15, 15

   "Policy Name", "www.example.com_policy"
   "Policy Type", "Security"
   "Policy Template", "Rapid Deployment Policy"
   "Virtual Server", "site1_waf2_virtual"

.. image:: /_static/class3/create_policy_child.png
