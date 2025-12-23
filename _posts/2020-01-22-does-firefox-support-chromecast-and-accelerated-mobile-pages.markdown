---
layout: reddit-post
title:  "Does Firefox support Chromecast and Accelerated Mobile Pages?"
date:   2020-01-22 19:29:41 UTC
categories: social comments
tags: firefox chromecast amp
external-url: https://www.reddit.com/r/firefox/comments/er2d5t/does_firefox_support_chromecast_and_accelerated/
image: /assets/images/social-previews/firefox.png

---

<div class="self-post-content" markdown="1">

I know these are things found in Chrome, but curious if Firefox supports them.

</div>

<div class="comment-area" markdown="1">

### u/yoasif

AMP pages are just web pages, so they work in Firefox.

I don't think Chromecast works in Firefox.

### u/yoasif

Google could contribute code upstream to Firefox, but I think their interest isn't in promoting Chromecast, but Chrome.

### u/zamadatix

The Chromium source bundle contains the source of the Chromecast implementation with a BSD license and VLC implemented the protocol independently with a GPL 2 license. At some point the responsibility lies on projects to merge public code rather than expect companies to do it for them.

### u/yoasif

> At some point the responsibility lies on projects to merge public code rather than expect companies to do it for them.

That isn't how it generally works though -- you don't see the Linux Foundation paying to have Linus Torvalds merge "publicly available" Google code in from Android to Linux - and that is in the same project!

Instead, Google is doing the work to get it mainlined on their own -- [they are taking on the responsibility](https://arstechnica.com/gadgets/2019/11/google-outlines-plans-for-mainline-linux-kernel-support-in-android/).

In any case, why should Firefox be responsible for porting (you can't really think it would be as simple as merging -- the code bases are vastly different) the Google code here, especially since it literally only serves Google's Chromecast?

This is like Nvidia fans demanding that the Linux kernel include features that only Nvidia binary drivers would use, just because they want to make it easier for Nvidia customers to get up and running with Nvidia video cards -- even though AMD and Intel are perfectly fine with contributing code to Linux that help every video driver.

### u/yoasif

> To put it another way just because Google is making money off a product doesn't mean if they release the software for the product for free they should be expected to implement it in everyone's product for free. Products are responsible for adding features they deem important to users.

Of course not, but if they want the ecosystem of Chromecast to be valuable outside of Chrome, they would. Obviously, that isn't the case -- Chromecast is a way of extending Chrome's influence. 

> Mainlining the kernel changes for Android is a primary goal for Google, not something done at request of users or The Linux Foundation. The same with AMD/Intel drivers. All 3 also have significant portions of open source code they don't merge on behalf of other projects.

Why isn't it a primary goal for Google to have more apps to have Chromecast support, especially a desktop browser where they must know that people want support? They don't really support anything outside of Chrome and Android for casting support, since they clearly want to extend the influence of *those* products -- Chromecast isn't the point. 

> The Nvidia example at the end is also conflation of this topic. Users (I don't think it's limited to just fans) asking for non public code without documentation to be implemented by open source maintainers is a completely different conversation.

It is an imperfect analogy for sure, since someone implementing Chromecast in Firefox actually works against Google's overall strategy of pushing Chrome to you -- users now have the choice of using Chromecast on Firefox without needing to use Chrome. So of course it is unlike Nvidia, since Nvidia more directly profits by having in kernel support in Linux. 

Chromcast support in Firefox is a lot less clearly a benefit for Google, since it doesn't help them push Chrome, it just makes people who own Chromecasts have less of a useless device on their hands (Chromecasts are not very useful on their own as they don't have any independent way of controlling the device).

But if Google *did* care about Chromecast the way Nvidia cares about their drivers, they would also be offering to integrate their own code in Firefox, like Nvidia wants to in Linux (and like how Google wants to do in Linux) -- the fact that they don't shows that if Firefox were to implement this support, they would be showing more care to Google's customers than Google itself cares.

Lastly, the fact that VLC and others have to scrape code or study the source of Chrome to get this implemented doesn't exactly help the case that others should do this. Implementing a non-standard protocol in order to help extend a proprietary product,  ostensibly with open source code is basically the same thing as asking Linux to take Nvidia's code to extend *their* proprietary drivers.

You want people to support Chromecast? Open it up for real, not some client side code that doesn't work with anything else. Otherwise, I have no qualms in demanding that Google should do this instead, to do right by Chromecast customers. 

They won't, of course.

### u/zamadatix

Why is it any time Google releases something publicly, i.e. code, documentation, license, and SDK, they are the ones at fault if others don't have the time or motivation to implement it? The argument being made against them here isn't that the Chromecast protocol is bad or should have been an alternative just that Google didn't go out and implement it for everyone else when they released it.

These kinds of attitudes made sense when people were fighting hidden proprietary code with restrictive licenses not when open code and documentation was handed to them to do with as they please.

### u/yoasif

Google Cast is proprietary. Just because it is public does not mean it is open.

### u/zamadatix

The BSD license and lack of royalties beg to differ. There is a difference between something being open and designed by the general public. The Chromecast hardware is proprietary though but it's not the only thing that can receive casts.

### u/yoasif

The Google Cast SDK is absolutely not BSD licensed. If it were, I would agree that it is basically open, even if not an open standard in the way that we traditionally think of it. 

Is Slack also now open because they have [open source integrations](https://github.com/integrations/slack)? Of course not. Slack is closed, as is Google Cast.

>Google Cast SDK !== Google Cast nor is it dependent for Cast or Cast's code.

The server is closed, the SDK is closed, what is open? Oh, some integration code. Sounds like Slack.

So if I were to write my own Slack servers and my own Slack client using the integration code made available to me, Slack is open!

Come on. Google Cast is closed, there is some open code in the client, but beyond that, you need to reverse engineer how the server works in order to build something that isn't based on any standard, so it may stop working as soon as Google introduces a version to add some protocol extensions or authentication checks.

That isn't open, it is interoperable.

### u/zamadatix

The server isn't closed, the productised hardware for the server is closed.

### u/yoasif

Point me to the [BSD licensed] source code repo for the server, please.

### u/zamadatix

Hmm fair point, it looks like around protocol version v4-ish they shifted the receiver side to a new model and authenticate it via certificate infrastructure. Receiver side is certainly closed now as even though you have the protocol definition/code normal clients will consider it an auth challenge failure locking it in.

### u/yoasif

👍 Glad we're on the same page.

</div>

---

{% include donate-social.html %} You can also message me on [Mastodon](https://mastodon.social/@yoasif).