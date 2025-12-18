---
layout: post
title:  "AI's Unpaid Debt: How LLM Scrapers Destroy the Social Contract of Open Source"
date:   2025-12-17 08:26 -0500
categories: writing
tags: open-source ai llm
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

This [comment](https://fedia.io/m/technology@lemmy.world/t/3118437/-/comment/13302223) helped me realize that some of us are forgetting the role of copyright in open source.

> It's funny seeing the sudden surge of "copyright is awesome!" On the Internet now that it's become a useful talking point to bludgeon the hated Abominable Intelligence with.

We can think about copyleft as a kind of hack of the copyright system.

What *is* copyleft?

The FSF [defines it](https://www.gnu.org/licenses/copyleft.en.html) as a method to make a work free "and requiring all modified versions to be free as well".

The default way that copyright works is [when you create an original work, you own the copyright on that work](https://www.copyright.gov/what-is-copyright/), which gives you some exclusive rights over the intellectual property. Since those rights are exclusive, you need to assign them to others if they want your permission to exercise those rights.

Open source subverts the default notion of copyright. By releasing your work under open licenses, the copyright owner grants others the same rights that the copyright owner has over the work. Since that means that the copyright owner is effectively giving the work away (with addtional restrictions, depending on the license), it gives that work new life.

Like royalty free music on YouTube, people will spread the work, and the community of people who find it useful can fix issues and add new features -- helping it spread even further.

The results are evident -- open source lets hobbyists connected by the internet to compete with software built by professionals working at big software companies. According to a Harvard study, [open source has an economic value of $8.8 trillion](https://www.heise.de/en/news/Harvard-study-Open-source-has-an-economic-value-of-8-8-trillion-dollars-10322643.html).

It is so powerful that it allowed [KDE](https://kde.org/) to develop a browser engine called [KHTML](https://en.wikipedia.org/wiki/KHTML) that was eventually forked by Apple to [WebKit](https://en.wikipedia.org/wiki/WebKit), then forked again by Google to form [Blink](https://en.wikipedia.org/wiki/Blink_(browser_engine)).

The two dominant browser engines on the market today are Blink and WebKit. These engines power big tech web browsers like Chrome, Safari and Edge.

Open source is what propelled competition between Linux and its entirely open source stack with huge big tech companies like Microsoft and Apple. Google's adoption of open source in Linux and Android helped eventually [force Microsoft out of the mobile operating system market](https://arstechnica.com/gadgets/2017/10/windows-phone-is-now-officially-dead-a-sad-tale-of-what-might-have-been/).

The Linux desktop has even gotten to the point that [Valve is promoting it as a gaming OS to run Windows games](https://steamcommunity.com/groups/steamworks/announcements/detail/563639634283728255). You don't even need to run a Microsoft OS to run Windows games anymore. Open source really is powerful stuff.

### Open Source Licensing

I'm talking about copyleft licenses, as they differ from "permissive" licenses by preserving the openness of the original work by placing changes to the work under the same open license. These licenses are also sometimes called "viral" because by using the "virally licensed" work in another work, you transmit the license (virus) to the new work.

The virality ensures that the work - freely given - *continues* to be given freely.

Copyleft doesn't just apply to software - user contributions on Wikipedia are licensed under a [Creative Commons Attribution-ShareAlike license](https://creativecommons.org/licenses/by-sa/4.0/deed.en), for example. This means that any edits people make to the encyclopedia are also given freely.

The "share alike" in Wikipedia's license is a covenant that Wikipedia has made with its contributors, and that copyleft developers have made with open source contributors.

## Big Tech AI

Since arriving on the scene, AI companies have relied on massive data sets to train their LLMs. The data sets include virtually anything posted online by anyone - blog posts, books, music, illustrations, even things like reddit comments.

While the AI companies have stolen from us all, I contend that open source and free culture communities have been disproportionately damaged, and will continue to be.

### Damage to Open Source and Free Culture

The key covenant that differentiates copyleft licenses from permissive ones is that they are shared alike. That is the bargain that the big tech content pirates blow a hole through.

By incorporating copyleft data into their models, the LLMs *do* share the work - but not alike. Instead, the AI strips the work of its provenance and transforms it to be copyright free.

That is because the US copyright office has [rightly advised that AI generated works are not copyrighted](https://www.copyright.gov/ai/Copyright-and-Artificial-Intelligence-Part-2-Copyrightability-Report.pdf).

This means that the LLMs are copyright removal devices - copy open source (or proprietary!) data into it, and you get copyright free data on the other side that you are free to plagiarize into newly copyrighted works.

While this process robs all copyright owners, it is particularly damaging to people involved in sharing communities, since many are particpating not for money but for the love of the game - what librarian Fobazi Ettarh calls "[vocational awe](https://www.inthelibrarywiththeleadpipe.org/2018/vocational-awe/)".

### Vocational Awe and Sharing Communities

Vocational awe explains why so many are willing to share freely with others - even when being involved can be degrading and thankless. Ms. Ettarh invented the term to describe how people who believe that they are serving the greater good can be more easily taken advantage of.

It explains why people share even when they aren't getting paid.

When was the last time you heard of a plumber who repaired leaks for free? It doesn't happen, so when AI comes for the plumbers, they will need to be coerced for their training, or will need to be paid for it. Plumbers aren't going to work for free, and if they do, they know exactly how much they are donating.

## The Aftermath of LLM Piracy

LLM piracy of open source works damages the value exchange that contributors made to the community. When LLMs strip provenance from contributions, the contract is broken - their contributions are no longer shared alike. Instead, the contributions are stolen.

As Sean O'Brien, founder of the Yale Privacy Lab at Yale Law School [points out](https://www.zdnet.com/article/why-open-source-may-not-survive-the-rise-of-generative-ai/):

>"Now those same corporations are using that wealth and compute to train opaque models on the very codebases that made their existence possible, and threatening the legal structures, such as reciprocal or copyleft licenses like GNU GPL, by labeling all the outputs of genAI chatbots public domain."

While many contributors will continue to give, others will rightly realize that the bargain has shifted, and will stop contributing.

You can see that [shift happen](https://observablehq.com/@ayhanfuat/the-fall-of-stack-overflow) on Stack Overflow, a popular question and answer site for programmers.

The data speaks for itself: 50% fewer posts and comments than before ChatGPT became generally available.

Perhaps the people who might have contributed are instead helping to train a chatbot like Copilot or Gemini. They aren't helping the community anymore, though.

Contributors need to ask themselves: **Does it makes sense to continue to contribute directly to the big tech LLMs for free?**

It isn't as if they are also getting a (second?) big tech salary in the mail.

---

{% include donate-social.html %} You can [message me](https://mastodon.social/@yoasif) or follow [this blog](https://mastodon.social/@quippdblog) on Mastodon.
