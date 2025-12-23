---
layout: post
title:  "Architecting Consent for AI: How Mozilla Uses Deceptive Patterns in Firefox"
date:   2025-12-20 10:55 -0500
categories: writing
tags: firefox mozilla
external-url: 
image: /assets/images/social-previews/BIG TECH AI.png
redirect_from:

---

**TL;DR**: The big tech AI company LLMs have gobbled up all of our data, but the damage they have done to open source and free culture communities are particularly insidious. By taking advantage of those who share freely, they destroy the bargain that made free software spread like wildfire.

I made <a href="https://www.youtube.com/watch?v=H6mntOSKb1c">a video</a> if you want to watch instead.

<p>
<iframe width="560" height="315" src="https://www.youtube.com/embed/H6mntOSKb1c" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></p>

---

{:toc}
* toc

Last week, I argued that Mozilla's [replacement of volunteer contributions on Support Mozilla]({% post_url 2025-11-27-thank-mozilla-for-killing-localization-on-support-mozilla-and-replacing-human-contributions-with-AI-bots %}) with AI translations was a [betrayal]({% post_url 2025-12-08-mozillas-betrayal-of-open-source-googles-gemini-ai-is-overwriting-volunteer-work-on-support-mozilla %}) of Mozilla's open source principles.

If you disagree, you might not realize that the AI companies have been pirating from the commons, directly hurting open source. This is an important topic, so I'm devoting the rest of this post to it.

## Open Source History

## 

Mozilla has a new CEO and a new mission to make an AI browser, whatever that means. Perhaps surprisingly, the reaction has been decidedly negative. The vocal minority of posters and commenters have expressed their most of them have little to no interest in Mozilla's AI ambitions.

While promised for a while, Mozilla's media response to the outcry was to reiterate that the AI features in the AI browser would always remain optional. To bring that point home, Mozilla (re)announced that they were working on an AI "kill switch" to fully disable AI functionality in Firefox, set to be released early next year.

So far, so good. While it is confusing what is left after you remove the AI from the AI browser, I guess we can th groupware

Mozilla representatives quickly followed up their traditional media response with a social media response, with multiple team members fielding questions from the general public.

I agree, but again - this is how Mozilla sees opt-ins looking like.

Endless nudges until you relent and give permission.

Look, you opted in!

Mozilla's response to the Firefox users' backlash towards AI was to (re)announce that they would be developing an "AI Kill Switch" to disable any existing and forthcoming AI features.

As Firefox users asked how the kill switch would work, Mozilla began to sound more shifty, saying that while there are some gray areas of what "opt-in" means to different people, their kill switch would absolutely remove that stuff.

To help clear things up, Mozilla explained that the AI features in "Link Previews" has "[always been opt-in](https://www.reddit.com/r/firefox/comments/1ppydhv/firefox_is_adding_an_ai_kill_switch/nurhmfn/)".

## Link Previews in Beta

Link Previews is a feature that was [first introduced in Firefox Labs 138](https://blog.mozilla.org/en/mozilla/ai/ai-tech/ai-link-previews-firefox/), as an experimental, opt-in Labs feature.

The feature was introduced as a way for users to get relevant information faster, by providing them with an image, the webpage title, and AI-generated key points.

Mozilla introduces the experiment by saying that Link Previews is "entirely optional" and that "it only appears in Firefox if you enable the feature and consent to local AI processing".

After enabling the feature in Firefox Labs, users would have to press shift and alt or option to see the preview.

Over the next few releases, Mozilla iterated on the feature, which changed in a couple of key ways once it was released to general availability in [Firefox 142](https://www.firefox.com/en-US/firefox/142.0/releasenotes/).

## Link Previews in Firefox 142

The Firefox 142 release notes describes how the feature has changed for release users. Mozilla says: "Long press a link (or right-click and choose Preview Link). Previews can optionally include AI-generated key points, which are processed on your device to protect your privacy."

Firefox now shows the Link Preview popups when long clicking a link. While this gesture is common on mobile, it is not on desktops - and many users are seeing the popups and not understanding why they appear. Some users are even certain that they are coming from the sites themselves, like YouTube.

You probably noticed that Mozilla said that the previews can optionally include AI generated key points. That's because Mozilla made the summaries optional, but default enabled link previews.

Since the feature has been split up, let's take a look at what the default on feature does.

### Link Previews

Link Previews without the AI summary is a feature Mozilla could have added to Firefox decades ago. That's because the description it shows is the same one that search engines have been using since 1996 to get a basic idea of what the page is about; the page's [meta description](https://www.w3.org/TR/html401/appendix/notes.html#h-B.4).

The way that it works is that if you hold your mouse button for a second over a link, your browser will visit the page and grab the page description and will use the built in reader functionality to estimate the amount of time it might take to read. One thing that is not documented in the release notes is that the request to the link happens from your computer; it is not proxied in any way, and will leak your IP address to the server hosting the link you are previewing.

This is unlike the way that browsers have worked on desktop for the entire time Firefox has existed.

While Mozilla insists that Link Previews have nothing to do with AI, it is obvious that this is sleight of hand. Mozilla believes that by wrapping the AI feature inside a more innocuous feature, and enabling the innocuous feature by default, the browser can interrupt you over and over again to finally opt into the AI features.

If you don't know what is happening, this might be easy to miss. Thankfully, the team over at Deceptive Patterns have researched the many manipulative, deceptive and coercive design patterns in the digital world.

We can use this resource to examine the ways that Mozilla has designed this experience to guide people into enabling AI in Link Previews.

### Deceptive Patterns

#### Obstruction

One of the patterns observed by the team at Deceptive Patterns is "[obstruction](https://www.deceptive.design/types/obstruction)", defined as something that "deliberately creates obstacles or roadblocks in the user's path, making it more difficult for them to complete a desired task or take a certain action".

The obstruction in Firefox is obvious - the browser is obstructing the user from clicking or manipulating the link in another way. Users might want to drag the link to a document to store it, for example. The user might also have mobility impairments that makes a fast click harder, resulting in a longer hold time.

Deceptive Patterns notes that "it is used to exhaust users and make them give up, when their goals are contrary to the business's revenue or growth objectives." That sounds exactly right -- Firefox is now an AI browser, so Mozilla's goal is to grow usage of AI rather than browsing web pages.

#### Nagging


If that is what opt-in means to Mozilla, that means that users can expect to be interrupted over and over (nudged is another word) to try AI features even though they hit the kill switch because just asking the user to try the feature isn't actually enabling the feature.

We're just asking you to try it.

Just try it, please!

It is obvious to me that the feature exists only to push the actual feature (AI summaries) to you.

Just look at how worthless the summary is without AI. This is a feature Mozilla could have added 20 years ago (it visits the page and displays the contents of the meta description in the page header).

Why didn't they?


Look at how the feature works. You hold the mouse button an extra second when clicking a link and a popup appears. This basically breaks the web to push AI on you.

It is kinda like a popup that appears on your TV if you press the mute button for longer than .5 seconds that says "TV OS can summarize everything you didn't hear while the TV was muted. Would you like that?"

Because after having to opt out of being interrupted, Mozilla is insisting that this counts as an opt-in.



---

{% include donate-social.html %} You can [message me](https://mastodon.social/@yoasif) or follow [this blog](https://mastodon.social/@quippdblog) on Mastodon.
