---
layout: post
title:
  "Fifteen Years of Waterfox: Alex Kontos on Independence, AI, and the Future of Browsers"
date: 2026-02-02 10:55 -0500
categories: writing
tags: firefox mozilla
external-url:
image: /assets/images/social-previews/Waterfox-Interview.png
redirect_from:
---

**TL;DR**: As Mozilla moves to make Firefox an AI browser, people are looking at other options. Some people are rediscovering Waterfox, a browser that has been around for a decade from independent developer BrowserWorks. In this post, I interview the founder of Waterfox - Alex Kontos, and we discuss Waterfox's history and look towards its future. We also talk about how Waterfox thinks about AI in the browser.

I made <a href="https://www.youtube.com/watch?v=Babxhs2WYMk">a video</a> if you
want to watch instead.

<iframe width="560" height="315" src="https://www.youtube.com/embed/Babxhs2WYMk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

---

{:toc}

- toc

With Mozilla [announcing plans to turn Firefox into an “AI browser,”](https://blog.mozilla.org/en/mozilla/leadership/mozillas-next-chapter-anthony-enzor-demeo-new-ceo/) people are taking stock of browser options. People new to the Firefox community may be looking back towards Chromium-based options. Others are wary about helping Google extend its hegemony over the web platform and are looking to Firefox offshoots like [LibreWolf](https://librewolf.net/) and [Floorp](https://floorp.app/), or further afield with projects like [Servo](https://servo.org/) and [Ladybird](https://ladybird.org/).

As people look for alternatives, they are rediscovering options that didn’t appear overnight. [Waterfox](https://www.waterfox.com/) has been around for more than a decade, built on Mozilla's work in Firefox but bringing it to people without data collection and some user focused niceties.

As Mozilla goes off to [explore the world of AI](https://stateof.mozilla.org/roadmap/), I thought it would be interesting to catch up with Alex Kontos, the founder of Waterfox. I wanted to discuss with him what it means to build and sustain an independent browser over the long term, how Waterfox’s philosophy diverges from Mozilla’s current direction, and why there’s still value in software that doesn’t treat you like a lab rat.

I'm also taking the time to test-drive Waterfox on my own, and I'll be following up with a review in the coming weeks.

## Interview

### History

**QUIPPD**
You started Waterfox when you were 16 years old. Most people at that age are just trying to keep up with homework, and you were out there trying to outcompete Mozilla at 64bit. Looking back to that 16 year version of yourself, did you think you'd still be working on Waterfox 15 years later?

**ALEX**
Hah, I think it’s generous calling what I started out doing as competing with Mozilla! I remember struggling at the time to find a 64-bit version of Firefox - I was enamoured with it, it was (and still is) a great bit of software. Some people were pushing out sporadic builds, but that wasn’t good enough - and here we are! I definitely thought I’d be involved with computers and software in some capacity, but maybe not still with Waterfox!

**QUIPPD**
You sold Waterfox to System1 in 2020 and then bought it back to become independent again in 2023. Can you tell us more about what happened there?

**ALEX**
As it happens, the System1 I joined and the System1 I left were different companies. There wasn’t much scope of a browser vision anymore, and I still felt there was untapped potential, so we went our separate ways.

### Sustainability and Governance

**QUIPPD**
Now that you are independent, how are you building a sustainable business model? How secure is Waterfox's funding?

**ALEX**
Up until the last year, things were great. But unfortunately with [Microsoft terminating all Bing partnerships and API calls](https://www.theregister.com/2025/05/15/bing_search_apis_retired/) (to stop AI companies scraping the web with their services), it’s been much more difficult. Without a big player like Microsoft on the scene, other search engines are much more aggressive with their partnership agreements.

So we get okay revenue, not much, and I’ve launched [Waterfox Private Search](https://search.waterfox.com/), a [subscription based meta search](https://www.waterfox.com/blog/waterfox-private-search/) as a way to try and be completely independently funded. I’d like to launch an [Oblivious](https://en.wikipedia.org/wiki/Oblivious_HTTP) proxy too - but the whole “VPN” market (proxies is how people really use them) seems insanely saturated and I don’t want to spread myself too thin.

**QUIPPD**
Tell me about your structure. You reference it on your recent [blog post](https://www.waterfox.com/blog/no-ai-here-response-to-mozilla/), but readers will want to know more.

**ALEX**
Yes I’m conscious I bring that up frequently and I’m currently building out some pages to add on the website. It will be something as follows:

A “Governance” page that:

- Links to Companies House registration
- Names directors and their roles (only me)
- Explains revenue model transparently
- States our privacy commitments in plain language
- Provides contact for governance questions
- Provide information and link to our ICO Registration certificate (to show we’re beholden to things such as the UK GDPR)

There’s much more I want to flesh out and have easily accessible as well, such as security disclosure policies, partnerships guidelines etc.

**QUIPPD**
How large is the team?

**ALEX**
It’s just me at the moment! With the odd contributors here and there.

**QUIPPD**
Do you have any plans for expansion?

**ALEX**
I have dreams, but without a large revenue stream nothing that is currently feasible.

### Waterfox Features

**QUIPPD**
How do you choose what to develop? What is the core vision for Waterfox as a product?

**ALEX**
A difficult one to answer, but at its core I’d like Waterfox to be as privacy friendly as possible while not breaking the web. A hard line to balance! I want people to feel as if they are in control of their experience and getting real use out of their browser as a productivity tool.

### AI

**QUIPPD**
You've been vocal about Waterfox staying 'AI-free' while Mozilla is becoming an AI browser. I recently learned that Mozilla's [translation engine](https://github.com/mozilla/translations) (that you referenced in your blog post) is not trained on open data, but from [crawled copyright content](https://paracrawl.eu/moredata). Does that change your perspective on inclusion within Waterfox?

**ALEX**
I think 'AI-free' isn’t my exact stance - "AI" is too broad a term to make blanket statements about. I'm cautious about LLMs specifically, and definitely against including them by default in the context of a web browser. If users want to use external AI services via extensions, their own setup (or re-enabling via toggles in Waterfox), they're free to do so - user choice is core to Waterfox's ethos.

My biggest concern is the unknown Mozilla has thrown out there, where it sounds like a complete pivot to AI control within the browser. Browsers like [Comet](https://www.perplexity.ai/comet) and [Dia](https://www.diabrowser.com/) seem like a recipe for disaster. I'm not downplaying the convenience, but these things aren't perfect and putting one in the drivers seat seems wrong. On the flip side, AI has also been revolutionary for those with disabilities, so judgment shouldn’t be made in just black and white.

I was actually unaware of ParaCrawl's data sources. Arguably it doesn't respect the spirit of creator consent, but it seems that it's legal in many jurisdictions and follows standard practices for research corpora. I'd need to do more research myself to form a better opinion as I believe this warrants a much more nuanced response.

**QUIPPD**
Can you explain more about how you think about inclusion of AI features in Waterfox?

**ALEX**
Outside of LLMs, things such as ML have been a part of Waterfox (and most software!) for a while. Translations ([Bergamot](https://browser.mt/)), TTS/STT ([DeepSpeech](https://github.com/mozilla/DeepSpeech)), URL bar ranking for local history when entering keywords and more recently, [alt text generation for PDF images](https://hacks.mozilla.org/2024/05/experimenting-with-local-alt-text-generation-in-firefox-nightly/). These all provide real utility to end users, are implemented transparently and have been a part of the browser for years. The biggest issue I find is how LLMs are used, rather than the all encompassing “AI” term which includes many useful features over the years. It’s why in the blog post I specify that I won’t include LLMs in their current form in Waterfox

**QUIPPD**
Do you have a perspective on you or Waterfox contributors using AI to develop Waterfox? Have you tried out AI coding at all?

**ALEX**
I agree with Dmitry Kudryavtsev’s note on his ‘[Dead Internet Theory](https://kudmitry.com/articles/dead-internet-theory/)’ post.

**QUIPPD**
The note on Dmitry's post reads:

> **NOTE** I don’t mind people using AI to write code, even though I tried to resist it myself, until eventually succumbing to it. But I think it’s fair to disclose the use of AI, especially in open-source software. People on the internet are, mostly, anonymous, and it’s not always possible to verify the claims or expertise of particular individuals.
>
> But as the amount of code is growing, considering that everyone is using AI to generate whatever-app they want, it’s impossible to verify every piece of code we are going to use. So it’s fair to know, I think, if some project is AI generated and to what extent. In the end, LLMs are just probabilistic next-token generators. And while they are getting extremely good at most simple tasks, they have the potential to wreak havoc with harder problems or edge-cases (especially if there are no experienced engineers, with domain knowledge, to review the generated code).

**ALEX**
When it comes to contributions, I think it's fair to ask contributors to disclose if they've used AI to generate code, especially for substantial changes. As Dmitry mentioned, LLMs are probabilistic - they're great at common patterns but can introduce subtle bugs in edge cases. With Waterfox being essentially just me, I can't review every line with the depth a larger team could. Knowing something was AI generated helps me understand where to focus review effort and what kinds of issues to look for. I also hope users aren’t just blindly tasking LLMs with creating patches for Waterfox, I’d be surprised if it wouldn’t run out of context before even being able to generate anything and it’d be such a waste of resources.

I do also use it - I find it useful as a smarter, glorified IntelliSense, as it saves typing and repetitive actions. I’ve found it useless for doing anything novel with - and of course it can’t “think” like a human does, so complex problem solving isn’t much good with it either (at least how I’ve tried? I see a lot of hubbub about it solving math problems recently). If it does get used, its usage is strict and limited. It’s great as a code search tool as well, saves me a bunch of time loading up searchfox.org or grepping through the repo.

### Gecko Ecosystem

**QUIPPD**
Does Waterfox contribute to upstream Gecko or Firefox? Is that something people can expect in the future?

**ALEX**
It has done so in the past, mainly small inconsequential things, but I’d be more than happy to provide upstream code, if I thought it would actually be any use to Mozilla. 

**QUIPPD**
Is Gecko important to Waterfox, or would you be willing to rebase to WebKit or Chromium?

**ALEX**
It is! But, it’s always an uphill battle as it’s not designed to be taken apart from Firefox, which makes using Gecko in isolation difficult (and makes ongoing maintenance a burden). I would be willing to work with WebKit - it’s much improved over the last few years for platforms outside of macOS and I think there’s a lot of untapped potential there.

**QUIPPD**
What's your strongest elevator pitch for someone trying out or switching to Waterfox?

**ALEX**
A private web browser that stays out of your way.

Are there any questions that I missed? Leave a comment and I'll try to get Alex to do a follow-up interview!

---

{% include donate-social.html %} You can
[message me](https://mastodon.social/@yoasif) or follow
[this blog](https://mastodon.social/@quippdblog) on Mastodon.
