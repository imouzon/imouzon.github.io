---
layout: post
title: "Generating a Random Number Table"
description: "Making and saving your own Random Number Tables"
tags: [teaching]
image:
  feature: course_cover_image.jpg
share: true
---

# Using `RANDOM.org`

We can generate a random table and share it by giving the table an ID:

1. Go to [https://www.random.org/integers/](https://www.random.org/integers/)
2. Click the button `Switch to Advanced Mode` near the bottom of the page.
3. We want to generate enough five digit integers to create a table. I chose the following options:
   -  100 integers
   -  minimum = 0, maximum = 99999
   -  formatted into 10 columns
4. We want "decimal (base 10)" integers
5. The format is up to you - "nicely formatted HTML" displays the numbers on the page for you though
6. For Part 4, I chose to name my table so that I could keep a record of it. I named it `stat105_RT1`. If you give the table that name, you will get the same one I got. Here are my results:
```
89767	17740	50259	90413	5485	54214	42088	52180	13706	4053
35120	74584	48423	55755	18069	11644	87145	23043	65272	69458
26984	29718	92529	85579	61767	43266	81009	32068	39953	9505
69999	94123	1302	60747	54054	84983	79649	9191	90631	52607
40125	53111	87739	79359	51957	6789	49712	36207	72129	88188
64812	70019	49407	77845	95137	83186	3210	7722	99422	53751
37247	14094	32468	95015	13522	45059	81696	17288	82793	16540
63296	3513	24782	68591	52621	45473	35531	28479	18681	11357
77617	43361	95945	90231	4250	57648	52506	14438	44665	50170
52253	25670	25108	60972	19463	90993	67868	58168	94972	56313
```
I even got a timestamp: `Timestamp: 2015-09-01 16:47:45 UTC` 

It's not perfect - we should change `1302` to `01302` and `9191` to `09191` since the leading blanks are really just 0, for instance.
However, we now have a new random table that we can use whenever we want and we can document how we generated it in the first place (the table was created using `RANDOM.org` on 2015-09-01 at 16:47:45 UTC and is stored as `stat105_RT1`)
