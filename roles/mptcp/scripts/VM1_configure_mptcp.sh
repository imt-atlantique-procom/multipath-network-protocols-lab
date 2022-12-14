# Allow more paths
ip mptcp limits set subflow 4 add_addr_accepted 4

# Add additional path
ip mptcp endpoint add 10.0.10.10 dev enp0s8 signal
ip mptcp endpoint add 10.0.20.10 dev enp0s9 signal
ip mptcp endpoint add 10.0.30.10 dev enp0s10 signal
ip mptcp endpoint add 10.0.40.10 dev enp0s16 signal

# Create a dummy file that allow Ansible to check 
# if this script has already been executed once

touch /root/.mptcp_configured