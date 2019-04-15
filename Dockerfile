# Use container image to run test case in sandbox
FROM opensuse/tumbleweed

WORKDIR /project
COPY . /project/

# Add required dependencies for running test cases
RUN zypper -n in -l \
    go1.12 \
    python3 \
    python3-pip \
    make \
    git \
    tar \
    gzip \
    bzip2 \
    unzip && \
    pip install robotframework
    
ENTRYPOINT ["robot"]
