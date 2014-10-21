---
layout: post
title: "Vim as a blogging tool"
description: "The vim functions I am using at the moment"
tags: [vim, coding, markdown, blogging]
image:
  feature: vim-wallpaper.jpg
  credit: Michael Sokol
  creditlink: http://www.flickr.com/photos/\_ms123/
comments: true
share: true
---

#If I can do it in Vim, I'll be happy
The issue is that if I can't do it in vim, then I won't, 
because there are so many other things I need to do that can be done in vim.
This has been at least part of my inability to keep my past blog attempts up-to-date.
I believed that there was some "best practice" structure that I wasn't using
that would make blogging the simple and enjoyable hobby that it seems to be 
for so many people.
I guess this is not the case. 
However, I am using an wonderful template now ([HPSTR, by Michael Rose](https://mademistakes.com/articles/hpstr-jekyll-theme/))
and I "sort of" get the markdown-jekyll-github cycle better 
(thanks to [Andee Kaplan](http://www.andeekaplan.com) and [Alex Shum](http://www.alshum.com))
so this is getting easier.
It also helps that I started this time intentionally using vim and building my 
workflow around vim.

At the moment, I have my blog on github, which is synched with
~/github/imouzon.github.io/ on my computer.
I use R for most of my coding. 
For example, instead of directly using TeX, 
I use .rnw files and compile the code through knitr even when the amount of 
R code in the document is negligible.
The main reason I do this is that I wrote a bunch of functions that make
using rnw files so easy that writing even a plain LaTeX document 
is much faster if I start with the rnw file.
For the same reason, I am using Rmarkdown files and creating 
markdown files from them. This can (I have been told) cause problems
with github and thus I have created an folder Rmarkdown in my page folder that
is include in my .gitignore. 
