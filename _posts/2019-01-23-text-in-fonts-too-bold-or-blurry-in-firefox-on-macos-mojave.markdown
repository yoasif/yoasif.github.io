---
layout: reddit-post
title:  "Text in fonts too bold or blurry in Firefox on macOS Mojave?"
author: WerewolfAX
date:   2019-01-23 22:23:08 UTC
categories: social comments
tags: firefox macos
external-url: https://www.reddit.com/r/firefox/comments/aj3p2v/fonts_too_bold_since_firefox_devedition_660b1/eessjmm/
image: /assets/images/social-previews/firefox.png

---

<div class="self-post-content" markdown="1">

Hello Dear Firefox Community!

Since the last update of Firefox Developer Edition to v66.0b1 (64Bit) on macOS Mojave I've got a weird problem: It looks like the browser shifts the font-weight definition up on every website for one step. So what used to be 200 is now 300, 300 is 400 and so on. When I roll back to the previous version everything works fine again. Looks like the font rendering is broken since the update.

Is it just me or was there a change and maybe a bug with the font rendering?

Currently I only had the possibility to test it on macOS Mojave (10.14.2) so unfortunately I can't say if other operating systems are also affected by this. My other regular Firefox installation (stable, v64.0.2) on the same devices also still work as expected, so I don't think it's an OS related issue, especially because I can fix it by rolling back one FF Dev version.

I attach a little screenshot to maybe show you the problem a bit better:Left side is a screenshot from the previous Firefox Developer Edition version, right side is the 66.0b1.If you look at the screenshot in full size you see that the font on the right looks a bit bolder but still anti-aliased - the fonts just feel a bit "blurry" in person in comparison. And it adds some unnecessary weight on some pages and looks weird especially where the font size is quite small.

I already tried to purge caches to make sure there are no corrupt data there, tried a new user profile and fiddled with the hardware acceleration settings, but no changes there.

Thanks in advance for your help or feedback to that problem!

<p>
	<figure>
	<picture>
	  <img src="{{site.url}}/assets/images/reddit/e9agomwo68c21.jpg" alt="Side-by-side screenshots of Firefox" />
	</picture>
</figure>
</p>
</div>

<div class="comment-area" markdown="1">

### u/yoasif

It looks like this is the issue - but it looks like it is a [*fix*](https://bugzilla.mozilla.org/show_bug.cgi?id=1495282 "Some fonts are lighter weight after updating from macOS 10.13 to 10.14 Mojave").

Have you played with any of the font smoothing settings in Mojave? I know there were changes around that. Also, it may be significant if you are on an external high DPI display vs. one built in to a Mac.

This fixes a bug in Firefox. Compare the text to Safari - Firefox is respecting your platform setting instead of doing its own thing. 

Most Mac users want that. 

You can [disable font smoothing](https://blog.macsales.com/46527-is-macos-mojave-making-some-fonts-blurry-heres-how-to-fix-it) if you prefer that look.

FYI, if you are on a non-retina display, you will need to wait until Firefox 66 for a further fix (I guess developers are mostly on laptops with high DPI).
</div>

### Context

In the macOS Mojave 10.14 release, Apple [removed support for subpixel anti-aliasing](https://mjtsai.com/blog/2018/07/13/macos-10-14-mojave-removes-subpixel-anti-aliasing/) but kept "dilation" (bolding) for standard pixel density displays. Concurrently, the Firefox 2D rendering code ([Skia](https://skia.org/)) included a bug that [disabled gamma conversion](https://skia.googlesource.com/skia/+/16d00eeef7d18dcfd28725bcb4c15dad633ab7eb%5E%21/#F0), making fonts look thinner.

Mozilla shipped a fix for this in Firefox 66 to match the platform vendor (Apple).

This was a platform change, so users differed on which behavior they ended up preferring; while many users seemed to gravitate towards disabling font smoothing, on my low-DPI MacBook Air running Catalina, I still have font smoothing enabled. Clearly, Apple wants its customers on high-DPI displays, however -- with [fewer hacks](https://news.ycombinator.com/item?id=17477526) for making text look better on lower DPI displays.

---

{% include donate-social.html %} You can also message me on [Mastodon](https://mastodon.social/@yoasif).