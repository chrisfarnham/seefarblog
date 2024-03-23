---
layout: default
title: New Radio - an Icom IC-7300
last_modified_date: February 2, 2024
image: /sections/New_Radio_IC7300/PXL_20240131_203915682.jpg
toot_urls: https://mastodon.roundpond.net/@chrisfarnham/111881117555600475
nav_order: 82
---

# New Radio for my QTH, Icom's IC-7300

For almost a month now I've had a new radio at home, an [IC-7300](https://www.icomamerica.com/lineup/products/IC-7300/). When I was returning to amateur radio
and getting into HF in early 2023, I knew I wanted this radio. David Casler listed it as part of his
[General reference station](https://dcasler.com/reference/); the IC-7300 is one of the most popular HF
base stations today. It is a great beginner radio for the price.

There are a ton of great resources on the IC-7300 (a key reason I wanted one). Here is a 
[video from VK3BL]( https://www.youtube.com/watch?v=En86CBBm030) that I found especially helpful 
to learn how to tune my radio.

![Icom IC-7300 set up in the author's shack](PXL_20240131_203915682.jpg)

I started with the G-90 because I was new to the hobby and it was about half the price at the time of the IC-7300
and I knew for certain that I wanted to get into field and portable operations.

After a month with the IC-7300 I can tell you that it's a great radio for the money and I'm very glad it is my main
home base transceiver. The 100 watts output (as opposed to the G90's 20 watts output) makes it much easier to make
contacts farther away and be heard within a pile-up.

> Going from 20 watts to 100 makes it much easier to complete a QSO and be heard within a pile-up

## Great support for digital modes

![IC-7300 tuned to 20 meters FT8 frequency](PXL_20240112_005239338.jpg){: .image-right width="50%" height="auto"}

The IC-7300 has a built-in sound card and is ready out of the box for digital modes like FT8. I plugged the radio into
my Mac via a standard USB cable, installed and fired up [WSJT-X](https://wsjt.sourceforge.io/index.html)
and within 30 minutes or so, I was making my first FT8 contacts.

One issue I've experienced is EMI traveling from the radio, up the USB cable to my laptop. 
I've added some ferrite magnets to the
cable and it seems to happen less often. But it still happens once in a while. I probably need more ferrite
cores.

![](PXL_20240205_171612129.jpg)

Here's a screenshot of WSJT-X during an FT8 session.

![WSJT-X running FT8 on 20 meters](Screen Shot 2024-02-05 at 12.12.41 PM.png)

And here's a map of my FT8 contacts in the first 30 days of my radio.

![Map of my first FT8 contacts from my home shack](Screenshot from 2024-02-05 09-11-21.png){: width="700px" }

### Summary of my first 30 days with the radio

![](radio2.gif)

I like the waterfall display. The multitude of controls for customizing filters, CW tone and display 
are really pleasing. I'm really enjoying the radio and like the option of transmitting at 100 watts.

Here's are the contacts I made in the first 30 days of having my IC-7300.

![Map of contacts made in the first 30 days of having my IC-7300](contacts_made_first30_days_ic7300.png)

CW is my favorite mode. I do a lot of CW POTA hunting. Here's a chart showing my mode preferences.

![](pie_chart_of_modes.png){: width="500px" }

<!-- 
radio gif created with this command

$ ffmpeg -i PXL_20240104_002423495.mp4 -r 15 -vf scale=512:-1 \
  -ss 00:00:03 -to 00:00:06 radio.gif 

-->


## A Chat GPT analysis of my ADIF files

To digress, while writing this post, I exported an adif file and CSV file of my radio work since getting the IC-7300. 
On a whim I uploaded it to [Chat GPT](https://openai.com/chatgpt) and then asked it to summarize my activity.

I asked,
"Can you make generalizations regarding the relative median distances of the contacts made for the different mode categories?"

Chat GPT provided the following answer:

{::nomarkdown}
<div style="background-color: #ccefff; overflow: hidden; padding: 5px;">
{:/}
By analyzing the median distances for contacts made using different modes, we observe the following:

- **FT8:** The median distance for FT8 contacts is **1913 kilometers**, confirming its effectiveness for longer-distance communications compared to other modes. This further supports the notion that digital modes, especially those designed for weak signal work like FT8, are highly capable of establishing long-distance contacts.
- **CW (Continuous Wave):** CW contacts have a median distance of **999.5 kilometers**. While the average suggested CW was closer to SSB in terms of distance, the median indicates that a significant number of CW contacts are made at distances below the thousand-kilometer mark, though still capable of longer distances.
- **SSB (Single Side Band):** The median distance for SSB contacts is **727 kilometers**, which suggests that most SSB contacts fall within shorter to medium ranges, aligning with its common use for regional communications alongside its capacity for long-distance under favorable conditions.
- **C4FM:** Stays consistent with the shortest median contact distance at **277 kilometers**, reflecting its use primarily for local and regional communications. 

Using the median distances provides a perspective that is less affected by extreme values or outliers in the data, offering a clearer picture of the typical (central) distance achieved by each mode. This analysis underscores the effectiveness of digital modes like FT8 in making longer-distance contacts more consistently, while traditional modes like SSB and CW demonstrate a wide range of capabilities, from local to long-distance communications.
{::nomarkdown}
</div>
{:/}

I asked, can you show the data in a chart plotting each mode's distribution of contacts over an X-axis of "distance"?

![](distance_distribution_by_mode_high_contrast.png)

These distributions probably reflect my personal operating habits more than each mode's performance.

 - I'll often do SSB in the morning. So I get a lot of trans-atlantic SSB contacts
 - I do a lot of CW but it is mostly POTA hunting in the late afternoon. So it is mostly domestic contacts.
 - My FT8 use is spurious - sometimes in the evening while enjoying a drink