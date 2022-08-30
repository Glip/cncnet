# CNC Tunnel

Simple docker image for cnc tunnel [https://forums.cncnet.org/topic/6325-how-to-host-a-cncnet-server/](https://forums.cncnet.org/topic/6325-how-to-host-a-cncnet-server/)

### Usage

Add to incron line
```
docker run --env-file /home/docker/envs/cncnet.list -d -p 50000-50001:50000-50001 -p 50000-50001:50000-50001/udp --restart=always -name cncnet kuntsevich89/cncnet_server:latest
```

### ENV File

CNC_name - name of your server<br>
CNC_maxclients - maximum connected players<br>
CNC_port - port for most cnc games<br>
CNC_portv2 - port only for RA2 YR<br>
CNC_iplimit - Maximum clients allowed per IP address<br>
CNC_iplimitv2 - Max game request allowed per IP address on V2<br>



## Authors

* **Andrey Kuntsevich** - [Taz](https://github.com/Glip)
