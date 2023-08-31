---
layout: default
title: Learning APRS
last_modified_date: August 21, 2023
image: /sections/Learning_APRS/PXL_20230830_115439422.jpg
nav_order: 91
---

# Learning APRS

I bought a [Yaesu FT5DR](https://www.yaesu.com/indexVS.cfm?cmd=DisplayProducts&encProdID=8FA58F426C671235EA5791EE6814FF48) a few weeks ago (an impulse
purchase). I had no plans for VHF operation but brought
the radio with me to [Scout Camp]({% link _sections/ScoutCamp_2023.md %}). 
I used it to demonstrate 2-meter simplex operation to the scouts. 
But didn't do much with it beyond basic, simplex operation.

> 2-meter simplex operation in amateur radio involves direct radio-to-radio communication on a single frequency > without the use of repeaters.

I decided to experiment with APRS. I've been enjoying it and have
learned a ton in the last two weeks.

![FT5DR with the US APRS frequency, 144.390, set in the B channel.](PXL_20230830_115439422.jpg){: width="500px"}

## What is APRS?

APRS stands for "Automatic Packet Reporting System," and it is an amateur (ham) radio-based system for real-time digital communications of information of immediate value in the local area. The system was developed in the 1980s by Bob Bruninga, an amateur radio operator. APRS data can include position information, weather data, telemetry, announcements, and more.

I watched a couple of [YouTube videos](https://youtu.be/tTc96aP8hiw?si=10LkplliUTXgxw4q) that walked me through configuring APRS on my hand held radio. After some experimentation I was able to send out my location as a beacon and receive beacons from nearby APRS transmitters.

![Received APRS beacon](PXL_20230822_230123549.jpg){: width="500px"}

The beacon shown on my radio above is from the MIT APRS digipeater in Cambridge, 7.1 miles Southeast of my home.

![Alt text](Screenshot_20230822-181632~2.png){: .image-left width="300px"}

I set my beacon to transmit every 30 seconds and then took the dog for a walk. When I got home I could trace my route using the [APRS.fi website](https://aprs.fi/).

It was all working but I had some questions:

  - I was sending my location every 30 seconds, why do I only see four points captured from my walk?
  - Is this all I can do? Videos and my reading indicates there's a lot more such as messaging.

A common saying in amateur radio is, "Why don't you try it and find out." I participated in [#APRSThursday](https://aprsph.net/aprsthursday/), an APRS community activity. 
I learned by doing and got answers to my questions and more.

## APRS Thursday

The #APRSThursday net happens every Thursday with the aim of growing message activity on APRS across the world.

To join in the fun all I had to do was send an APRS message to "ANSRVR" like this:
 
    CQ HOTG Hello from Lexington, MA!

My APRS message was broadcast globally to all #APRSThursday participants. And then 
I received welcome and hello messages as people around the world joined in. 
12 hours later the #APRSThursday bot disconnected me.

![Alt text](PXL_20230824_160422039.jpg){: .image-right width="300px"}

[ANSRVR](http://aprs.org/ansrvr.html) is an "announcement server" that provides global group messaging capability. The APRS Thursday group uses HOTG as an identifier.

> A common saying in amateur radio is, “Why don’t you try it and find out?”

### Learning APRS by doing APRS

By the end of the day the #APRSThursday activity taught me a lot. I learned that your radio's power
and propagation of your signal to other stations are really important for APRS to work . Only some of the data I was sending out was received by other stations. That's
why my walking path only had four points (see my questions above).

I also learned:
 - How to send APRS messages
 - How to receive and view messages
 - About online resources for tracking my outgoing and incoming messages
 - How messages are routed globally and locally
 - How messages are managed and filtered by my own radio
 - How my radio performs and connects to my local APRS network

The diagram below is my own quick, high level take on how APRS works globally.

![Alt text](network_diagram_aprs.png)

  Packet
  : Encoded units of data with routing and location information suited for broadcast over radio frequencies in short bursts

  Digipeater
  : A Digipeater is an APRS station that receives and rebroadcasts packets via radio frequency

  iGate
  : Passes radio frequency packets to APRS-IS and broadcasts packets destined for local stations over RF  

  APRS-IS
  : Internet-based network which inter-connects various APRS radio networks throughout the world (and into space).


I learned that with APRS it's important for nearby digipeaters and iGates
to clearly receive my signal.  My little 5 watt hand-held radio needs to be outside; I can't
play with APRS inside and expect much to happen. NOTE: There may be a 2-meter antenna install and VHF base transceiver in my future.

> APRS is a "send and forget" network - stations send messages to digipeaters and iGates
> without concern that they reaches their destination. Packets are independent and redundant. 
> They can be sent, received and routed by any other station in an unconnected manner.

## Going forward

I plan to join in #APRSThursday activities and use APRS during Scouting events. The APRS network has 
resources for JOTA, [Jamboree on the Air](https://www.jotajoti.info/jota).

Like all amateur radio broadcast activities, everything you do is public (so be safe and responsible). 
Anyone can track me online through different APRS services like [N2RWE APRS Tracker](http://aprs.n2rwe.com/station/W1YTQ-7/).

![Alt text](Screenshot from 2023-08-31 07-47-50.png)

If you want to learn more, here's an explanation that really helped me - [Introduction to APRS](https://n2rac.com/introduction-to-aprs-ddd4097a0dba) written by Angelo, N2RAC/DU2XXR.
 


