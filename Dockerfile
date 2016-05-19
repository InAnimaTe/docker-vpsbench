FROM ubuntu:14.04


RUN apt-get update && \
    apt-get install git time bzip2 build-essential

RUN git clone git@github.com:mgutz/vpsbench.git
RUN cd vpsbench && chmod vpsbench

CMD ["./vpsbech -u"]
