---
layout: post
title:  "Putting this Blog on Mastodon"
date:   2025-02-26 00:46 -0400
categories: posts
tags: blogging mastodon meta
external-url: 
image: /assets/images/social-previews/2025-02-profile.png

---

If all goes well with the configuration, this will be the first post posted on the new [Mastodon profile](https://mastodon.social/@quippdblog) for this blog.

While I have shared my posts on Mastodon via my [personal profile](https://mastodon.social/@yoasif), I tend to read a lot more than I write there, so linking to my own posts feels immodest.

I have seen [various](https://jvns.ca/blog/2023/06/05/some-blogging-myths/) blogging [encouragements](https://blog.chasingbrains.co/p/just-write-stuff) recently, achieving some level of personal resonance since [reddit ruined itself]({% post_url 2023-05-03-with-its-API-update-reddit-should-start-paying-its-users %}).

So last night, I created a Mastodon profile for this blog and used [Canva](https://www.canva.com)'s AI to generate a profile picture:

<p>
	<figure>
	<picture>
	  <img src="{{site.url}}/assets/images/social-previews/2025-02-profile.png" alt="NYC skyline in the style of SNES graphics and a large moon" />
	  <figcaption>NYC Skyline</figcaption>
	</picture>
</figure>
</p>

I had planned to self-host [feed2toot](https://gitlab.com/chaica/feed2toot/) on my home server, but I realized while trying to set it up that <kbd>mastodon.social</kbd> doesn't support [basic authentication](https://www.reddit.com/r/Mastodon/comments/1glha9x/unsupported_grant_type_when_logging_in_to/) - and feed2toot doesn't support OAuth. Instead, I'm trying out [MastoFeed](https://mastofeed.org/about) to do the integration.

If it works, you should be able to follow my blog at [quippd blog](https://mastodon.social/@quippdblog) on Mastodon in addition to [RSS]({{site.url}}/feed.xml). Please do!

---

{% include donate-social.html %} You can [message me](https://mastodon.social/@yoasif) or follow [this blog](https://mastodon.social/@quippdblog) on Mastodon.