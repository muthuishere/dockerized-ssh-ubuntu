FROM ubuntu

# Install necessary packages
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y openssh-server sudo

# Add the entrypoint script
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set up SSH
RUN mkdir /var/run/sshd && \
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd 

# echo "export VISIBLE=now" >> /etc/profile

# Expose the SSH port
EXPOSE 22

# Use the entrypoint script to start the service
CMD ["/entrypoint.sh"]

