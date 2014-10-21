---
layout: post
title: "Vim as a blogging tool"
description: "The vim functions I am using at the moment"
tags: [vim, coding, markdown, blogging]
image:
  feature: vim-as-blog.png
  credit: Ian Mouzon 
  creditlink: http://imouzon.github.io
comments: true
share: true
---

#If I can do it in Vim, I'll be happy
##The issue is that if I can't do it in vim, then I won't
Because there are so many other things I need to do that can be done in [vim](http://www.youtube.com/watch?v=p6K4iIMlouI).
This has been at least part of my inability to keep my past blog attempts up-to-date.
I believed that there was some "best practice" structure that I wasn't using
that would make blogging the simple and enjoyable hobby that it seems to be 
for so many people.
I guess this is not the case. 
However, I am using a great template that I like
([HPSTR, by Michael Rose](https://mademistakes.com/articles/hpstr-jekyll-theme/))
and I am starting to get the markdown-jekyll-github cycle better 
(thanks to [Andee Kaplan](http://www.andeekaplan.com) 
and 
[Alex Shum](http://www.alshum.com))
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

So starting a new post, which will alway be stored initially 
in ~/github/imouzon.github.io/Rmarkdown/ requires
a few steps which are always basically the same.
I wrote the following vim function to help me do this:
{% highlight vim %}
"New blog post Rmarkdown
function! NewPost(...)
   "New blog post Rmarkdown
   function! NewPost(...)
      "where is the _posts folder located?
      let blog_base_folder = "~/github/imouzon.github.io/"

      "what is today's date
      let blogdate = strftime("%Y-%m-%d")

      "did a title get submitted
      if a:0 > 0
         let blogtitle = a:1
      else
         let blogtitle = "thoughts"
      end

      let blogloc = blog_base_folder."Rmarkdown/".blogdate."-".blogtitle.".rmd"

      "open the new blog post
      execute "sp " blogloc
   endfunction
{% endhighlight %}
And I created the quick command: 
{% highlight vim %}
"make a new blog post quickly
nmap <Leader>pp :call NewPost()<CR>
{% endhighlight %}

Additionally, 
using R and knitr to create the markdown file from the Rmarkdown file
requires another set of steps that are basically the same.
Thus I wrote the following vim function:
{% highlight vim %}
   function! KnitMD(...)
      if a:0 > 0
         let post_folder = a:1
      else
         let post_folder = '~/github/imouzon.github.io/_posts/'
      end
      let knit_cmd = 'silent !r --no-save --no-restore -e "require(knitr); knit(\"%\")"'
      execute knit_cmd
      execute 'silent !mv %:t:r.md ~/github/imouzon.github.io/_posts/%:t:r.md'
      execute "echom(\'A new post has been created in the _posts directory\')"
   endfunction

   "mp for make post
   nnoremap <silent> <Leader>mp :call KnitMD()<CR>
{% endhighlight %}

Note: LOL that the jekyll highlight tag for code written to be run by vim is vim and not vimscript.

