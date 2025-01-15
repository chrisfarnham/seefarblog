---
layout: default
title: Streamlined radio log processing with Python
last_modified_date: January 15, 2025
image: /sections/Adif_Python_Analysis/adif_python.png
#toot_urls: https://mastodon.roundpond.net/@chrisfarnham/113817166024373267
nav_order: 61
---

# Using Python to analyze and filter adif log files
{: .no_toc }

I'm a Software Engineer by trade. When facing issues with radio log data
or software I can write a script or patch to address it.

## Jump directly to Python code
{: .no_toc .text-delta }

1. TOC
{: toc }

![](adif_python.png)


While writing my [2024 retrospective post]({% link _sections/Radio_Goals_2025.md %}) I
wrote some Python code to summarize my QSOs by operating mode (SSB [voice], CW [Morse Code], or digital [FT8]).

![](../Radio_Goals_2025/operating_modes_breakdown.png){: .image-right width="350px"}


I recently set a goal to earn my [Straight Key Century Club (SCKCC)](https://www.skccgroup.com/)
Centurion award by logging QSOs with 100 other SKCC members. To apply for the award I need to track and submit my SKCC contacts
in a separate digital ledger.

> I described my logging workflows [in a previous post]({% link _sections/Logging_Practices.md %})

I use QRZ's logger and this poses some issues:

 - Not every QSO I have is with an SKCC member
 - No way to filter by comment text in QRZ's basic logging app

Manually selecting SKCC QSOs for export then import into the SKCC logger is a pain.
However, when logging SKCC QSOs I write `SKCC# [their ID number]` in the comment field.
Could I filter by comments containing the text 'SKCC' and avoid manually selecting SKCC QSO records?

![](Screenshot 2025-01-15 at 3.31.17 PM.png){: .image-right }


## SKCC specific logging via a custom Python script
{: .no_toc }

My solution was to update my QSO analysis script. I added a new command (`./process-adif.py skcc`)
to check each QSO record for a comment
field containing SKCC and write those to a new adi file.

Now, I can log my radio contacts as usual and have the script filter for SKCC QSOs to submit to the club.

You can find my Python adif filtering and analysis scripts at
[github.com/chrisfarnham/ham-radio-utils](https://github.com/chrisfarnham/ham-radio-utils).
If you want to use my utility script as written or fork it for your own needs, please do so.

> I had an itch that Python could scratch

The image below shows my SKCC logging flow.
![](Radio Logging Workflow.png)


## Example adif-io Python code

Reading and writing ADIF files is easy with the
[adif-io Python library](https://gitlab.com/andreas_krueger_py/adif_io) written by [DJ3EI](https://www.qrz.com/db/DJ3EI).

Here are some basic examples of adif-io Python code so you can write your own scripts.

### Installing the adif-io library

You should be using Python 3. I recommend you create a virtual environment (e.g., with `pyenv`) to write and
manage your scripts and dependencies.

```bash
pip install adif-io
```

### Reading an ADIF file with Python

```python
import adif_io

adif = 'qso_logs.adi'
with open(adif, 'r', encoding="ISO-8859-1") as rf:
    content = ''.join(rf.readlines())
    qsos, header = adif_io.read_from_string(content)
```

### Writing an ADIF file with Python

```python
import adif_io

qsos = filter_skcc(qsos_list)
headers = {
    "generated_by": "Source code found at https://github.com/chrisfarnham/ham-radio-utils",
    "description": "Only QSOs with SKCC in comments",
}
headers = adif_io.headers_from_dict(headers)
with open('upated_qso_logs.adi'), 'w',  encoding="ISO-8859-1") as wf:
    wf.writelines(adif_io.headers_to_adif(headers))
    wf.writelines((adif_io.qso_to_adif(q) for q in qsos))
```

### From adif file to dataframe

Dataframes are used like Excel tables in programs to sort, filter and analyze data. Here's how to
turn `adif-io` records into a  [polars](https://pola.rs/) dataframe for analysis.

```bash
pip install polars
```


```python
import adif_io
import polars as pl

# qsos iterable created earlier, probably by reading in adi file (see above)
qsos = ...
dataframe = pl.DataFrame([{k: v for k, v in q.items()} for q in qsos])

# analyze QSO data using Polars data analysis tools
# Example, count and sort unique call signs to see your top 10 contacts
call_counts = dataframe['CALL'].value_counts().sort('count', descending=True)
top_10_calls = call_counts.head(10)
print("Top 10 CALL entries:")
print(top_10_calls)
```


Here's what the dataframe data looks like when printed to the console.

![](Screenshot 2025-01-15 at 9.10.27 AM.png)

## Share your scripts and programs
{: .no_toc }

I'd love to learn about your logging utilities and scripts. A good way to respond is through
[Mastodon](https://mastodon.roundpond.net/@chrisfarnham), a federated social network. Right now, with
the help of my Python scripts,
QRZ logging works well enough.

I intend to use something more sophisticated at some point, maybe ([WaveLog](https://www.wavelog.org/)).
