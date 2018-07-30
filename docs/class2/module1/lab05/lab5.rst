FQDN
==============================

F5 refers to an FQDN as a "wide-ip", or "wip".

|site1_wideip_create_link|

.. |site1_wideip_create_link| raw:: html

   On gtm1.site<b>1</b> navigate to: <a href="https://gtm1.site1.example.com/tmui/Control/jspmap/tmui/globallb/wideip/create.jsp" target="_blank">DNS  ››  GSLB : Wide IPs : Wide IP List</a>
   
.. image:: /_static/class1/gtm_wideip_list.png
   :align: left

Create an F5 "wide IP" according to the following table:

.. csv-table::
   :header: "Field", "Value"
   :widths: 15, 15

   "Name", "www.example.com"
   "Alias List", "www.gslb.example.com"
   "Type", "A"
   "Pool", "www.example.com_pool"
   "Load-Balancing Decision Log - Pool Selection", "Checked"
   "Load-Balancing Decision Log - Pool Traversal", "Checked"
   "Load-Balancing Decision Log - Pool Member Selection", "Checked"
   "Load-Balancing Decision Log - Pool Member Traversal", "Checked"

.. image:: /_static/class1/gtm_wideip_create.png
   :align: left

TMSH command to run on only gtm1.site1:

.. admonition:: TMSH

   tmsh create gtm wideip a www.example.com { pools add { www.example.com_pool } aliases add { www.gslb.example.com } load-balancing-decision-log-verbosity {  pool-member-selection pool-member-traversal pool-selection pool-traversal } }

**Results**

From the Jumpbox use "dig" from the CMD prompt

.. image:: /_static/class2/dns_gslb_site1_widepip_results.png
   :align: left

|site1_wideip_statistics-flyout_link|

.. |site1_wideip_statistics-flyout_link| raw:: html

   On gtm1.site<b>1</b> <a href="https://gtm1.site1.example.com/tmui/Control/jspmap/tmui/globallb/stats/wideip/stats.jsp" target="_blank">view statistics</a>
   
.. image:: /_static/class2/gtm_wideip_statistics_flyout.png
   :align: left

|site1_wideip_statistics-detail_link|

.. |site1_wideip_statistics-detail_link| raw:: html

   <a href="https://gtm1.site1.example.com/tmui/Control/jspmap/tmui/globallb/stats/wideip/stats_detail.jsp?name=/Common/www.example.com&type=1&identity=www.example.com : A" target="_blank">For more details click "View"</a>

.. image:: /_static/class2/gtm_wideip_statistics.png
   :align: left

.. admonition:: TMSH

   tmsh show gtm wideip A www.example.com detail

.. image:: /_static/class2/gtm_wideip_tmsh-show.png
   :align: left

.. admonition:: TMSH

   tail -f /var/log/ltm

.. image:: /_static/class2/tail_var_log_ltm.png
   :align: left
