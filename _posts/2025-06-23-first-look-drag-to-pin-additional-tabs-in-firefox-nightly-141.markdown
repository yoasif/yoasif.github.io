---
layout: post
title:  "First Look: Drag to Pin Additional Tabs in Firefox Nightly 141"
date:   2025-06-23 12:24 -0500
categories: writing
tags: firefox
external-url: 
image: /assets/images/social-previews/drag-to-pin.png
redirect_from: 

---

**TL;DR**: Firefox has a new feature to let you pin additional tabs when you have an existing pinned tab in the window.

I made <a href="https://www.youtube.com/watch?v=Az6godiB0TE">a video</a> if you want to watch instead.

<p>
<figure>
	<a href="https://www.youtube.com/watch?v=Az6godiB0TE">
	<picture>
	  <source type="image/png" srcset="{{site.url}}/assets/images/thumbnails/drag-pin-yt.png,
	  								   {{site.url}}/assets/images/thumbnails/drag-pin-yt-2x.png 2x">
	  <img src="{{site.url}}/assets/images/thumbnails/drag-pin-yt.png" srcset="{{site.url}}/assets/images/thumbnails/drag-pin-yt-2x.png 2x" alt="A picture of a YouTube video"/>
	  <figcaption>First Look: Drag to Pin Additional Tabs in Firefox Nightly</figcaption>
	</picture>
	</a>
</figure>
</p>

---

{:toc}
* toc

