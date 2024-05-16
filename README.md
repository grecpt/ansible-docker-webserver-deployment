# ansible-docker-webserver-deployment
A repository to research, build and deploy a Web Server application using Ansible, Docker, Github

#### To create a Dockerfile for Oracle Linux 8 that installs Ansible, you can follow these steps:
1.**Create a Dockerfile**:
Create a new file named `Dockerfile` in your working directory.

2.**Write Dockerfile Content**:
Add the following content to your Dockerfile:
```docker
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
```
This Dockerfile starts with the official Oracle Linux 8 image as the base. It then installs the EPEL repository (which is often needed to install Ansible on CentOS/RHEL-based systems) and Ansible itself using `yum`. After installation, it displays the Ansible version to confirm the installation was successful. Finally, it sets the default command to run `/bin/bash` when the container starts.

3.**Build Docker Image**:
In your terminal, navigate to the directory where your Dockerfile is located and run the following command to build the Docker image:
```docker
docker build -t oraclelinux8-ansible .
```
This command builds a Docker image with the tag oraclelinux8-ansible based on the instructions in the Dockerfile.

4.**Run Docker Container**:
Once the image is built, you can run a Docker container using that image:
```docker
docker run -it oraclelinux8-ansible
```
