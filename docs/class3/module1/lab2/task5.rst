Sync... Again
========================

#. From asm1.site1 click the "Not All Devices Synced" link:

   .. image:: /_static/class3/not_all_devices_synced.png

#. Click "Sync"

**The label may show "AWaiting Initial Sync"**

TMSH command for asm1.site1:

.. admonition:: TMSH

   tmsh run /cm config-sync force-full-load-push to-group example.com_waf_sync-group

**Be Patient. Sometimes initial sync takes a minute.**

https://support.f5.com/csp/article/K14856
