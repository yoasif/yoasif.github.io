---
layout: post
title:  "Microsoft Edge is Now Taking Over as Your Default Browser… on Linux"
date:   2022-04-12 03:30:00 -0400
categories: writing
tags: Microsoft-Edge Linux
---

If you are like most deskop Linux users, if you have heard of the various intrusive ways Microsoft has used to *"encourage"* Windows users to use their Chromium-based browser, *Edge*, you probably smugly thought something like "well, it *is* Windows, so they can do what they think is best on the platform they own" or "sounds like a good reason to use Linux".

Well, that is over - if you choose to install Edge on certain Linux distributions (like Ubuntu).

Discuss this post on [reddit](https://www.reddit.com/r/linux/duplicates/u1tgyx/microsoft_edge_is_now_taking_over_as_your_default/).

* * *

## Timeline of Dark Patterns

If you haven't heard of the various ways Microsoft has used dark patterns to get people to use Edge, here's a quick recap. If you want to skip over the history lesson, [go ahead](#overriding-user-choices-on-linux).

* **July 30, 2015** - Mozilla CEO Chris Beard penned an open letter to Microsoft CEO Satya Nadella [asking Microsoft to stop overriding user choices by setting Edge as the default browser when upgrading to Windows 10](https://blog.mozilla.org/en/products/firefox/an-open-letter-to-microsofts-ceo-dont-roll-back-the-clock-on-choice-and-control/). He wrote: "When we first saw the Windows 10 upgrade experience that strips users of their choice by effectively overriding existing user preferences for the Web browser and other apps, we reached out to your team to discuss this issue. Unfortunately, it didn’t result in any meaningful progress, hence this letter."
* **January 24, 2017** - Vivaldi CEO and founder Jon von Tetzchner (who also founded Opera in the 1990s) [weighed in as well](https://web.archive.org/web/20170124205122/https://vivaldi.net/en-US/teamblog/220-it-s-time-to-do-the-right-thing-microsoft), saying: "Every time Windows 10 upgrades, it changes the default browser to Edge. Same thing tends to happen when a new browser is installed – for some reason, it leads to restoring Edge as the default option. Not the new browser, and not even the browser that was there as a default one previously."
* **June 20, 2020** - reddit users found that Microsoft was [automatically importing Firefox data into Edge](https://news.softpedia.com/news/microsoft-edge-accused-of-sneakily-importing-firefox-data-on-windows-10-530338.shtml) without their permission. 
* **Aug 18, 2021** - The Verge reported that [Microsoft is making it harder to switch default browsers in Windows 11](https://www.theverge.com/22630319/microsoft-windows-11-default-browser-changes), saying that: "In Windows 11, Microsoft has changed the way you set default apps. Like Windows 10, there’s a prompt that appears when you install a new browser and open a web link for the first time. It’s the only opportunity to easily switch browsers, though. Unless you tick “always use this app,” the default will never be changed. It’s incredibly easy to forget to toggle the “always use this app” option, and simply launch the browser you want from this prompt and never see this default choice again when you click web links."
* **Dec 2, 2021** - Neowin [posted](https://www.neowin.net/news/microsoft-says-its-own-edge-browser-is-more-trustworthy-than-so-2008-google-chrome/) that Bing searches for Chrome showed messages steering people away from downloading another browser. 
* **December 10, 2021** - Jon von Tetzchner once again [posted about Microsoft's tactics](https://vivaldi.com/blog/microsoft-back-to-its-old-tricks-to-get-an-edge-on-the-competition/), saying that "Microsoft’s moves seem desperate. And familiar. It is clear they don’t want you to use other browsers. They even offer to pay you to use the browser via their Microsoft Rewards program. This is not the behavior of a confident company developing a superior browser. It’s the behavior of a company openly abusing its powerful position to push people to use its inferior product, simply because it can."
* **November 11, 2021** - Microsoft [blocked apps like EdgeDeflector](https://www.ctrl.blog/entry/microsoft-edge-protocol-competition.html), an application developed to intercept microsoft-edge:// links to redirect them to https:// links that open in your default web browser. 
* **Nov 15, 2021** - A Microsoft spokesperson [said in a statement to The Verge](https://www.theverge.com/2021/11/15/22782802/microsoft-block-edgedeflector-windows-11) that "Windows openly enables applications and services on its platform, including various web browsers. At the same time, Windows also offers certain end-to-end customer experiences in both Windows 10 and Windows 11, the search experience from the taskbar is one such example of an end-to-end experience that is not designed to be redirected. When we become aware of improper redirection, we issue a fix." when browser developers figuered out ways to redirect Start menu searches back to their preferred (default) browser. 
* **Nov 27, 2021** - Senior Editor at the Verge Tom Warren [observed](https://twitter.com/tomwarren/status/1464624781471404035) that Microsoft is using full screen prompts to push people into using Edge and Bing.

This is all just Edge, of course. Microsoft has some additional history here - [in the early 2000s](https://en.wikipedia.org/wiki/United_States_v._Microsoft_Corp.), Microsoft was found to have unlawfully maintained a monopoly by tying its previous browser, Internet Explorer, with its operating system, Windows.

## Overriding User Choices on Linux

All you Linux users, I can already hear you... "just use Linux". Sorry folks, but even using Linux won't save you - not anymore. 

That is because at least as of Microsoft Edge 100.0.1185.39 on Debian and Debian derivatives like Ubuntu, installing Edge will override your existing default browser, setting it to Edge - *without any prompt or permission*. The .rpm file that Microsoft also provides doesn't seem to have this behavior in my testing on Fedora 35.

[ilgazcl](https://www.reddit.com/user/ilgazcl) first posted about this [on reddit](https://www.reddit.com/r/firefox/comments/u15h0p/i_just_installed_microsoft_edge_for_linux_and_it/), and I was surprised - I wouldn't have thought that Microsoft would set itself as the default without asking for permission. They don't do that on macOS, for example. 

Unfortunately, it is true, and very easy to verify. I downloaded Ubuntu 21.10 and installed Edge. Edge was set as my default browser immediately upon install, without even needing to *open* the browser.

It seems like the way that they are accomplishing this is via the Debian package's [postinst](https://www.debian.org/doc/debian-policy/ch-maintainerscripts.html) file, which includes the following snippet:

```
CHANNEL=stable
case $CHANNEL in
  stable )
    # Good enough to be the default.
    PRIORITY=200
    ;;
  beta )
    # Almost good enough to be the default. (Firefox stable should arguably be
    # higher than this, but since that's below the "Epiphany threshold", we're
    # not setting our priority below it. Anyone want to poke Firefox to raise
    # their priority?)
    PRIORITY=150
    ;;
  unstable )
    # Unstable, give it the "lowest" priority.
    PRIORITY=120
    ;;
  * )
    PRIORITY=0
    ;;
esac

update-alternatives --install /usr/bin/x-www-browser x-www-browser \
  /usr/bin/microsoft-edge-stable $PRIORITY
update-alternatives --install /usr/bin/gnome-www-browser gnome-www-browser \
  /usr/bin/microsoft-edge-stable $PRIORITY

update-alternatives --install /usr/bin/microsoft-edge microsoft-edge \
  /usr/bin/microsoft-edge-stable $PRIORITY
``` 
which seems to do the trick. 

I've archived a copy of the [postinst file]({{site.url}}/assets/data/2022-04-12-microsoft-edge-is-now-taking-over-as-your-default-browser-on-linux/postinst) from the `microsoft-edge-stable_100.0.1185.39-1_amd64.deb` package I downloaded if you want to take a closer look.

Should we be surprised about these tactics? We were once told that [Microsoft ❤️ Linux](https://cloudblogs.microsoft.com/windowsserver/2015/05/06/microsoft-loves-linux/) - I would have thought that would mean some respect for Linux users' choice of browser.

Merely installing a program doesn't mean that people automatically want it to take over every filetype or protocol that it can handle - that is the case for image viewers and Bittorrent clients and everything in between - and it has always been considered bad form to do this without permission. 

Microsoft should do better here, especially since they are guests on Linux platforms - as they do on macOS, they should **ask for permission**.

---

Feel free to give me feedback on this post on [reddit](https://www.reddit.com/r/linux/duplicates/u1tgyx/microsoft_edge_is_now_taking_over_as_your_default/). 