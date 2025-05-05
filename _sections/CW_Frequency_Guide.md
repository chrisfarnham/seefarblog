---
layout: default
title: W1YTQ's CW Frequency Guide
last_modified_date: May 5, 2025
image: /sections/CW_Frequency_Guide/vfo_photo.jpg
#toot_urls: https://mastodon.roundpond.net/@chrisfarnham/114322179642234707
nav_order: 54
---

{::nomarkdown}
<script type="module" src="https://d3js.org/d3.v7.min.js"></script>
{:/}

# W1YTQ's CW Frequency Guide for 20 and 40 Meters

After operating CW for a bit now I've realized that there are different points and areas on my dial
that I go to for different activities (e.g., POTA, SKCC, Slow Speed Test). I remember that when
I first began CW I had a sense that different CW operators and activities took place on different
areas of the band and I was unsure where I should be operating.

> The frequency charts in this journal entry were made using the [d3js](https://d3js.org/) Javascript library and
> a [few custom functions](https://gist.github.com/chrisfarnham/5f396b506efaf64118516b286929a41d)

In this journal entry I'll list different, specific areas for different CW activities. This entry
will include personal opinions or observations for different frequencies. I'll try to be clear when I'm
stating a personal opinion as opposed to a rule.

Note that this guide focuses on CW activities that I participate in.


![](vfo_photo.jpg)

I'm providing this guide as an aid and because I find it interesting. I am not dictating
which CW activities happen on which frequencies and enforcing it. I simply find it interesting
that by informal agreement or habit, as you walk your VFO knob up and down the band you'll find
pockets of operators congregating.

>  As you walk your VFO knob up and down the band you'll find pockets of operators congregating

## Sources for this entry

This entry relies on several sources along with my own observations.

### ARRL provided sources

The first and most important source is (for US amateur operators) is the [official band
plan](https://www.arrl.org/files/file/Regulatory/Band%20Chart/Hambands4_Color_17x11.pdf).
The official band plan is laid out in Part 97 of the FCC rules and
should be followed by all US licensed amateurs.

Additionally the ARRL publishes the [Considerate Operator's Frequency Guide](https://www.arrl.org/files/file/conop.pdf)
which documents "generally recognized" frequencies for different modes and activities.

### Less official sources

[BandPlans.com](https://www.bandplans.com/index.php?band=20) provides a crowd sourced band plan.

I've found various discussions of band plans and designated frequencies as well:

 - [Elecraft mail list thread](https://elecraft-kx.groups.io/g/main/topic/112101840)
 - Reddit [r/amateurradio thread](https://www.reddit.com/r/amateurradio/comments/1dxwci1/unofficial_band_plan_chart_or_graphic/)


## 20 meter CW frequency guide

Here are some official, suggested and personally observed CW frequencies on 20 meters.

{::nomarkdown}
<div id="chart1" class="chart"></div>
<script type="module">
    import { createChart, addPoint, addBar } from '/assets/js/frequency-chart-library.js';
    document.addEventListener("DOMContentLoaded", () => {
        function renderChart() {
            document.getElementById("chart1").innerHTML = "";

            const chart = createChart("chart1", [14000, 14150]);

            addBar(chart, 14060, 14065, "QRP Operations", 40);
            addPoint(chart, 14050, "Beginner QSOs", 10);
            addBar(chart, 14045, 14055, "Slower or Beginner CW", 95);
            addBar(chart, 14040, 14060, "SKCC", -80);
            addBar(chart, 14104, 14124, "SKCC Watering Hole", 15);
            addBar(chart, 14101, 14111, "Refuge During Contest Weekends", -35);
            addPoint(chart, 14047.5, "W1AW", 60);
            addBar(chart, 14071, 14074, "FT8 (No CW here)", -20);
            addBar(chart, 14028, 14045, "K1USN Weekly Slow Speed Test", -50);
            addBar(chart, 14000, 14030, "QRQ - Fast Code Here", 30);
            addBar(chart, 14000, 14020, "A lot of DX Stations", -20);
            addBar(chart, 14000, 14025, "Extra Class (US Amateurs)", -85);
        }

        renderChart();

        window.addEventListener("resize", renderChart);
    });
</script>
{:/}

### Official Extra plus DX and QRQ activities

The official CW frequencies as laid out in Part 97 are between 14000 and 14150 kHz. 14000 - 14025 kHz are
reserved for Extra class operators only.

I've observed that a lot of DX stations operate within the Extra portion of the band as well as faster CW or
QRQ (20 wpm and higher). Many of the faster operators operate outside of the Extra portion of the CW band
on the lower portion of the official General CW portions (see 'QRQ - Fast Code Here').

### Slow Speed Test

The [K1USN Slow Speed Test (SST)]({% link _sections/CW_SST_activity.md %}) which I participate in
most weeks suggests operating 20 meters
between 14028 and 14045 kHz. At midnight Zulu time on Mondays you'll see this portion of the
band light up with CW activity.

### SKCC Frequencies

[SKCC Member Operating Frequencies guide](https://www.skccgroup.com/membership_data/opfreq.php) recommends 14050 and
14114 kHz, + or - 10 kHz, for 20 meter operations. I mostly operate around the 14050 kHz mark.

### Beginner CW Operators

I've observed that many begining CW operators have their initial QSOs at or near 14050 kHz. So if you're new to CW
consider going to that portion of the band for your early activities. When there are operators on those frequencies
operating at slower speeds and requesting lots of repeats I know to slow down for them and take my time. I tend
to avoid those frequencies for when I'm calling CQ myself, knowing that newer operators tend to start out there.

> Consider 14050 kHz for your first CW QSO

I haven't seen these frequencies listed in any official sources as reserved for new operators, it is simply
what I've observed.

### W1AW

When ARRL headquarters, W1AW, sends their daily practices and code bulletins on CW 20 meters they're on 14047.5 kHz. Here is
[the W1AW operating schedule](https://www.arrl.org/w1aw-operating-schedule).

### QRP CW

The Considerate Operators Frequency Guide lists 14060 kHz as the calling frequency for QRP operations on 20 meters.
When I'm operating QRP I try to stay between 14060 and 14065 kHz.

### FT8 - the Great Digital Wall

![](PXL_20250505_192255819.jpg){: .image-left }

FT8, digital mode operations, is fixed at 14071 to 14074 kHz, a 3000 hertz bandwidth, and forms a sort of "digital wall."
CW happens on both sides of FT8's operating frequency but my mental map of CW operations tends to
separate operations as above
or below FT8. Most of my "regular" operations are below FT8. And then if the band is crowded I'll move above FT8 to
higher, less crowded portions of the band.

## 40 meter CW frequency guide

Here are some official, suggested and personally observed CW frequencies on 40 meters.

40 meters is similar to 20 with a few differences.

{::nomarkdown}
<div id="chart2" class="chart"></div>
<script type="module">
    import { createChart, addPoint, addBar } from '/assets/js/frequency-chart-library.js';
    document.addEventListener("DOMContentLoaded", () => {
        function renderChart() {
            document.getElementById("chart2").innerHTML = "";

            const chart = createChart("chart2", [7000, 7150]);

            addBar(chart, 7030, 7035, "QRP Operations", 60);
            addPoint(chart, 7050, "Beginner QSOs", 10);
            addBar(chart, 7045, 7055, "Slower or Beginner CW", 95);
            addBar(chart, 7101, 7111, "Refuge During Contest Weekends", -35);
            addPoint(chart, 7047.5, "W1AW", 40);
            addBar(chart, 7071, 7074, "FT8 (No CW here)", -20);
            addBar(chart, 7028, 7045, "K1USN Weekly Slow Speed Test", -50);
            addBar(chart, 7000, 7030, "QRQ - Fast Code Here", 30);
            addBar(chart, 7000, 7020, "A lot of DX Stations", -20);
            addBar(chart, 7000, 7025, "Extra Class (US Amateurs)", -85);
        }

        renderChart();

        window.addEventListener("resize", renderChart);
    });
</script>
{:/}


### SKCC on 40 meters

SKCC have primary and secondary suggested frequencies on 40 meters. The SKCC watering home is the same as 20 on X.114.

Beginner SKCC operators are encouraged to go to 7114 kHz.

{::nomarkdown}
<div id="chart3" class="chart"></div>
<script type="module">
    import { createChart, addPoint, addBar } from '/assets/js/frequency-chart-library.js';
    document.addEventListener("DOMContentLoaded", () => {
        function renderChart() {
            document.getElementById("chart3").innerHTML = "";

            const chart = createChart("chart3", [7020, 7160]);
            addBar(chart, 7028, 7048, "SKCC secondary", -25);
            addBar(chart, 7045, 7065, "SKCC primary", 15);
            addBar(chart, 7104, 7124, "SKCC Watering Hole", 15);
            addBar(chart, 7071, 7074, "FT8 (No CW here)", -20);
            addPoint(chart, 7114, "SKCC beginning operators", -25);
        }
        renderChart();

        window.addEventListener("resize", renderChart);
    });
</script>
{:/}

## I learned something new, what about you?

My early CW operations were on 20 meters only because, at the time, my QTH
antenna wouldn't get me on 40. I assumed, incorrectly, that the CW QRP calling frequency for 40 meters was
7060 kHz. In researching this journal entry I learned that the recommended frequency is 7030 kHz.

I've written about 20 and 40 meters today because those are the bands I operate on most frequently and where I have observed
different clustered CW activities.

If you have thoughts or feedback I'd love to hear from you.
