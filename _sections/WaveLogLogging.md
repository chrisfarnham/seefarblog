---
layout: default
title: Radio logs with Wavelog and Podman Compose
last_modified_date: February 2, 2025
image: /sections/WaveLogLogging/PXL_20250202_160841886.jpg
# toot_urls: https://mastodon.roundpond.net/@chrisfarnham/113834329546138270
nav_order: 60
---

# Radio logs with Wavelog and Podman Compose

Until recently I logged my QSOs with "QRZ Logbook" at [QRZ.com](https://www.qrz.com/). This worked fine for me - QRZ's
logbook has some good features and acts as a common hub, along with Logbook of the World, for confirmed QSOs. I have
earlier journal entries where I describe [my logging practices with QRZ.com]({% link _sections/Logging_Practices.md %}).


Here's a photo of my shack with my laptop running Ubuntu and Wavelog. I've been doing a lot of straight key CW operations lately.
![](PXL_20250202_160841886.jpg)

I moved to [Wavelog](https://github.com/wavelog/wavelog) because I wanted something a little more sophisticated. I wanted
a logger that:

 - Integration with my home radio for automated logging of frequency, mode and power
 - Quick lookup of call signs that showed past QSOs
 - Quick lookup that showed QRZ.com profile photos (I wanted to see who I was talking to)

Wavelog has the above features and more.


### My updated home logging workflow

Here is my updated logging workflow. I have only added Wavelog to my workflow because it has a more modern user interface.
Although it may seem super complicated, the QRZ and LOTW integrations are all automatic. I'm going to continue using them
as an online backup and for online QSO confirmations.

![](updated_radio_workflow_wl.png)



### Wavelog screenshots

Here's Wavelog's landing page which shows a map and listing of my recent QSOs.
![](Screenshot from 2025-01-30 18-05-17.png)

Here's the "Live QSO" view which is one of the major reasons I adopted Wavelog. I like seeing the QRZ profile pic as well
as any past QSOs.
![](Screenshot from 2025-01-30 18-07-52.png)


Here's the "Live QSO" view waiting for me to lookup a call sign. It shows my recent QSOs. The green bar on the center, right of the
screen indicates a live connection to my ICOM 7300 along with the frequency, mode and power settings.

![](Screenshot from 2025-02-01 15-13-30.png)


## Wavelog configuration

I installed and configured Wavelog using the containerized (read: Docker) distribution running in
[Podman Compose](https://github.com/containers/podman-compose). As recommended in the Wavelog documentation
my Wavelog compose file provisions and connects the following containers

  - MariaDB as a relational database
  - Watchtower for automated updates
  - Caddy for a secure connection (SSL/TLS)
  - Wavelog for amateur radio contact logging


![](wavelog_component_diagram.png)

Then, on my Linux laptop outside of Podman, I installed and configured FLRig and WavelogGate for automatic
logging of my radio's frequency, mode and power.

### FLRig

FLRig is for CAT control between my laptop and my ICOM 7300 via a USB cable.
This [online blog post by KN4FMV](https://hagensieker.com/2024/12/21/icom-7300-rig-control-under-linux/) helped me resolve some initial
issues with my install.

![](Screenshot from 2025-02-01 15-14-49.png)


### WaveLogGate

WaveLogGate acts as an adapter between FLRig and the Wavelog API. WaveLogGate requires a secure connection (HTTPS).
That's why I added Caddy to my podman compose file.
Caddy creates a self-signed local certificate and presents a secure connection to the local network which
WaveLogGate can use.

![](Screenshot from 2025-02-01 15-14-17.png)

## Configuration details

Installing and configuring I figured some readers may want to see my configuration files so here they are.

My podman compose file:

```yaml
# podman compose up -d
# note that podman requires `docker.io` as a prefix for docker hosted images
services:
  wavelog-db:
    image: docker.io/mariadb:11.3
    container_name: wavelog-db
    environment:
      MARIADB_RANDOM_ROOT_PASSWORD: yes
      MARIADB_DATABASE: wavelog
      MARIADB_USER: wavelog
      MARIADB_PASSWORD: wavelog # <- Insert a strong password here
    volumes:
      - wavelog-dbdata:/var/lib/mysql
    restart: unless-stopped

  wavelog-main:
    container_name: wavelog-main
    image: ghcr.io/wavelog/wavelog:latest
    depends_on:
      - wavelog-db
    environment:
      CI_ENV: docker
    volumes:
      - wavelog-config:/var/www/html/application/config/docker
      - wavelog-uploads:/var/www/html/uploads
      - wavelog-userdata:/var/www/html/userdata
    ports:
      - "8086:80"
    restart: unless-stopped

  watchtower:
    image: docker.io/containrrr/watchtower
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock

  # The Caddy server container.
  caddy:
    # https://hub.docker.com/_/caddy
    image: docker.io/caddy:alpine
    container_name: reverse-proxy
    restart: unless-stopped
    # Map the app container exposed port to the host port.
    ports:
      - 443:443
      - 2019:2019
    volumes:
      - caddy-data:/data
      - caddy-config:/config
    # Caddy config
      - $PWD/Caddyfile:/etc/caddy/Caddyfile
    # Caddy certificate authority (CA)
      - $PWD/certificate-authority:/data/caddy/pki/authorities/local

# sudo cp certificate-authority/intermediate.crt /usr/local/share/ca-certificates/
# sudo update-ca-certificates

volumes:
  wavelog-dbdata:
  wavelog-uploads:
  wavelog-userdata:
  wavelog-config:
  caddy-data:
  caddy-config:

```

Here's my Caddy file:

```
#--------------------------------------------------------------------------
# Caddy configuration
# https://caddyserver.com/docs/caddyfile/options
#--------------------------------------------------------------------------

{
  debug
  local_certs
  auto_https disable_redirects
  admin 0.0.0.0:2019
}

#--------------------------------------------------------------------------
# Reverse proxy
# https://caddyserver.com/docs/caddyfile/directives/reverse_proxy
#--------------------------------------------------------------------------

# HTTPS site block
localhost:443 {
  tls internal
  reverse_proxy wavelog-main:80
}
```

## Going forward

There are many things to improve in my configuration as well as this writeup.

You'll likely need more information that just the files above to get this all working in your system. There were a couple small details
I needed to work out like making my browser and OS recognize the self-signed certificate create by Caddy and setting up Linux user
permissions to connect to my radio via the USB device.

If you have any questions about my setup or the software integrations or configurations above please reach out to me.
