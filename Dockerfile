FROM  ubuntu:22.04

ENV TZ=Asia/Tokyo

RUN apt update && apt upgrade -y && apt install git wget -y
RUN git clone https://github.com/asdf-vm/asdf.git ~/.asdf\
    && echo '. $HOME/.asdf/asdf.sh' >> ~/.bashrc\
    && exec bash -l\
    && asdf add plugins python \
    && asdf install python 3.8.5 \
    && asdf global python 3.8.5
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh\
    && sh Miniconda3-latest-Linux-x86_64.sh -b -p /opt/miniconda\
    && rm -r Miniconda3-latest-Linux-x86_64.sh
ENV PATH /opt/miniconda/bin:$PATH
RUN git clone https://github.com/basujindal/stable-diffusion.git\
        && cd stable-diffusion\
        && conda init bash\
        && conda env create -f environment.yaml \
        && echo "conda activate ldm" >> ~/.bashrc