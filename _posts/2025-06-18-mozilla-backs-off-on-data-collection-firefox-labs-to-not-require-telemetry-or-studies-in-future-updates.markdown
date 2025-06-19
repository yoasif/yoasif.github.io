---
layout: post
title:  "Mozilla Backs off on Data Collection: Firefox Labs to Not Require Telemetry or Studies in Future Updates"
date:   2025-06-18 3:05 -0500
categories: writing
tags: firefox
external-url: 
image: /assets/images/social-previews/labs-telemetry-backoff.png
redirect_from: 

---

**TL;DR**: Mozilla is backing off from the [forced telemetry introduced in Firefox 138 for Firefox Labs]({% post_url 2025-06-16-mozilla-turns-firefox-away-from-open-source-towards-spyware-firefox-labs-now-requires-data-collection %}). Hours after I posted about the Labs change, Mozilla opened [bug 1972647](https://bugzilla.mozilla.org/show_bug.cgi?id=1972647 "Enable Firefox Labs when Telemetry or Studies are Disabled"), which describes a change to Labs to allow it to be used when telemetry or studies are disabled.

I made <a href="https://www.youtube.com/watch?v=z-jJ-VWx5y0">a video</a> if you want to watch instead.

<p>
<figure>
	<a href="https://www.youtube.com/watch?v=z-jJ-VWx5y0">
	<picture>
	  <source type="image/png" srcset="{{site.url}}/assets/images/thumbnails/labs-backoff.png,
	  								   {{site.url}}/assets/images/thumbnails/labs-backoff-2x.png 2x">
	  <img src="{{site.url}}/assets/images/thumbnails/labs-backoff.png" srcset="{{site.url}}/assets/images/thumbnails/labs-backoff-2x.png 2x" alt="A picture of a YouTube video"/>
	  <figcaption>Mozilla Backs off on Data Collection: Firefox Labs Won't Demand Your Data in the Future</figcaption>
	</picture>
	</a>
</figure>
</p>

---

{:toc}
* toc

## Firefox Labs and Telemetry

Starting in Firefox 138, [Mozilla started gating Firefox Labs features behind data collection]({% post_url 2025-06-16-mozilla-turns-firefox-away-from-open-source-towards-spyware-firefox-labs-now-requires-data-collection %}). 

Mozilla had announced that some new Firefox features would be released via [Firefox Labs](https://blog.mozilla.org/en/firefox/firefox-labs-fx138/), saying:

>“We created Firefox Labs to get features into users’ hands earlier,” said Karen Kim, senior product manager at Mozilla. “It’s a safe space where people can turn things on, play around, and help us learn faster.”
>
>In the past, testing out new ideas usually meant downloading special builds like Nightly or digging into advanced settings. That’s not for everyone. Firefox Labs makes it way easier — just head to your Firefox settings, flip a switch, and try something new.

There is no mention in the post that Mozilla is moving functionality behind data collection -- that was relegated to the [Enterprise release notes for 138](https://support.mozilla.org/en-US/kb/firefox-enterprise-138-release-notes "Firefox for Enterprise 138 - Release notes").

It is now a few hours since I posted, and there is reason to celebrate -- Mozilla is updating Firefox Labs to let people access features without needing to enable data collection. 

## Mozilla's Update

A couple of hours after I published my last post, I heard from a Mozilla employee that they might have an interesting update for me. 

A little while later, they pointed me to [bug 1972647](https://bugzilla.mozilla.org/show_bug.cgi?id=1972647 "Enable Firefox Labs when Telemetry or Studies are Disabled").

Let's have a look!

<p>
<figure>
  <picture>
    <source 
      type="image/png" 
      srcset="{{site.url}}/assets/images/firefox/1972647.png,
              {{site.url}}/assets/images/firefox/1972647-2x.png 2x">
    <img 
      src="{{site.url}}/assets/images/firefox/1972647.png" 
      srcset="{{site.url}}/assets/images/firefox/1972647-2x.png 2x" 
      alt="A screenshot of comment 1 on Mozilla bug 1972647">
  </picture>
  <figcaption><a href="https://bugzilla.mozilla.org/show_bug.cgi?id=1972647">Bug 1972647</a></figcaption>
</figure>
</p>

The bug states:

>In [bug 1937147](https://bugzilla.mozilla.org/show_bug.cgi?id=1937147 "Migrate about:preferences#experimental to Nimbus") we ported Firefox Labs to be powered by Nimbus, our A/B testing and feature delivery platform, which (as its configured) requires both telemetry and studies to be enabled in order to function. Nimbus was originally designed to be an A/B test platform and so it made sense at the time that if telemetry was disabled that Nimbus should be disabled because there if you need to collect data in order to do quantitative experimentation. However, as Nimbus has grown into more of a feature delivery platform, it no longer makes sense to gate everything behind having telemetry or even studies enabled. We should add a new preference toggle that enables/disables Firefox Labs and update the Nimbus logic as follows:
>
> 1. Telemetry disabled -> Experiments and rollouts are disabled except for Firefox Labs opt-ins (i.e., when `recipe.isFirefoxLabsOptIn = true`)
> 2. Studies disabled -> Experiments and rollouts are disabled EXCEPT for Firefox Labs opt-ins (i.e., when `recipe.isFirefoxLabsOptIn = true`)
> 3. Firefox Labs disabled -> Firefox Labs is disabled and experiments and rollouts work as normal

This resolves the main criticism of my [previous post]({% post_url 2025-06-16-mozilla-turns-firefox-away-from-open-source-towards-spyware-firefox-labs-now-requires-data-collection %}) - Mozilla will no longer lock Firefox Labs features behind data collection.

Since Nimbus is now being repurposed to deliver features, not just studies, it makes sense for Nimbus to differentiate between the studies and feature delivery -- pretty much exactly what I said in my last post. As Beth says, studies "need to collect data in order to do quantitative experimentation".

We'll obviously have to wait until this is developed and released, but in the mean time, the other good news is that the feature gating that Mozilla announced isn't actually operational. 

## Features Aren’t Actually Gated

Soon after I posted, a friend asked me which features - if any - were blocked by this new gate. I had assumed that Mozilla’s public postings on Support Mozillla were accurate - that people needed to enable data collection for Labs features to function.

I went ahead and played around with enabling "[Passwords in the sidebar](https://connect.mozilla.org/t5/firefox-labs/try-managing-your-passwords-right-from-the-sidebar/td-p/87890)" in Labs to try to figure out which <kbd>about:config</kbd> key might allow access to the feature.

After I enabled it, I looked at modified values in about:config to locate the preference to enable, and it is `browser.contextual-password-manager.enabled`.

Once I disabled data collection (and Labs disappeared from my settings), I went to <kbd>about:config</kbd> and set `browser.contextual-password-manager.enabled` to **true**, and it worked. 

This means that while we wait for Mozilla to update Labs to not require data collection, Firefox users can still get access to Labs features -- as long as they can find the <kbd>about:config</kbd> key-values that enable the features. 

I'm glad that Mozilla came to the same conclusion I did - that Labs features shouldn't be locked behind data collection.

---

{% include donate-social.html %} You can [message me](https://mastodon.social/@yoasif) or follow [this blog](https://mastodon.social/@quippdblog) on Mastodon.
