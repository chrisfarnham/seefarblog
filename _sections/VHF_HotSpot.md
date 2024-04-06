---
layout: default
title: HotSpot for Digital VHF Radio
last_modified_date: April 5, 2024
image: /sections/VHF_HotSpot/vhf_digital_hotspot.png
# toot_urls:
#     - https://mastodon.roundpond.net/@chrisfarnham/112168136384882788
#     - https://mastodon.radio/@k8vsy/111721790708177179
nav_order: 79
---

# HotSpot for Digital VHF Radio

In January I set up a digital VHF radio hotspot in my home. Hotspots are personal, low-power devices that allow amateur radio operators to connect their radios to the internet and access digital voice (DV) systems around the world. Hotspots act as a personal digital voice repeater and gateway, providing a way for hams to communicate using digital voice modes like DMR, D-STAR, and System Fusion, even if there is no local repeater available.

![](vhf_digital_hotspot.png){: .image-left width="400px"}

There are many VHF radio hotspots available. I ended up purchasing a [Hamspot 4 Hotspot](https://hamspot.square.site/s/shop) and
am very happy with it. In this post I'll share my setup and how I'm using my hotspot.

> In this post I'll share my setup and how I'm using my hotspot.

I'd love to hear from any readers who have experience with digital radio. How are you using it? What talkgroups are you linking to? 

![](PXL_20240313_233047764.jpg){: .image-right width="400px"}

## Hamspot 4 Hotspot

I purchased the  [Hamspot 4 Hotspot](https://hamspot.square.site/s/shop) which is a Raspberry Pi computer with 
a duplex MMDVM board. An MMDVM stands for Multi-Mode Digital Voice Modem. Duplex means that the modem can
transmit and receive at the same time. The Hamspot 4 Hotspot page says that it is loaded with PiStar software
but it is actually loaded with [WPSD](https://w0chp.radio/wpsd/), a 
next generation fork of [PiStar](https://www.pistar.uk/downloads/).

My hotspot sits on my radio desk behind my 
[grandfather's call sign plaque](https://mastodon.roundpond.net/@chrisfarnham/111740198790913691).
 It's plugged into a USB-C cable for power and connects to
my [Fios Router](https://www.verizon.com/support/residential/internet/equipment/routers/fios-router)
through the 
[wall brushplate to my communications utility closet]({% link _sections/Feedline_Passthrough.md %}#inside-the-shack)

The hotspot acts as a low powered repeater. 10 milliwatts of RF power covers my house and my yard. With the hotspot and 
my [Yaesu FT5D](https://www.yaesu.com/indexVS.cfm?cmd=DisplayProducts&encProdID=8FA58F426C671235EA5791EE6814FF48)
 I can talk worldwide.

![](Screenshot from 2024-04-05 10-15-43.png)

## Connecting to Maine

In the screenshot above you can see the browser based dashboard for my hotspot. I've configured it to connect to
a Yaesu System Fusion repeater group covering Maine and New Hampshire ([UFB New England network](https://ufbnewengland.com/)).
Why not my local, Boston or Massachusetts networks? The Maine accents connect me with my home and remind me of
time with my [grandfather, Fred Bean,]({% link _sections/W1YTQ.md %}) who's VHF radio was always listening on the [N1ME repeater](https://n1me.org/).

![](PXL_20240111_125409625.jpg)

## A little (but not much) about my setup

I'm not going to walk you through how I've set up my FT5DR and WPSD. There are a 
[ton of videos on YouTube](https://www.youtube.com/watch?v=qlrBhBm_Sws) about that. 
They describe it better than I probably can. When it comes to VHF digital modes, I'm very much an "appliance operator."
"Appliance operator" is sometimes a pejorative; saying that someone in the hobby just operates radio as
an appliance, they don't build their own gear or know what they're doing. 
I believe that everyone has to start somewhere and any one person
can't know everything. Enjoy amateur radio however you choose. Everyone's welcome.

> Everyone has to start somewhere and any one person
> can't know everything. Enjoy amateur radio however you choose. Everyone's welcome

I have my hotspot transmitting on 446.500 MHz and receiving 5MHz lower (441.500 MHz). Using the FT5D's built-in Wires-X 
features I can connect to [talk groups around the world](https://www.yaesu.com/jp/en/wires-x/id/active_room.php). 
I mostly hang out on the New England network (linked above) but sometimes participate in 
[HRCC digital nets](https://hamradiocrashcourse.com/hrcc-net-calendar/) or pop onto European networks for fun.

![](PXL_20240112_030836770.jpg)

## How do you use digital radio?

Are there any other networks or talk groups I'm missing out on? Do you use digital amateur radio? If so, what are your
thoughts?

![](PXL_20240112_030845898.jpg)

