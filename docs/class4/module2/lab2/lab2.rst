Wireshark
=====================================================

From the active bigip in site1 run the following command.

.. admonition:: TMSH
   tcpdump -nni 0.0:nnnp dst 203.0.113.9 and port 80 -w /shared/capture.pcap

.. admonition:: TMSH
   curl http://203.0.113.9

Using Filezilla on the Windows jumpbox copy the capture file.

The default username is "root" and the default password is "default"

Open the capture file using Wireshark and find the "F5 Ethernet Trailer" information.

For more information: https://devcentral.f5.com/wiki/AdvDesignConfig.F5WiresharkPlugin.ashx

.. toctree::
   :hidden:
   :glob:

