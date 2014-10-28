---
layout: post
title: "Running R code in secure shell using Vim"
description: "Running R code in ssh using Vim"
tags: [R, ssh, vim, code]
image:
  feature: beverlyhills\_1984.jpg
  credit: Anthony Hernandez
  creditlink: http://www.cgrimes.com/exhibitions/2006/beverly-hills-broadway/
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

##Submit R code to the terminal servers
The basic commands that I needed were commands log in to the terminal
(which prompts me for my password):
{% highlight bash %}
ssh -p 323 impact3.stat.iastate.edu -l imouzon
{% endhighlight %}
where `-p 323` is the port number `impact3.stat.iastate.edu` is the terminal
that I am trying to log in to, and `-l imouzon` is identifies my username.
I also needed to be able to batch submit my R code (which we will call `test.r`):
{% highlight bash %}
R CMD BATCH test.r &
{% endhighlight %}
which can run without locking up my system at all and without 
being greedy about resources by using the following:
{% highlight bash %}
nohup nice R CMD BATCH test.r &
{% endhighlight %}
`nohup` keeps running the code even if I logout and `nice` submits the code at low enough
priority that it won't interfere with other users work.

##Using Vim to submit code and gather the results
Since I do everything in Vim, it made sense to automate the code so that I could submit
the code out of Vim using a single command.
This led me to write a function that copies the code I am working on from my personal
computer to the terminal, runs the code using the terminal servers, and returns
the results of the submission to my computer. 
As a side note, this whole process is only possible because I set up my computer
so that I wouldn't have to enter my password every time I log on to the server.

A function to copy the current file to the impact server:
{% highlight vim %}
   function! CopyImpactR(...)
      "username
      let user = "imouzon"
   
      "smb subfolder
      let smbsubfolder = '/R/'
      
      "smb folder prefix
      let smbfolder = "/Volumes/".user.smbsubfolder
      
      "which impact do I want to use
      if a:0 > 0
         let filename = a:1
      else
         let filename = expand('%:t')
      end
   
      "create the final copy command:
      let CI_command = '!cp '.expand('%:p').' '.smbfolder.filename
   
      "run the copy command
      execute CI_command
   endfunction
{% endhighlight %}

A function to run R code in the terminal:
{% highlight vim %}
   function! SSHrunsR(Rfile,sshcmd,be_nice,be_hup,be_and)
      "p1: set up R command line
         if a:be_nice > 0
            let how_nice = 'nice'
         else
            let how_nice = ''
         end
   
         "turned hup for what
         if a:be_hup > 0
            let how_hup = ''
         else
            let how_hup = 'nohup'
         end
   
         "and ampersand
         if a:be_and > 0
            let how_and = ' &'
         else
            let how_and = ''
         end
   
         "
         let RCMD = ' "'.how_hup.' '.how_nice.' R CMD BATCH ./R/'.a:Rfile.how_and.'"'
      
      "p2: run the Rcode on the impact server
         "Full form of command to submit
         let sshR = a:sshcmd.RCMD
   
         "Run some R code
         execute sshR
   endfunction
{% endhighlight %}

A function that copies the current R file, submits to the terminal, and moves the output to
the local folder the R code is stored in:
{% highlight vim %}
   "copy R code to the terminal
   function! RtoSSH(...)
      "p1: copy the R code so it is available to impact
         "Copy the current R file to the impact folder
         execute CopyImpactR()
   
      "p2: set up variables for paths/commands
      "    user, server, rfolder
         "username
         let user = "imouzon"
   
         "smb folder prefix
         let smbfolder = "/Volumes/".user
   
         "server number
         let serverNo = 3
   
         "server name
         let server = 'impact'.serverNo.'.stat.iastate.edu'
   
         "port number
         let portNo = 323
      
         "form of the ssh command
         let sshcmd = '!ssh -p '.portNo.' '.server.' -l '.user
         
      "p3: Knowing where the Rcode is stored
      "    the Rfolder, the Rfile
      
         "R folder: where has the R code been put?
         let Rfolder = smbfolder.'/R/'
   
         "Rfile to run
         let Rfile = expand('%:t')
   
      "p4: batch submit the code
         call SSHrunsR(Rfile,sshcmd,1,0,1)
   
      "p5: Now that the R code has run, retrieve the R output
         "files current directory
         let resultsDir = expand('%:p:h')
   
         "Output file extension
         let outext = '.rds'
   
         "create command to retrieve the R output
         let retrieveR = 'silent !mv '.Rfolder.'/*'.outext.' '.resultsDir
   
         "and retrieve it
         execute retrieveR
   endfunction
{% endhighlight %}

and an easy to remember key binding that does all of this automatically:
{% highlight vim %}
nmap <Leader>sshR :call RtoSSH()<CR>
{% endhighlight %}


