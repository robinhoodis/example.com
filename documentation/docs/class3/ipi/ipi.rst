IP Intelligence
========================

tmsh modify sys db iprep.autoupdate value enable

If the BIG-IP system connects to the Internet using a forward proxy server, set these system database variables. 
Type tmsh modify sys db proxy.host value hostname to specify the host name of the proxy server. 
Type tmsh modify sys db proxy.port value port_number to specify the port number of the proxy server. 
Type tmsh modify sys db proxy.username value username to specify the user name to log in to the proxy server. 
Type tmsh modify sys db proxy.password value password to specify the password to log in to the proxy server. 


tmsh list sys db iprep.autoupdate

To restart the IPI Subscription service, type the following command:
tmsh restart /sys service iprepd

iprep_lookup 101.200.81.187

iprep_lookup 187.174.252.247

