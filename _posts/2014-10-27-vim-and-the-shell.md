---
layout: post
title: "Running R code in secure shell using Vim"
description: "Running R code in ssh using Vim"
tags: [R, ssh, vim, code]
image:
  feature: abstract-6.jpg
  credit: dargadgetz
  creditlink: http://www.dargadgetz.com/ios-7-abstract-wallpaper-pack-for-iphone-5-and-ipod-touch-retina/
comments: true
share: true
---

##My computer :(

I have been using the same computer (a 2011 MacBook Air) for just over three years now.
It has been a great computer but occasionally I have some issues, 
most of which revolve around memory issues.
When I am using R to work with large data sets and have more
non-essential files stored on my computer than usual, I encounter 
kernal panics, runaway processes, and extreme sluggishness
with everything about the computer, including mouse movement.
The whole computer becomes essentially unusable, the code 
usually never finishes running and I have to start over.
I would happily trade almost any other problem in my life (which
is essentially "I can't watch youtube and code") for these computer
issues, but it has been especially galling during the last year.

##I've been doing a lot of data mining

Which means I am working with large datasets a lot lately. 
This means that my computer issues have become a daily routine for me in the last few weeks.
It has gotten so irritating that I finally decided 
to learn how to use our department's computing resources.
Specifically, I took advantage of an opportunity to learn how to batch submit my code to the linux machines the department keeps for us.

##Using Vim to submit R code to the terminal servers
The basic commands that I needed were commands log in to the terminal
(which prompts me for my password):
{% highlight bash %}
ssh -p 323 impact3.stat.iastate.edu -l imouzon
{% endhighlight %}
where `-p 323` is the port number `impact3.stat.iastate.edu` is the terminal
that I am trying to log in to, and `-l imouzon` is identifies my username.


