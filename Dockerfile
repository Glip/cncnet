FROM ubuntu:latest

ENV CNC_name=cnctunnel
ENV CNC_maxclients=200
ENV CNC_port=50001
ENV CNC_portv2=50000
ENV CNC_iplimit=8
ENV CNC_iplimitv2=4
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1

RUN apt update && apt install -y wget sed libssl-dev
RUN wget http://security.ubuntu.com/ubuntu/pool/main/o/openssl1.0/libssl1.0.0_1.0.2n-1ubuntu5.10_amd64.deb
RUN dpkg -i libssl1.0.0_1.0.2n-1ubuntu5.10_amd64.deb
RUN wget -c https://downloads.cncnet.org/cncnet-server.tgz -O - | tar -xz
RUN apt clean  && apt autoclean
ENTRYPOINT ./cncnet-server --name "$CNC_name" --maxclients $CNC_maxclients --port $CNC_port --portv2 $CNC_portv2 --iplimit $CNC_iplimit --iplimitv2 $CNC_iplimitv2
