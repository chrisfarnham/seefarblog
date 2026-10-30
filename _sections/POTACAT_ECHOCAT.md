---
layout: default
title: Remote FT8 from the couch with POTACAT and ECHOCAT
last_modified_date: October 30, 2026
image: /sections/POTACAT_ECHOCAT/card.jpg
nav_order: 37
---

# Remote FT8 from the couch with POTACAT and ECHOCAT

On Wednesday evening, October 28, 2026, I logged a two-way FT8 contact with Bulgaria while watching the World Series
upstairs with my wife. My radio was in the basement the whole time.

The station was [LZ2XA](https://www.qrz.com/db/LZ2XA), Val, in grid KN33, about 7,400 kilometers (4,600 miles) away on 40 meters.
I made the contact from my phone.

![A TV showing the World Series, Milwaukee leading Tampa Bay 2 to 0 in the 6th inning](PXL_20261029_014709021.jpg){: width="500px"}

## Why remote?

I like experimenting with technology. There's another reason too: when I go to the basement to do radio, I feel antisocial.
Remote control gives me a way to be around my family upstairs and still get on the air.
When my wife saw me making radio contacts through my phone, she rolled her eyes and thought it was funny.

## The setup

 - **Radio:** my [Icom IC-7300]({% link _sections/New_Radio_IC7300.md %}) in the basement
 - **Antenna:** my standard rig, an inverted-V configured [40 meter end-fed half-wave]({% link _sections/EFHW_Antenna.md %}). Remote operation gets more use out of this radio and antenna.
 - **Shack computer:** an old Acer laptop running the latest Ubuntu, connected to the radio with the standard USB cable that came with the IC-7300, threaded through ferrites to protect against common mode current
 - **Software:** [POTACAT](https://github.com/Waffleslop/POTACAT) on the laptop
 - **Remote control:** the ECHOCAT app on my phone, connecting to the laptop over [Tailscale](https://tailscale.com/). The laptop and phone are both Tailscale nodes. Nothing special.
 - **Logging:** POTACAT sends each contact to [WaveLogGate](https://github.com/wavelog/WaveLogGate), which passes it on to [Wavelog]({% link _sections/WaveLogLogging.md %}). All three run on the same laptop.

![My IC-7300 on 7.074 MHz USB-D next to an old Acer laptop running POTACAT, with a paddle key and notebook on the desk](PXL_20261029_014534898.jpg)

The whole setup took me about an hour. I only use it for digital modes so far.

## How it all connects

Here's how the pieces fit together. The radio and antenna are cabled to the laptop, everything that logs runs on the laptop,
and the phone reaches POTACAT over Tailscale.

![Diagram: a 40 meter EFHW antenna connects by coax to the IC-7300, which connects by USB through ferrites to POTACAT on an Acer laptop. A phone running ECHOCAT controls POTACAT over Tailscale. POTACAT sends each QSO to WaveLogGate, which posts it over HTTPS to Wavelog, which uploads to QRZ and LoTW.](connections.png)

WaveLogGate is what gets each contact into Wavelog. It posts the QSO to Wavelog's API over HTTPS, using the Wavelog URL, an API key and a station profile.
Wavelog needs a secure connection for that, which is why I run Caddy in front of it. I wrote up that part of the setup in
[Radio logs with Wavelog and Podman Compose]({% link _sections/WaveLogLogging.md %}). Wavelog then uploads each contact to QRZ and LoTW automatically.
The radio and antenna are the same [IC-7300]({% link _sections/New_Radio_IC7300.md %}) and [end-fed half-wave]({% link _sections/EFHW_Antenna.md %}) I use for everything else at home.

## What are POTACAT and ECHOCAT?

I found POTACAT in a YouTube video, [The Free App Remote Hams Are Switching To - POTACAT](https://youtu.be/QyjFec5rQF0) by KM4ACK.

[POTACAT](https://potacat.com/) is a free, open-source desktop app from Casey, K3SBP. It pulls spots from POTA, SOTA, DX clusters,
the Reverse Beacon Network, WSJT-X and PSKReporter into one list, and clicking a spot tunes your radio through CAT control.
It runs on Windows, macOS and Linux and works with FlexRadio, Icom, Yaesu, Kenwood and Elecraft radios, plus more than 200 models through Hamlib.
Its [documentation](https://potacat.com/docs) covers radio setup.

ECHOCAT is the companion app for iOS and Android. It costs about $10 once, with no subscription, and I recommend it.
You pair it with POTACAT on your home network: open ECHOCAT, tap your desktop and approve it. From there it reaches your station over the
local network, Tailscale or an optional paid relay, with no port forwarding. ECHOCAT can do SSB audio with push-to-talk, CW keying,
and FT8/FT4 with auto-sequencing. The decoding and transmitting happen on the shack computer, and the phone is the control surface.[^1]

[^1]: Details from the [POTACAT project page](https://github.com/Waffleslop/POTACAT), checked October 30, 2026.

## Operating FT8 from my phone

POTACAT has its own FT8 engine, which it calls JTCAT, and that's what logged these contacts.
Here's the ECHOCAT Digi screen on my phone just after I logged K6VHF in Arizona on 40 meters.

![The ECHOCAT Digi screen on my phone showing a QSO logged with K6VHF on 40 meters FT8, a decode list and a waterfall](echocat_phone.png){: width="350px"}

## Where the contacts landed

From the night of October 26 through the morning of October 30, I made 46 FT8 contacts, almost all on 40 meters
(40 on 40 meters, 5 on 20 meters and 1 on 60 meters). They reached 11 DXCC entities and four continents (North America, South America, Europe and Africa), including 17 US states
and Brazil, Hungary, Germany, Portugal, Spain, the Canary Islands, Aruba, Montserrat, Canada and Bulgaria.
The Bulgaria contact was my longest. Every contact went into my Wavelog logbook through the POTACAT to WaveLogGate to Wavelog chain.

![A map of contacts from my QTH reaching across the United States, to Canada, Spain, the Canary Islands, Germany, Hungary and Bulgaria, and to Brazil](contact_map.png)

## Going forward

Remote operation is fun at home. It lets me enjoy radio during short idle moments, from the couch.
My main fun with radio is still field operations, though. I like to physically interact with the radio.
