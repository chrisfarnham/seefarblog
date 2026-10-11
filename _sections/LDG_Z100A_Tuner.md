---
layout: default
title: A new tuner for my FT-891 and Rybakov
last_modified_date: October 11, 2026
image: /sections/LDG_Z100A_Tuner/PXL_20261011_160217767.jpg
nav_order: 40
---

# A new tuner for my FT-891 and Rybakov

Today, October 11, 2026, I activated Minute Man National Historical Park
([US-0745](https://pota.app/#/park/US-0745)) with my Yaesu FT-891 and my Rybakov antenna for the first time.
The difference was a new LDG Z-100A automatic antenna tuner. It was easy to use and I had a great day.

![My FT-891, battery, LDG Z-100A tuner and notebook on a folding table with the Rybakov vertical standing in the field behind them](PXL_20261011_154340932.jpg)

## Why I needed a tuner

Unlike my Xiegu G90, which includes a great tuner, the FT-891 has no tuner. If I want to use non-resonant antennas
like my Rybakov, one of my favorites, I needed a solution. My 5 watt
[Elecraft KH1]({% link _sections/New_KH1_Elecraft_HF_Radio.md %}), the little radio that could, has a tuner built in
too and has been matching the Rybakov for me for a while.

I ran into this when I took the FT-891 to [Peddocks Island]({% link _sections/FT891_at_Peddocks_Island.md %}). Without a tuner
my resonant quarter-wave whip was its best field antenna, and I said I'd pick up an external tuner like an LDG Z-100.

An antenna tuner (also called a matching unit) makes an antenna that isn't the right length for a band look like
the load the radio wants to see. The measure of how well matched you are is SWR, or standing wave ratio. Lower is better.

My [Rybakov antenna]({% link _sections/Rybakov_Antenna.md %}) is a vertical, about 25 feet of wire with a 4 to 1
transformer, and it isn't resonant. That is why it needs a tuner. It's also a great antenna for distance (DX) contacts.
With the KH1's tuner, the Rybakov has reached
[Japan on 5 watts]({% link _sections/POTA_with_Friends_2025.md %}) (Adam made that contact)
and [Sweden from Peddocks Island]({% link _sections/Back_to_Peddocks_Island.md %}).

## The LDG Z-100A

Here's what [LDG lists for the Z-100A](https://www.ldgelectronics.com/z-100-a):

 - 1.8 to 54 MHz coverage ([per Ham Radio Outlet](https://www.hamradio.com/detail.cfm?pid=H0-017318))
 - 100 watts on CW and 0.1 to 125 watts on SSB
 - 2,000 memories, so it recalls a frequency it has already tuned
 - A tuning range of 10:1 SWR
 - 13.8 volts DC, about 250 mA while tuning and 20 mA when idle
 - Interface cables for Yaesu, Icom, Kenwood and Alinco radios in the box

The 20 mA idle draw matters for a battery operator like me. The tuner uses latching relays, which means it
only draws power while it is changing something.

## Setting it up

I use a folding table in the field. The FT-891 sits at the left and the tuner at the right, with my 8 amp-hour
battery between them for power. The Rybakov is in the grass behind the table, held up by its guylines.

Here's the front of the tuner. It has one TUNE button and two lights, one for SWR and one for status.

![The front of the LDG Z-100A with a TUNE button, an SWR light and a STATUS light](PXL_20261011_160217767.jpg)

Here's the back of the FT-891 with its coax, power lead and a couple of other cables connected.

![The rear panel of the Yaesu FT-891 with coax, DC power and two other cables plugged in](PXL_20261011_160223859.jpg)

The back of the tuner is clearly labeled. There are four connections: ANT, GND, RADIO and INTERFACE. The coax from
the radio goes into RADIO. The coax to the Rybakov goes into ANT. The interface cable links the tuner to the radio
so the two can work together.

![The back of the LDG Z-100A with ANT, GND, RADIO and INTERFACE connections and two coax cables plugged in](PXL_20261011_160227370.jpg)

On the radio side, I set the FT-891's tuner setting to LAMP. LAMP stands for linear amplifier. The setting lets an
LDG tuner use the radio's amplifier control circuit to run the radio while it tunes
([KB9VBR explains it for a different LDG model](https://www.jpole-antenna.com/2021/08/13/how-to-use-an-automatic-antenna-tuner-with-a-yaesu-ft-891-ldg-z11-pro-ii/)).
It's menu item 16-15, "Tuner select." Other operators pairing a Z-100A with an FT-891
[arrived at the same setting](https://groups.io/g/ldgelectronics/topic/z_100a_and_ft891_no_tune_4/82581996).

Once everything was connected, tuning came down to one button. LDG says you press the tuner button and the tuner finds a
match and stores it in memory for next time.

## A great day

I operated from 11:21 AM to 1:05 PM and made 39 contacts, on 20, 15 and 10 meters, in both SSB and CW.
I ran 50 watts on CW and 80 watts on SSB, both within the Z-100A's limits.
The fall colors were turning at Minute Man and it was a pleasure to be out in the park.

Here's the FT-891 on 21.046 MHz CW with my key and my notebook.

![The FT-891 tuned to 21.046 MHz with a paddle key, notebook and the LDG tuner on the table](PXL_20261011_163557360.jpg)

Eight of the 39 contacts were DX. I worked Spain, Italy, France, Austria and the Dominican Republic. My longest was
[OE3KAB](https://www.qrz.com/db/OE3KAB) in Austria on 20 meter CW, about 4,000 miles away. Thirty-one contacts were in the
United States, spread across 17 states.

![Map of the day's contacts with lines reaching across the United States, to Spain, Italy, France and Austria, and south to the Dominican Republic](QSO_map_Oct_11_2026.png)

I logged by hand again and used Claude to turn photos of my notebook pages into an ADIF file, the same way I did
for [yesterday's activation]({% link _sections/Paper_Log_to_ADIF.md %}). I also took screenshots of POTA spots on my
phone to check the log against.

## Going forward

I'm happy with the Z-100A. The FT-891 and Rybakov make a good field pair now, and I look forward to many more activations with them.
I'd love to hear from others who use an external tuner with a non-resonant antenna.
