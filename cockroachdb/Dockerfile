FROM cockroachdb/cockroach:v20.1.8 
#Debian 9

#https://tailscale.com/kb/1293/cloud-init/
RUN apt-get update || echo "Update failed"
RUN apt-get install -y curl
RUN /bin/sh -c curl -fsSL https://tailscale.com/install.sh | sh
RUN echo 'net.ipv4.ip_forward = 1' | sudo tee -a /etc/sysctl.d/99-tailscale.conf && echo 'net.ipv6.conf.all.forwarding = 1' | sudo tee -a /etc/sysctl.d/99-tailscale.conf && sudo sysctl -p /etc/sysctl.d/99-tailscale.conf 


#ENTRYPOINT ["/cockroach/cockroach.sh"]