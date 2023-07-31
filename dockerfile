FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y nano

RUN touch nuovo.txt && \
    echo "Prova" >> nuovo.txt && \
    echo "Ciao" >> nuovo.txt && \
    echo "Altra prova bellissima" >> nuovo.txt
