---
layout: post
title:  "Mozilla's Betrayal of Open Source: Google's Gemini AI is Overwriting Volunteer Work on Support Mozilla"
date:   2025-12-08 03:42 -0500
categories: writing
tags: firefox mozilla
external-url: 
image: /assets/images/social-previews/💔.png
redirect_from:

---

**TL;DR**: Mozilla's translation bot on Support Mozilla (that is [currently overwriting user contributions]({% post_url 2025-11-27-thank-mozilla-for-killing-localization-on-support-mozilla-and-replacing-human-contributions-with-AI-bots %}) is based on the closed source, copyright infringing LLM, Google Gemini. This is in spite of Mozilla claiming that they are at the forefront of open source AI, and belies their exhortations to choose to build open source AI and data sets. Although Mozilla has experience in attracting open contributions for data sets in projects like Common Voice, Mozilla is using a closed data set to overwrite open contributions. Since (paid) Gemini queries do not train the model, Mozillians can expect to [correct errors every time the bot automatically updates]({% post_url 2025-11-20-mozilla-support-update-end-of-japanese-community-mozilla-doubles-down-on-ai %}) an article.

I made <a href="https://www.youtube.com/watch?v=TvPMZeFrr7s">a video</a> if you want to watch instead.

<p>
<iframe width="560" height="315" src="https://www.youtube.com/embed/TvPMZeFrr7s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></p>

---

{:toc}
* toc

In the world of open source, community contributions are the norm. That's why Mozilla's recent decision to [overwrite community contributions with an AI-powered bot]({% post_url 2025-11-27-thank-mozilla-for-killing-localization-on-support-mozilla-and-replacing-human-contributions-with-AI-bots %}) feels like such a betrayal.

Given Mozilla's open source history, you might assume that the <abbr title="artificial intelligence">AI</abbr> is powered by an open model with datasets available on [Mozilla Data Collective](https://datacollective.mozillafoundation.org/).

Mozilla's leadership has recently been talking up open source <abbr title="artificial intelligence">AI</abbr>, saying that it is important to own what you build.

