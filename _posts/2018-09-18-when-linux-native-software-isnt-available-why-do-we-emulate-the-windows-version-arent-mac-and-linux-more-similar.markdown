---
layout: post
title:  "When Linux native software isn’t available, why do we “emulate” the Windows version? Aren&rsquo;t Mac and Linux more similar?"
date:   2018-09-18 16:48:14 UTC
categories: social comments
tags: firefox ui
external-url: 
image: 

---

> I’ve probably used a bunch of incorrect terms but please bear with me.
>
> I was just thinking from what I’ve gathered MacOS/OSX seems pretty similar to linux, and there are linux packages and stuff that have been ported over/works on MacOS that were originally designed for linux (stuff via homebrew for example). This made me wonder: would it be easier to somehow “emulate”/port over Mac versions of software vs Windows?
>
> So for example, with Photoshop, it has a Mac and Windows version. Now I know that if you tinker with WINE, it will work ok in linux, but would it be easier to work off the MacOS version? And if so, why is it more common to work off the Windows version?
>
> Sorry if I’m rambling on/don’t know what I’m talking about, but I’m interested in what you guys think. 

If more work were put into [GNUstep](https://gnustep.github.io/), more macOS software could be recompiled for GNUstep to run on Linux or BSD or whatever.

[Darling](https://www.darlinghq.org/) works on CLI apps (or used to last I checked), but doesn't work for the nice GUI apps that you might want to use. WINE, as mentioned by another poster, is mature and runs Windows binaries unmodified.

### Context

I had been both a Classic Mac OS and Mac OS X user before I moved to Linux, and I had used [Mail.app](https://en.wikipedia.org/wiki/Apple_Mail) as my GUI mail client on OS X. While I most often used Thunderbird, I missed the lightweight Mac Mail app, and learned that NeXTMail had been forked to [GNUMail.app](https://mediawiki.gnustep.org/index.php/GNUMail.app), and that it was available for Linux. 

That led to learning about both GNUstep and [Étoilé](http://etoileos.com/), another stagnant project to bring NeXTSTEP and Mac OS functionality to an open source OS.

Unfortunately all of the projects seem to basically be at a standstill today.

---

{% include donate-social.html %} You can also message me on [Mastodon](https://mastodon.social/@yoasif).