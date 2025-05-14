---
layout: post
title:  "The Forced Firefox Terms of Use (ToS) Clickwrap Agreement is Here"
date:   2025-05-13 7:56 -0500
categories: writing
tags: firefox
external-url: 
image: /assets/images/social-previews/firefox.png
redirect_from: 

---

When Mozilla [announced their Terms of Use a few months ago]({% post_url 2025-03-05-the-mozilla-firefox-new-terms-of-use-disaster-what-actually-happened %}), they told us that they would be [asking us to acknowledge](https://blog.mozilla.org/en/firefox/firefox-terms-of-use/) it at a later date. That day is here, and I took a quick look at it.

Mozilla started enforcing their new [ToS for new users](https://bugzilla.mozilla.org/show_bug.cgi?id=1959542), starting with version 138.0.3. Enforcement for new users is likely to come at a later date.

I made a video walking through it.

<p>
<figure>
	<a href="https://www.youtube.com/watch?v=XCWaQfh4d6E">
	<picture>
	  <source type="image/png" srcset="{{site.url}}/assets/images/thumbnails/ToS-video.png,
	  								   {{site.url}}/assets/images/thumbnails/ToS-video-2x.png 2x">
	  <img src="{{site.url}}/assets/images/thumbnails/ToS-video.png" srcset="{{site.url}}/assets/images/thumbnails/ToS-video-2x.png 2x" alt="A picture of a YouTube video"/>
	  <figcaption>Mozilla Begins Enforcing their new Terms of Use/ToS in New Installs: First Look</figcaption>
	</picture>
	</a>
</figure>
</p>

At first launch, you are greeted with a modal dialog describing the purpose of the ToS, along with a "Continue" button and some expandable sections. No cancel button -- there is no way to opt out of agreeing to the clickwrap agreement.

<p>
	<figure>
	<picture>
	  <img src="{{site.url}}/assets/images/firefox/firefox-tos.png" alt="Firefox window displaying the clickwrap ToS"/>
	  <figcaption>The Firefox Terms of Use dialog</figcaption>
	</picture>
</figure>
</p>

Conveniently, while you must agree to the overall relationship you have with Mozilla, you can easily opt out of data collection in Firefox - that option is hidden behind the last section, labeled "Manage diagnostic and interaction data".

<p>
<figure>
	<picture>
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox/manage-tos.png,
	  								   {{site.url}}/assets/images/firefox/manage-tos-2x.png 2x">
	  <img src="{{site.url}}/assets/images/firefox/manage-tos.png" srcset="{{site.url}}/assets/images/firefox/manage-tos-2x.png 2x" alt="Firefox window displaying the clickwrap ToS with Manage diagnostic and interaction data expanded"/>
	  <figcaption>Manage diagnostic and interaction data</figcaption>
	</picture>
</figure>
</p>

Data collection is enabled by default, [as it has been for years]({% post_url 2025-03-12-mozilla-has-been-sharing-aggregated-firefox-data-with-advertisers-since-2017-when-it-enabled-telemetry-by-default %}).

I've been working on a tutorial to help people use policies.json to manage their Firefox installs, now that this ToS clickwrap is live. 

Stay tuned for that, and thanks for reading!

---

{% include donate-social.html %} You can [message me](https://mastodon.social/@yoasif) or follow [this blog](https://mastodon.social/@quippdblog) on Mastodon.
