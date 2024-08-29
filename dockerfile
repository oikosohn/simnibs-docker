# Use Miniconda3 base image
FROM continuumio/miniconda3:latest

# Install essential packages
RUN apt-get update && \
    apt-get install -y wget git libgl1-mesa-glx libgl1-mesa-dri && \ 
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Download and Install SimNIBS 4.1.0
RUN wget https://github.com/simnibs/simnibs/releases/download/v4.1.0/simnibs_installer_linux.tar.gz -O /opt/simnibs_installer_linux.tar.gz && \
    tar -xzf /opt/simnibs_installer_linux.tar.gz -C /opt/ && \
    rm /opt/simnibs_installer_linux.tar.gz && \
    /opt/simnibs_installer/install -s -t /opt/SimNIBS-4.1.0

# Set environment variable for SimNIBS binaries
ENV SIMNIBS_BIN=/opt/SimNIBS-4.1.0/bin
ENV PATH=$SIMNIBS_BIN:$PATH

# Set the default command to run when the container starts
CMD ["/bin/bash"]