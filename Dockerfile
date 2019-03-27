FROM r-base:latest

RUN R -e "install.packages('greta')"

RUN apt update

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/miniconda
ENV PATH "/opt/miniconda/bin:$PATH"

RUN conda install -c conda-forge -y tensorflow-probability
