---
layout: post
title:
  "Firefox's AI Kill Switch is a Trap: How Mozilla Made AI Your Problem"
date: 2026-02-09 10:55 -0500
categories: writing
tags: firefox mozilla
external-url:
image: /assets/images/social-previews/itsatrap.png
redirect_from:
---

**TL;DR**: Mozilla recently released **AI controls** for Firefox: a single control panel that lets people disable AI features in the browser or pick and choose which to leave on. On the surface, this sounds like a win for user choice in an era of AI-everything.

If we dig deeper, you can start to see that the kill switch isn’t the whole story. This feature acts like an *accountability sink*. By giving you an off-switch, Mozilla’s leadership shifts the ethical burden of AI onto the user - turning their design choices into your responsibility.

I made <a href="https://www.youtube.com/watch?v=51hXnOi8G4g">a video</a> if you
want to watch instead.

<iframe width="560" height="315" src="https://www.youtube.com/embed/51hXnOi8G4g" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

---

{:toc}

- toc

## The AI Kill Switch

Mozilla’s AI controls launch in Firefox 148. It consists of a “Block AI enhancements” toggle that promises to disable current and future AI features in the browser. The options can also be toggled individually, to allow people to enable some but not all AI features. I tested the kill switch as soon as it appeared in Nightly, and it works pretty much like you might expect.

That is supposed to be the end of the conversation -- it does what it was designed to do.

Mozilla frames the feature as giving users control over their browsing experience. In doing so, Mozilla is trying to reframe the debate around AI in Firefox as a question of optionality - are the features opt-in? Are they opt-out? Do users have choice?

### Why

Mozilla introduced the kill switch to sidestep the concerns the Firefox community has voiced over AI and large language models.

Just two days after new Mozilla CEO Anthony Enzor-DeMeo's [introductory post announcing that Firefox would evolve into a modern AI browser](https://blog.mozilla.org/en/mozilla/leadership/mozillas-next-chapter-anthony-enzor-demeo-new-ceo/) (as they focus on becoming "the trusted software company"), Mozilla quickly tried to change the topic, with the [*Firefox for Web Developers*](https://mastodon.social/@firefoxwebdevs/with_replies) Mastodon account promising that "[Firefox will have an option to completely disable all AI features](https://mastodon.social/@firefoxwebdevs/115740500373677782)".