A couple of days ago, the Firefox Nightly account on Mastodon [posted that Firefox had added a new feature to let you pin tabs by dragging them](https://mastodon.social/@firefoxnightly/114692384402255950).

<video controls>

  <source src="{{site.url}}/assets/videos/firefox-tab-pinning/1944907-firefox-mastodon.mp4" type="video/mp4" />

  Download the
  <a href="{{site.url}}/assets/videos/firefox-tab-pinning/1944907-firefox-mastodon.mp4">MP4</a>
  video.
</video>

Paul Wright also [posted about it on the Mozilla Discourse](https://discourse.mozilla.org/t/foxfooding-drag-a-tab-to-pin-a-tab/144213), inviting people to check it out.

Based on Paul's encouragement, I decided to take a closer look at the new feature.

## Introduction

At first, I thought I would be able to pin a tab by just dragging and dropping.

Once I looked at the [bug](https://bugzilla.mozilla.org/show_bug.cgi?id=1944907), it became clear that you had to have a pinned tab before you could pin _more_ tabs via drag and drop. 

That seems like an obvious feature that will get requested soon.

## Testing

In my testing, I noticed some papercuts that could be improved. 

When dragging a tab into or or out of the tab strip, the drag happens without any affordances. While the tab is animated as you drag, the tab doesn't transform to look like a pinned tab as you drag it into the drop zone. In fact, there is no indication that _anything_ is going to happen once you drop into the strip.

The area where you are dragging the tab to doesn't shift to make room for the tab you are dragging in. You can even drag a tab directly on top of the pinned tabs and the pinned tabs won't dodge to make room for your new pin.

<p>
<figure>
<video controls>
  <source src="{{site.url}}/assets/videos/firefox-tab-pinning/horizontal-pin.webm" type="video/webm" />

  <source src="{{site.url}}/assets/videos/firefox-tab-pinning/horizontal-pin.mp4" type="video/mp4" />

  Download the
  <a href="{{site.url}}/assets/videos/firefox-tab-pinning/horizontal-pin.webm">WEBM</a>
  or
  <a href="{{site.url}}/assets/videos/firefox-tab-pinning/horizontal-pin.mp4">MP4</a>
  video.
</video>
  <figcaption>Pinning a tab with horizontal tabs</figcaption>
</figure>
</p>

<p>
<figure>
<video controls>
  <source src="{{site.url}}/assets/videos/firefox-tab-pinning/vertical-pin.webm" type="video/webm" />

  <source src="{{site.url}}/assets/videos/firefox-tab-pinning/vertical-pin.mp4" type="video/mp4" />

  Download the
  <a href="{{site.url}}/assets/videos/firefox-tab-pinning/vertical-pin.webm">WEBM</a>
  or
  <a href="{{site.url}}/assets/videos/firefox-tab-pinning/vertical-pin.mp4">MP4</a>
  video.
</video>
  <figcaption>Pinning a tab with vertical tabs</figcaption>
</figure>
</p>

The same goes for the other way around. 

The placement of pinned tabs are also not coherent with the position of where you drop.

No matter where you position the tab as you are dragging to pin it, the tab will be placed as the last pinned tab (I am using a left to right language in my testing) -- even if you put it in between two pinned tabs, or at the leftmost position.

When dragging to unpin a tab, the newly unpinned tab will always be the leftmost tab in the window - no matter where you dragged it to.

When in the vertical tab layout, dragging to pin tabs will always create them as the last pinned tab, and unpinning them will always put them as the topmost (or first) tab in the window.

<p>
<figure>
<video controls>
  <source src="{{site.url}}/assets/videos/firefox-tab-pinning/horizontal-unpin.webm" type="video/webm" />

  <source src="{{site.url}}/assets/videos/firefox-tab-pinning/horizontal-unpin.mp4" type="video/mp4" />

  Download the
  <a href="{{site.url}}/assets/videos/firefox-tab-pinning/horizontal-unpin.webm">WEBM</a>
  or
  <a href="{{site.url}}/assets/videos/firefox-tab-pinning/horizontal-unpin.mp4">MP4</a>
  video.
</video>
  <figcaption>Un-pinning a tab with horizontal tabs</figcaption>
</figure>
</p>

<p>
<figure>
<video controls>
  <source src="{{site.url}}/assets/videos/firefox-tab-pinning/vertical-unpin.webm" type="video/webm" />

  <source src="{{site.url}}/assets/videos/firefox-tab-pinning/vertical-unpin.mp4" type="video/mp4" />

  Download the
  <a href="{{site.url}}/assets/videos/firefox-tab-pinning/vertical-unpin.webm">WEBM</a>
  or
  <a href="{{site.url}}/assets/videos/firefox-tab-pinning/vertical-unpin.mp4">MP4</a>
  video.
</video>
  <figcaption>Un-pinning a tab with vertical tabs</figcaption>
</figure>
</p>

The lack of affordance makes it look pretty much the same as tearing a tab out of a window. If you try pinning a tab on release Firefox (via drag and drop), you might actually end up tearing your dragged tab out of the window. 

Firefox Nightly doesn't indicate in any way that that won't happen.

<p>
<figure>
<video controls width="1200">
  <source src="{{site.url}}/assets/videos/firefox-tab-pinning/tab-tear.webm" type="video/webm" />

  <source src="{{site.url}}/assets/videos/firefox-tab-pinning/tab-tear.mp4" type="video/mp4" />

  Download the
  <a href="{{site.url}}/assets/videos/firefox-tab-pinning/tab-tear.webm">WEBM</a>
  or
  <a href="{{site.url}}/assets/videos/firefox-tab-pinning/tab-tear.mp4">MP4</a>
  video.
</video>
  <figcaption>Tearing a tab from a window looks the same as pinning a tab</figcaption>
</figure>
</p>

When you drag a tab from one window to another in the horizontal tab layout, a symbol appears to show you where the tab will get dropped. You don't get that kind of affordance when dragging tabs into the pinned tabs area, or out of it.

<p>
<figure>
<video controls width="1200">
  <source src="{{site.url}}/assets/videos/firefox-tab-pinning/tab-to-window.webm" type="video/webm" />

  <source src="{{site.url}}/assets/videos/firefox-tab-pinning/tab-to-window.mp4" type="video/mp4" />

  Download the
  <a href="{{site.url}}/assets/videos/firefox-tab-pinning/tab-to-window.webm">WEBM</a>
  or
  <a href="{{site.url}}/assets/videos/firefox-tab-pinning/tab-to-window.mp4">MP4</a>
  video.
</video>
  <figcaption>In horizontal tab mode, Firefox shows an affordance where a dragged tab will appear when moving to a window</figcaption>
</figure>
</p>

## Takeaways

I think that this feature could definitely be improved in the future to allow people to pin tabs even when there isn't an existing pinned tab - but upon first look, this is an improvement and it is nice to see.

Beyond that, the addition of more affordances would make it more obvious what happens after a drag, and it would make the feature more usable overall.

---

{% include donate-social.html %} You can [message me](https://mastodon.social/@yoasif) or follow [this blog](https://mastodon.social/@quippdblog) on Mastodon.x
