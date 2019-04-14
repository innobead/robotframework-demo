FROM opensuse/tumbleweed

WORKDIR /project
COPY . /project/

RUN zypper -n in -l go1.12 python3 python3-pip make git && \
    pip install robotframework
    
ENTRYPOINT ["robot"]
