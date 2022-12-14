# This creates the routes to the four different subnets

ip route add 10.0.10.0/24 via 10.0.0.20
ip route add 10.0.20.0/24 via 10.0.0.20
ip route add 10.0.30.0/24 via 10.0.0.20
ip route add 10.0.40.0/24 via 10.0.0.20

# Create a dummy file that allow Ansible to check 
# if this script has already been executed once

touch /root/.routes_updated