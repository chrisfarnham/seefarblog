---
layout: default
title: Radio log file processing with Python
last_modified_date: January 15, 2025
image: /sections/Adif_Python_Analysis/adif_python.png
#toot_urls: https://mastodon.roundpond.net/@chrisfarnham/113817166024373267
nav_order: 61
---

# Using Python to analyze and filter adi files

I'm a Software Engineer by trade so I am lucky that when there is an amateur radio problem
related to data or software I can often write a script or patch to address it.

![](adif_python.png)


While writing my [2024 retrospective post]({% link _sections/Radio_Goals_2025.md %}) I
wrote my own Python script to see
a summary of QSOs for each operating mode, SSB (voice), CW (Morse Code), or digital (FT8).

I recently set a goal to operate with a straight key only and earn [Straight Key Century Club (SCKCC)](https://www.skccgroup.com/)
Centurion status by logging QSOs with 100 other SKCC members. Doing so meant tracking my SKCC contacts to submit for the award
in a separate digital ledger. I use QRZ's logger for my QSOs
(as described in a [previous post on my logging practices]({% link _sections/Logging_Practices.md %})).

Continuing to log with QRZ as I have posed some issues:

 - Not every QSO I have is with an SKCC member
 - QRZ's logbook application is basic and doesn't support filtering by the comment field

**I write `SKCC# [their ID number]` in the comment field for each SKCC QSO I log. Can I somehow
filter by comment text and avoid manually maintaining a second SKCC-specific logbook?**

## SKCC specific logging via a custom Python script

The simple Pyton script I wrote to analyze my 2024 QSOs was saved in a github repository
([github.com/chrisfarnham/ham-radio-utils](https://github.com/chrisfarnham/ham-radio-utils)).

I updated the script and added an additional command that checked each QSO record for a comment
field containing SKCC and then writing those to a new adi file. Now, I can log my radio
contacts as I always do and select only my SKCC QSOs for SKCC specific logging and awards.

The image below shows my updated logging flow.
![](Radio Logging Workflow.png)


## The adif-io Python library

Reading and writing ADIF files is easy with the
[adif-io Python library](https://gitlab.com/andreas_krueger_py/adif_io) written by [DJ3EI](https://www.qrz.com/db/DJ3EI).

If you want to use my utility script as written or fork it for your own needs, please do so. The rest of this
journal entry provides some basic examples of adif-io Python code so you can write your own scripts.

> Here are some basic examples of processing adif files with `adif-io`

### Installing the adif-io library

You should be using Python 3. I recommend you create a virtual environment (e.g., with `pyenv`).

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

## Share your scripts and programs with me

I'd love to learn about your logging utilities and scripts. A good way to respond is through
[Mastodon](https://mastodon.roundpond.net/@chrisfarnham), a federated social network. Right now, with
the help of my Python scripts,
QRZ logging works well enough.

I intend to use something more sophisticated at some point, maybe ([WaveLog](https://www.wavelog.org/)).
