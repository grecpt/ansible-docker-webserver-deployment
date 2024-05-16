# Use the official Oracle Linux 8 image as base
FROM oraclelinux:8

# Install dependencies and Ansible
RUN yum install -y \
    epel-release \
    && yum install -y \
    ansible \
    && yum clean all

# Display Ansible version
RUN ansible --version

# Default command to run when the container starts
CMD ["/bin/bash"]