I took a look at the Data Collective to see whether the Support Mozilla data set was there. [No such luck](https://datacollective.mozillafoundation.org/datasets?q=support).

I should have looked at the [Kitsune documentation](https://mozilla.github.io/kitsune/) instead. [Kitsune](https://github.com/mozilla/kitsune) is the software that runs <abbr title="Support Mozilla">SUMO</abbr>, and the Kitsune developers have helpfully documented the translation bot. Kitsune is the Japanese word for fox, and in [Japanese folklore](https://en.wikipedia.org/wiki/Kitsune), they are ascribed with intelligence and magical powers. Kitsune's bot is built on top of Gemini 2.5 Pro, according to the docs.

## Google Gemini

Unlike the vision that Mozilla is pitching elsewhere, Gemini 2.5 is *not* an open source model, with data coming from "publicly available sources". We know what that means -- Google pirated a whole lot of copyrighted material from the web.

The UK based Society of Authors wrote an [open letter to Google](https://societyofauthors.org/2023/12/20/calling-for-transparency-for-the-use-of-creators-works-in-googles-new-gemini-ai-system/) upon the introduction of Gemini, saying:

>The Society of Authors was greatly concerned to hear that, at the launch of Gemini pro, ‘Google repeatedly refused to answer questions from reporters about how it collected Gemini’s training data, where the training data came from and whether any of it was licensed from a third party’. Given the reportedly extensive infringement of copyright protected works that took place to build existing Large Language Models (LLMs), this continued lack of transparency is alarming and leads us to assume that Google has used creators’ works unlawfully and unfairly, without consent or any kind of remuneration.

While we don't yet know what the legal remedies for the copyright infringement used to create models like Gemini is going to end up looking like, there is no doubt that Gemini is both closed source and contains pirated material.

## Open Source

### Common Voice

If you are involved in the wider Mozilla community, you may know about [Common Voice](https://commonvoice.mozilla.org/en). Common Voice is an open source data set of speech data of over 130 languages, all contributed by members of the community, including myself. This data is available to download on Mozilla's new Data Collective.

The existence of the Common Voice data set demonstrates that people are willing to contribute to open data sets - companies don't need to infringe on people's copyrights in order to get access to training data.

### Mozilla is Biting the Hand(s) that Feed It

In choosing closed source, infringing models, Mozilla is biting the hands of the community that feeds it.

Mozilla has experience in garnering community contributions to build open data sets. Instead of asking for their community's help in developing an open source localization model, they deployed a closed source model and destroyed open contributions.

That makes Mozilla's committment to open source <abbr title="artificial intelligence">AI</abbr> seem insincere.

Mozilla's moves represent a double betrayal: first, they reject the community's contributions to <abbr title="Support Mozilla">SUMO</abbr>'s knowledgebase, then to add insult to injury, they reject the very idea of open source by implementing a closed source model based on stolen data.

Mozilla's Data Collective includes this blurb on the homepage:

>Mozilla Data Collective is rebuilding the AI data ecosystem with communities at the centre. Access over 300 high-quality global datasets, built by and for the community in a transparent and ethical way.

While Mozilla says that they are rebuilding <abbr title="artificial intelligence">AI</abbr> data ecosystems with communiites at the center, that isn't what is happening on Support Mozilla. There, Mozilla is destroying a high quality data set built by the community in a transparent and ethical way.

What motivation do communities have to contribute to Mozilla projects or data sets if Mozilla itself does not privilege open source? The message Mozilla is sending when choosing to overwrite human contributions with stolen ones is that while Mozilla will gladly take your contributions, it is also willing to steal them.

### Contributions to Support Mozilla

The Gemini [terms of service](https://ai.google.dev/gemini-api/terms) says that Google does not use submitted prompts to improve paid Gemini queries.

That means that overwrite over overwrite, any fixes that localizers make to the Mozilla knowledgebase can be overwritten at any moment by a bot that doesn't learn.

The only way Kitsune developers can modify Gemini's output is to modify the [prompt](https://github.com/mozilla/kitsune/blob/main/kitsune/llm/l10n/prompt.py) that Mozilla sends to Google to provide a translation.

That changes the command that Mozilla sends Google, but it has *no effect* on the underlying model that contains the error being corrected.

Why should Mozillians bother to make corrections to a corpus that is prone to be overwritten by the whim of anyone making a modification to the American English version of an article when they know that that correction won't stick -- *can't stick*, because Mozilla is throwing away the open data that they are contributing, release after release?

## Barreling Ahead to Proprietary AI

Since the [November <abbr title="Support Mozilla">SUMO</abbr> call]({% post_url 2025-11-20-mozilla-support-update-end-of-japanese-community-mozilla-doubles-down-on-ai %}), Mozilla continues to barrel ahead towards the brave new world of proprietary <abbr title="artificial intelligence">AI</abbr>.

Following up from the call, Mozilla introduced a "[Feedback and Training Period](https://support.mozilla.org/en-US/forums/contributors/717471)", where they invited the community to study the machine translation bot and to provide feedback.

Their feedback process is not open -- instead of asking for feedback on the forum where they made the announcement, they are telling the community to submit feedback in secret, to a [Google form](https://docs.google.com/forms/d/e/1FAIpQLScCVm0TKwoT7V7hoE4LwwVda6321vRb9r4mvmKFu0bkgPHNPA/viewform?usp=publish-editor) monitored by Mozilla.

That seems like a way to quash negative feedback, and to allow only approved feedback to emerge. Why is Mozilla, an open company - operating in secrecy?

As Mozilla elicits feedback, the translation bot continues to run on Support Mozilla, overwriting community contributions. A recently opened Kitsune feature request reveals the challenging environment that contributors are operating in -- contributors want a [listing of articles](https://github.com/mozilla/sumo/issues/2674) that have been overwritten by the bot. They want it to look like an existing listing of [unreviewed articles](https://support.mozilla.org/localization/unreviewed).

A full month after marsf resigned from <abbr title="Support Mozilla">SUMO</abbr> as Japanese locale leader, contributors are asking for an easier way for them to find the AI's modifications.

Why is Mozilla barreling forward towards closed source AI? I have some ideas about that, but this post is already pretty long. Follow if you want to read my thoughts on that.

---

{% include donate-social.html %} You can [message me](https://mastodon.social/@yoasif) or follow [this blog](https://mastodon.social/@quippdblog) on Mastodon.
