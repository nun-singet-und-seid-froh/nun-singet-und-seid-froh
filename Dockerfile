FROM ubuntu:18.04

MAINTAINER Nun singet und seid froh <mail@nun-singet-und-seid-froh.info>

# Link Volumes scores/ and include/
VOLUME scores/ scores/
VOLUME include/ include/

# Install make and necessary tools
RUN  apt-get update \
  && apt-get install -y wget \
  && apt-get install -y unzip \
  && apt-get install -y build-essential \
  && rm -rf /var/lib/apt/lists/*

# Install Lilypond
RUN wget http://lilypond.org/download/binaries/linux-64/lilypond-2.19.82-1.linux-64.sh
RUN sh lilypond-2.19.82-1.linux-64.sh --batch

# Install the Garamond font
RUN wget https://bitbucket.org/georgd/eb-garamond/downloads/EBGaramond-0.016.zip
RUN unzip EBGaramond-0.016.zip
RUN mkdir -p $HOME/.fonts
RUN cp EBGaramond-0.016/otf/*.otf $HOME/.fonts/
RUN export PATH=$PATH:$HOME/bin

CMD -C scores/ make