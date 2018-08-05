BIG-IP DNS in Action
=====================

We have deployed two applications; FTP and HTTP in geographic high availability using both BIG-IP LTM and BIG-IP DNS. We have seen that in the event of subsequent queries to our BIG-IP DNS for GSLB.example.com or GSLB2.example.com we provided the querier with round-robin responses. Lets now look at a scenario where our primary data center fails and we require BIG-IP DNS to respond by sending our clients to the secondary data center.


.. toctree::
   :hidden:
   :maxdepth: 2
   :glob:

|rest_link|

.. |rest_link| raw:: html

   <a href="https://devcentral.f5.com/d/icontrolr-rest-api-user-guide-version-1300-241" target="_blank">More information on the BIG-IP REST interface</a>

|site1-settings_link|

.. |site1-settings_link| raw:: html

   On gtm1.site<b>1</b> navigate to: <a href="https://gtm1.site1.example.com/tmui/Control/jspmap/tmui/dns/settings/gslb/properties_general.jsp" target="_blank">DNS  ››  Settings : GSLB : General</a>

.. image:: /_static/class1/gtm_global_settings.png
   :align: left