Sync Folder
===================

Create the sync folder.

This is a cli only task to be completed on asm1.site1

#. On the Jumpbox select the Putty icon on the desktop, and open asm1.site1.example.com

   .. image:: /_static/class3/waf_open_putty.png

#. Run the following command.

   TMSH command for asm1.site1:

   .. admonition:: TMSH

      tmsh create sys folder shared device-group example.com_waf_sync-group traffic-group none

   .. image:: /_static/class3/waf_create_share_folder.png
