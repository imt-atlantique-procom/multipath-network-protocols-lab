# According to https://multipath-tcp.org/pmwiki.php/Users/ConfigureRouting
# This creates four different routing tables, that we use based on the source-address.

# Another useful example : https://hpnpl.net/posts/mptcp-ubuntu/

ip rule add from 10.0.10.10 table 1
ip rule add from 10.0.20.10 table 2
ip rule add from 10.0.30.10 table 3
ip rule add from 10.0.40.10 table 4

# Configure the four different routing tables

ip route add 10.0.10.0/24 dev enp0s8 table 1
ip route add 10.0.20.0/24 dev enp0s9 table 2
ip route add 10.0.30.0/24 dev enp0s10 table 3
ip route add 10.0.40.0/24 dev enp0s16 table 4

ip route add 10.0.0.0/24 via 10.0.10.20 dev enp0s8 table 1
ip route add 10.0.0.0/24 via 10.0.20.20 dev enp0s9 table 2
ip route add 10.0.0.0/24 via 10.0.30.20 dev enp0s10 table 3
ip route add 10.0.0.0/24 via 10.0.40.20 dev enp0s16 table 4

# Create a dummy file that allow Ansible to check 
# if this script has already been executed once

touch /root/.routes_updated