By shifting the conversation away from whether Firefox should become an AI browser at all to questions about user choice, Mozilla staff now spends a lot of time pontificating about [whether features are truly opt-in or not](https://mastodon.social/@firefoxwebdevs/116056951079877949), and whether [certain types of LLMs count as AI](https://mastodon.social/@firefoxwebdevs/116003456570390661).

It is obvious what is happening here - Mozilla is shifting the burden of responsibility of choice to its users, and is excusing itself of it entirely.

What Mozilla is telling us is that AI is good actually, and while isn't great that a large portion of their userbase doesn't like it, it is up to them to avoid it.

## AI Powered Translations

As part of the community outreach around the kill switch, Mozilla staff [surveyed the Mastodon community](https://mastodon.social/@firefoxwebdevs/115849251057488746), asking whether translation features in Firefox ought to be affected by the kill switch.

Mozilla staff said that the on-device translation models shipped in Firefox were trained on open data, and 49% of voters responded that Firefox should allow users to re-enable translations, even if other AI features were disabled.

It's easy to understand the rationale here. If you know about how the AI models are made, [you know that they are built on large-scale piracy](https://committees.parliament.uk/writtenevidence/126981/pdf/). Big Tech companies have gone out and scraped as much content as they can get their hands on - legally or illegally (and it is mostly illegally). By saying that the translation models are trained on open data, Mozilla is in effect saying that this is "good AI" -- not the AI that is built on piracy.

In just one recent example, Claude owner Anthropic [recently agreed to pay $1.5 billion to settle a lawsuit](https://www.npr.org/2025/09/05/g-s1-87367/anthropic-authors-settlement-pirated-chatbot-training-material) over their piracy of books. Incidentally, Anthropic is also one of the vendors featured in Firefox's AI chatbot sidebar feature.

So the concerns are real and known, so Mozilla is taking people's concerns seriously when they engage both in the kill switch and in conversations about the ethics of LLM piracy.

Right?

That would be accurate, if it were true that Mozilla's translation models were trained on open data. Given how [Mozilla has been talking up open source AI](https://youtu.be/51hXnOi8G4g?t=217), it would make sense if Mozilla was practicing what it preached.

After all, Mozilla is the same company that garnered community contributions for [Common Voice](https://commonvoice.mozilla.org). Common Voice is an open source data set of speech data of over 130 languages, all contributed by members of the community, including myself. That data is available to download on Mozilla’s [Data Collective](https://datacollective.mozillafoundation.org/datasets).

Given that history, I first looked at Mozilla’s Data Collective to find the open data that Mozilla staff was referring to.

I wasn't able to find it, so I looked closer at the [public docs for translations](https://mozilla.github.io/translations/). Mozilla states that they use [OPUS](https://opus.nlpl.eu/) as their [main resource](https://mozilla.github.io/translations/docs/contributing/) for translation datasets.

A quick look at the [Opus Corpora](https://opus.nlpl.eu/corpora) reveals that most of the datasets are not permissively licensed. Instead, they are scraped from copyrighted web sources, exactly like the big tech AI companies.

Why is Mozilla claiming that their models are open when they know that they aren't? It isn't as if Mozilla doesn't know that open data exists -- they actually host a repository of it.

## A Distraction - By Design

It isn't just that Mozilla is lying to us about the provenance of the data used in the translation engine - they are using the lie to sideline community members concerned about Mozilla co-signing the theft of the commons.

Mozilla says that [there is uncertainty about whether the translation engine is AI](https://mastodon.social/@firefoxwebdevs/115849316325143364) - as if people are having a discussion about semantics.

Mozilla seems to imagine that people don't like AI because what it is called, not because of how it works.

In their post, Mozilla specifically says that the translation engine is trained on open data. This is untrue. They then use this lie to convince people that Mozilla is somehow doing "good AI" like they are promoting elsewhere -- this isn't the bad pirated AI, this is good, homegrown AI.

Mozilla is saying "Hey, if you hate AI so much that even pure and good (and optional) AI isn't good enough for you, we'll let you disable it. We don't really understand why you would want to, since it is clearly so good, but we'll let you opt-out anyway."

The implication is that the AI kill switch exists to protect the sensibilities of whiny luddites, rather than to distract from Mozilla's own failings.

When people later pointed out that the Mozilla's translation models don't qualify as open data, Mozilla [apologized](https://mastodon.social/@firefoxwebdevs/115854287318814153) but says that they "don't think it impacts the results".

Right.

## Reframing the Debate on AI

With the AI kill switch, Mozilla is attempting to reframe the debate on AI as a question of user choice, rather than a positive vision of Mozilla's space in the industry.

While Mozilla has long claimed to help people break free from big tech, their latest moves have the company joining with big tech to work against their community.

While features like AI powered tab grouping and link previews might have limited utility, their uselessness help to limit the damage they do to the browser and the broader web ecosystem.

AI powered assistive image descriptions and translations are features that are useful to at least some segment of the userbase, but their usefulness are borne from the fact that they are reliant on pirated data sets.

The model for Firefox's AI powered image description generator was [partially trained by OpenAI's GPT4-o](https://blog.mozilla.org/en/firefox/firefox-ai/help-us-improve-our-alt-text-generation-model/), which itself is trained on pirated datasets.

Mozilla Translations is also trained on non-public domain data sets.

The fact that LLMs based on pirated data sets are useful is not an accident, or surprising. It would have been commendable if Mozilla had managed to train new translation models without needing to steal from the commons, like big tech has.

By obfuscating the source of the training data in shipping Mozilla products, Mozilla is trying to convince ordinary people to support the [theft of the commons]({% post_url 2025-12-17-AIs-unpaid-debt-how-llm-scrapers-destroy-the-social-contract-of-open-source %}). After all, it is useful, and are people really against accessibility improvements?

The problem is, Mozilla isn't being upfront about what is going on.

Mozilla is speaking out of both sides of its mouth -- it's talking about how important it is to [own your stack](https://blog.mozilla.org/en/mozilla/mozilla-open-source-ai-strategy/) in the world of proprietary AI -- even as they themselves partake in the same piracy being practiced by the proprietary vendors.

Yes, Mozilla started their Data Collective, and I have personally contributed to Common Voice, but when it comes to Firefox (their flagship product), they are willing to ship closed AI.

That is the debate that Mozilla is trying to avoid.

In their post detailing their [strategy on open source AI](https://blog.mozilla.org/en/mozilla/mozilla-open-source-ai-strategy/), Mozilla hearkens back to 25 years ago in describing "what we did for the web":

> Twenty-five years ago, Microsoft Internet Explorer controlled 95% of the browser market, which meant Microsoft controlled how most people experienced the internet and who could build what on what terms. Mozilla was born to change this, and Firefox succeeded beyond what most people thought possible — dropping Internet Explorer’s market share to 55% in just a few years and ushering in the Web 2.0 era.

Back then, Mozilla was formed from the ashes of Netscape, and what Mozilla did for the web was to fund and build a free, open source web browser that served as real competition to the big tech companies of the era.

In trying to reclaim the mantle of "[leading a rebel alliance](https://www.cnbc.com/2026/01/27/mozilla-building-an-ai-rebel-alliance-to-take-on-openai-anthropic-.html)" to take on proprietary AI, Mozilla is hoping that we ignore that Firefox itself is becoming infected with big tech AI, even as they pour money into projects destined for failure.

It would mean something if Mozilla was actually building what they were claiming to build - in the past, Mozilla built Firefox as a competitor to Microsoft's Internet Explorer. Today, Mozilla ships with chatbot integrations with multiple proprietary big tech AI providers, including the Microsoft-partnered OpenAI.

Mozilla's $1.4bn investment in open AI is not in Firefox - Mozilla is instead investing in other companies to do what Mozilla itself doesn't seem equipped to do. Mozilla itself will instead be partnering directly with big tech and partaking in piracy when it builds its own AI products.

Mozilla seems to believe that by simply reminding the industry that it once did great things, that we will be convinced that everything Mozilla is doing around AI is part of the same tradition.

Unfortunately, it isn't.

## Mozilla's Betrayal of Open Source

We should have seen this coming, even before the announcement from Mozilla's new CEO. A few months ago, [Mozilla began to overwrite volunteer contributions on Support Mozilla with slop]({% post_url 2025-12-08-mozillas-betrayal-of-open-source-googles-gemini-ai-is-overwriting-volunteer-work-on-support-mozilla %}) from Google's Gemini.

That caused the Japanese translation group to disband, including the locale leader, who went by marsf and had [contributed edits to over 1000](https://support.mozilla.org/en-US/user/marsf/documents) articles over [20 years](https://support.mozilla.org/en-US/user/marsf/).

In case you thought Gemini was open source, it isn't. Upon the introduction of Gemini, the UK based Society of Authors wrote an open letter to Google saying:

> The Society of Authors was greatly concerned to hear that, at the launch of Gemini pro, ‘Google repeatedly refused to answer questions from reporters about how it collected Gemini’s training data, where the training data came from and whether any of it was licensed from a third party’. Given the reportedly extensive infringement of copyright protected works that took place to build existing Large Language Models (LLMs), this continued lack of transparency is alarming and leads us to assume that Google has used creators’ works unlawfully and unfairly, without consent or any kind of remuneration.

Mozilla’s moves represent a double betrayal: first, they reject the community’s contributions to SUMO’s knowledgebase, then to add insult to injury, they reject the very idea of open source by implementing a closed source model based on stolen data.

The message Mozilla is sending when choosing to overwrite human contributions with stolen ones is that while Mozilla will gladly take your contributions, it is also willing to steal them.

## Opportunity Costs

Some of you may be reading and saying "So what? If you don't like it, just use the kill switch!"

That is clearly the response Mozilla wants us to have, and why the kill switch exists. Don't get me wrong, I appreciate that the option exists for Firefox users that don't want to be nagged to try AI features - like the [nags associated with the Link Previews]({% post_url 2026-01-06-architecting-consent-for-ai-deceptive-patterns-in-firefox-link-previews %}) feature.

That doesn't change the fact that by partnering with pirating AI vendors, and indulging in piracy itself, Mozilla helps to foreclose the introduction of the open source AI they claim to care about.

Imagine if back in 2009, when Google introduced [Chrome Frame](https://en.wikipedia.org/wiki/Google_Chrome_Frame), Mozilla rushed to integrate it. If you don't remember Chrome Frame, it was a [plugin for Internet Explorer that allowed you to run Chrome's engine in a tab](https://youtu.be/51hXnOi8G4g?t=795).

Mozilla could have told Firefox users that the introduction of Chrome Frame in Firefox proved how far Microsoft's Intenet Explorer had fallen, and Mozilla could take advantage of the high quality and open source web engine that Google was building.

Why bother investing in Gecko when Mozilla developers could instead work on user facing features, leaving engine work to Google? That is the path that [Opera](https://www.extremetech.com/computing/148312-opera-drops-presto-switch-to-google-and-apples-webkit-rendering-engine) and [Microsoft](https://blogs.windows.com/msedgedev/2021/03/09/microsoft-edge-legacy-end-of-support/) have gone in recent years - both have given up on developing their own web engines in order to instead develop browsers that rely on the work Google invests into Chromium. That relationship gives Google a whole lot of influence over the web platform, since their web platform is being shipped by multiple vendors - including other massive big tech companies.

Why then did it make sense for Mozilla to continue to invest in Gecko?

The obvious reason is that Gecko still exists, and since the majority of Gecko development is paid, it is Mozilla's continued investment that has granted web users with an option to browse the web that isn't fully owned by big tech.

That isn't what is happening this time around.

Perhaps Mozilla doesn't believe that they can build an open alternative to big tech AI, as they aren't trying. Instead, they are doing what Opera, Microsoft, Vivaldi, and others are doing when they develop products on top of Chromium -- they are putting a different face on the same big tech platform.

Instead of building the open AI that they exhort others to join and invest in - and shipping it, like they had with Gecko and Firefox 25 years ago, they are instead becoming just another distribution platform for the closed AI companies they claim to be against.

That isn't an exaggeration - one of the AI features that are disabled by the kill switch is the [chatbot integration in Firefox's sidebar](https://support.mozilla.org/en-US/kb/ai-chatbot). The products featured here are Anthropic Claude, OpenAI ChatGPT, Google Gemini, Le Chat Mistral, and Microsoft Copilot. None of these are open source - not a single one.

You are likely familar with the concept of [opportunity costs](https://en.wikipedia.org/wiki/Opportunity_cost) - the idea that by choosing one option, you lose out on the benefits of choosing an alternative option. That is the "cost" you pay for not taking the alternative opportunity.

We can think about this in the context of Chrome Frame. If Mozilla had integrated Chrome Frame, web developers may have more quickly decided to stop supporting both Internet Explorer *and* Firefox, since they could simply target Chrome, and their sites would work on every browser that had Chrome Frame.

Mozilla could have spent their resources on features to differentiate themselves from the competition - like what Microsoft and Vivaldi do today.

There would be little point in integrating Chrome Frame if Mozilla continued to be interested in developing Gecko, so the cost the web would pay would likely be the eventual disappearance of Gecko. We might still have Firefox, but investing in Chrome Frame would likely mean disinvestment in Gecko.

Mozilla investing $1.4 billion in non-Firefox AI projects while also integrating closed source, big tech AI is sending the signal that Mozilla isn't interested in developing an open source AI, and instead is looking to get paid by big tech.

Mozilla's pronouncements around AI are incredibly confusing if you take what they say at face value. Mozilla is telling us to not trust big tech AI and to not rent our models, all while they do exactly that. Mozilla doesn't have an instance of Gemini running on Mozilla servers, overwriting human contributions - they are paying Google to rent their model.

Mozilla says that Mozilla Translations are open source, but they are built exactly the same way that Google's models are built - scraping of copyrighted content without payment or permission.

Mozilla says that they are building a rebel alliance to take on industry heavyweights, all while integrating them directly in the browser, complete with nags to send them user data.

In an [interview with the Guardian](https://www.theguardian.com/technology/2025/oct/28/firefox-ai-internet-anthony-enzor-demeo), CEO Enzor-DeMeo declined to be transparent about how much the partnerships with AI companies are worth to Mozilla.

I'm not a betting man, but if I were, I'd guess that Mozilla is expecting to get back more than the $1.4 billion they are pouring into AI.

Given that context, Mozilla's investment in the so-called rebel alliance seems more like the biblical concept of [indulgences](https://en.wikipedia.org/wiki/Indulgence) -- a way to reduce the punishment from committed sins. Mozilla can partner with as many big tech companies that do as much damage to the world as they want, as long as they take some of that [dirty cash](https://www.youtube.com/watch?v=9o0rAvZtM7w) and put it towards some meaningless "good" projects.

It doesn't matter that the investment is unlikely to be fruitful - the point of  the investment is to forgive Mozilla for doing bad things.

Mozilla wouldn't need to pour good money after bad around open source AI if they were actually implementing open AI solutions in-house. What seems to be happening instead is that they are partnering with the closed source big tech AI pirates, and spending some of the proceeds to wash themselves clean of the stain of copyright theft.

## Mozilla's AI Future

While Mozilla pitches the AI kill switch as an exercise in user choice, it reveals itself to be a Hobson's choice -- take it or leave it.

If we accept that Firefox becoming an AI browser will necessarily mean that Mozilla will focus less on web platform or even browser features that don't rely on copyright theft, users have no choice but to leave it. The kill switch doesn't change that Mozilla is partnering with copyright pirates, thereby endorsing their behavior (and getting paid for it). It doesn't change that Mozilla is shipping AI models built on piracy in Firefox proper - no matter if it is optional or not.

The kill switch also doesn't change the betrayal of loyal community members whose contributions are being removed in favor of big tech AI slop.

In all of these cases, Mozilla had choices.

They could have chosen to allow community members to opt into translation suggestions, [like exists for Firefox in Mozilla Pontoon](https://blog.mozilla.org/l10n/2024/05/28/transforming-translations-how-llms-can-help-improve-mozillas-pontoon/), instead of forcing community members to play catch up as slop overwrites human contributions.

They could have partnered with their community to help develop an open corpus like they had for Common Voice, in order to power their translation engine. The existing localizations on Support Mozilla could have been used to kickstart model creation, and volunteers could have worked with developers to tune models to ease localization work for contributors. Rather than needing to correct the same errors over and over (since paid Gemini queries don't train the model), contributors could have been actively assisting in training an open model. Instead, Mozilla ignored their community and partnered with slop generating pirates.

Mozilla didn't need to choose to get paid by AI vendors and to try to distract us by investing in AI projects that -- let's face it -- will go nowhere. They could have instead taken that money and spent it on anything else -- even home grown AI.

If AI is as amazing as advertised, Mozilla should be able to take that $1.4 billlion they are planning on pouring down the drain and instead turn it into hundreds of billions. Just think -- in just 5 short years, Anthopic went from not existing to being worth over [$300 billion dollars](https://www.anthropic.com/news/anthropic-raises-30-billion-series-g-funding-380-billion-post-money-valuation).

Is Mozilla taking home nearly that much money to secure its future, or is AI simply another way to sell the Firefox audience to big tech?

The kill switch exists as a way to distract us from the larger questions surrounding AI in Firefox. By building it, Mozilla makes AI your responsibility - *you* choose to use it. Mozilla's agency never enters the picture.

We aren't going to ask how much the AI companies are paying Mozilla for the privilege of advertising to Firefox users and gathering their data. We won't deign to question whether Mozilla shipping pirated models in Firefox is something we ought to be concerned about -- Firefox users can disable it, so Mozilla is off the hook.

AI products seem to generally serve as an [accountability sink](https://aworkinglibrary.com/writing/accountability-sinks) - a way to absorb or obscure the consequences of a decision such that no one can be held directly accountable for it.

The kill switch is a fantastic example of such, since by providing users with the option, the users are now the ones accountable. Mozilla can point to the switch and wash themselves of accountability and responsibility.

Mozilla isn't responsible for your use of its AI. And that is the point.

---

{% include donate-social.html %} You can
[message me](https://mastodon.social/@yoasif) or follow
[this blog](https://mastodon.social/@quippdblog) on Mastodon.
