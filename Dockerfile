FROM ubuntu:20.04

ENV FSLDIR "/usr/local/fsl"
ENV DEBIAN_FRONTEND "noninteractive"
ENV LANG "en_GB.UTF-8"

# Install system dependencies
RUN apt update  -y && \
    apt upgrade -y && \
    apt install -y    \
      bash            \   
      python3         \
      python3-pip     \
      wget            \
      file            \
      dc              \
      mesa-utils      \
      pulseaudio      \
      libquadmath0    \
      libgtk2.0-0     \
      firefox         \
      libgomp1

# Install Python packages (Jupyter and fslpy)
RUN pip3 install jupyter notebook numpy nibabel matplotlib fslpy

# Install FSL
RUN wget https://fsl.fmrib.ox.ac.uk/fsldownloads/fslconda/releases/fslinstaller.py && \
    python3 ./fslinstaller.py -d /usr/local/fsl/

# Create the /notebooks directory
RUN mkdir -p /notebooks

# Expose Jupyter port
EXPOSE 8888

# Run FSL environment setup script
RUN echo "source /usr/local/fsl/etc/fslconf/fsl.sh" >> ~/.bashrc

# Use bash as default shell and start Jupyter Notebook when container runs
ENTRYPOINT [ "bash", "-c", "source ~/.bashrc && jupyter notebook --ip=0.0.0.0 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password='' --port=8888 --notebook-dir=/notebooks" ]
