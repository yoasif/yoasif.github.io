---
layout: post
title: "AI Code is Hollowing Out Open Source, and Maintainers are Looking the Other Way"
date: 2026-04-08 1:41 -0500
categories: writing
tags: ai open-source llm
external-url:
image: /assets/images/social-previews/AI-CODE.png
redirect_from:
---

**TL;DR**: The advent of AI based, LLM coding applications like Anthropic's Claude and ChatGPT have prompted maintainers to experiment with integrating LLM contributions into open source codebases.

This is a fast path to open source irrelevancy, since the US copyright office has deemed LLM outputs to be uncopyrightable. This means that as more uncopyrightable LLM outputs are integrated into nominally open source codebases, value leaks out of the project, since the open source licences are not operative on public domain code.

That means that the public domain, AI generated code can be reused without attribution, and in the case of copyleft licences - can even be used in closed source projects.

I made <a href="https://www.youtube.com/watch?v=ARhxmRgLETM">a video</a> if you want to watch instead.

{% include youtube.html id="ARhxmRgLETM" title="AI Code Is Breaking Open Source (Here’s How)" %}

---

{:toc}

- toc

Last year, I wrote that [big tech AI's gobbling of data was particularly damaging to open source and free culture communities]({% post_url 2025-12-17-AIs-unpaid-debt-how-llm-scrapers-destroy-the-social-contract-of-open-source %}), since by taking advantage of those who share freely, they destroy the bargain that made free software spread like wildfire.

While back then I talked about the *communities* surrounding open source, the damage has now arrived to the open source projects themselves.

With tools like Anthropic's Claude and other coding LLMs, contributors are hollowing out open source -- and often, the maintainers are gleeful partners in their destruction.

Like in that last post, I'm focusing on projects that use [copyleft](https://en.wikipedia.org/wiki/Copyleft) or weak copyleft licenses like the [GPL](https://en.wikipedia.org/wiki/GNU_General_Public_License), [LGPL](https://en.wikipedia.org/wiki/GNU_Lesser_General_Public_License), and [MPL](https://en.wikipedia.org/wiki/Mozilla_Public_License). That is because copyleft licenses require [reciprocity](https://en.wikipedia.org/wiki/Copyleft#Reciprocity) -- they require that derivative works are distributed under the same license terms. 

As you know, derivative works are works that use parts of an original work in a new work.

## Copyleft History

The concept of copyleft was described in Richard Stallman's [GNU Manifesto](https://www.gnu.org/gnu/manifesto.html) in 1985, where he [wrote](https://www.gnu.org/gnu/manifesto.html#available):

> GNU is not in the public domain. Everyone will be permitted to modify and redistribute GNU, but no distributor will be allowed to restrict its further redistribution. That is to say, proprietary modifications will not be allowed. I want to make sure that all versions of GNU remain free.

Stallman worked within the framework of existing law to promote this idea, and formalized it in the [Emacs General Public License](https://www.free-soft.org/gpl_history/emacs_gpl.html), which later evolved to the GNU GPL - now one of the most popular free-software licenses.

Copyleft or weak copyleft licences are used for many of the best known open source projects - like Linux, Git, WordPress, VLC, MySQL and Firefox.

Copyleft licenses differ from [permissive licenses](https://en.wikipedia.org/wiki/Permissive_software_license) like the BSD, MIT and Apache licenses. Under permissive licenses, there is no requirement for derivative works to be reciprocally licensed. This means that permissive licenses allow derivative works to be closed source.

There is real disagreement in the open source world around license choice. The schism between copyleft and permissive licences is a real one, and there have been years of discussion about which type of license is the right one for a particular project.

Copyleft licenses are sometimes derisively called "viral" - former Microsoft CEO Steve Ballmer [famously called Linux a cancer](https://web.archive.org/web/20011115003306id_/http://www.suntimes.com/output/tech/cst-fin-micro01.html), saying that:

>Open source is not available to commercial companies. The way the license is written, if you use any open-source software, you have to make the rest of your software open source.

and

>Linux is not in the public domain. Linux is a cancer that attaches itself in an intellectual property sense to everything it touches. That's the way that the license works.

While [Ballmer was wrong about Linux](https://www.zdnet.com/article/ballmer-i-may-have-called-linux-a-cancer-but-now-i-love-it/), many businesses prefer to avoid copyleft licenses, since they want to be able to not share alike -- they want to be able to close their products.

### License Choice

While I'm getting into the weeds around license choice, it is interesting to observe the progression of two major open source operating system families - the BSD derivatives and GNU/Linux distributions. BSD developers have prized quality and reliability, and have long felt that they stood apart from the Linux developer community as be being more "free" -- since they are more permissively licensed.

As NetBSD explains in [Why the NetBSD Project uses a Berkeley-style license](https://www.netbsd.org/about/redistribution.html):

> One thing that some people don't realize about Berkeley-style licenses is that they allow licensees (the users of the licensed work) to sell the code, in any form, with or without modification, and that they make no requirement that licensees give away the source code, even if they're selling binaries. This provides a striking contrast to the license terms granted by the GNU General Public License, because the GPL requires that, if you're distributing binaries, you must be willing to give away the sources to build those binaries.
>
>Those of us working on the NetBSD Project are aware of this distinction, and some even value it. As stated above, we want anyone to be able to use the NetBSD operating system for whatever they want, just as long as they follow the few restrictions made by our license terms. Additionally, we don't think it's right to require people who add to our work and want to distribute the results (for profit or otherwise) to give away the source to their additions; they made the additions, and they should be free to do with them as they wish. Those of us working on the NetBSD Project are aware of this distinction, and some even value it. As stated above, we want anyone to be able to use the NetBSD operating system for whatever they want, just as long as they follow the few restrictions made by our license terms. Additionally, we don't think it's right to require people who add to our work and want to distribute the results (for profit or otherwise) to give away the source to their additions; they made the additions, and they should be free to do with them as they wish. 

Since commercial vendors can close-source BSD code, it has been used in closed source products like Apple's macOS and Sony's Orbis OS (used in its PlayStation consoles since the PS3).

The open source BSD desktop has not progressed as quickly as the Linux desktop has, however. Linux advocates have long argued that the viral nature of the GPL promoted sharing beyond what the BSD license asks. While BSD licenses *allow* you to share, copyleft licenses *enforce* sharing. This ends up ensuring that more code is kept open in the Linux world.

As David Wheeler [commented](https://dwheeler.com/blog/2006/09/01/#gpl-bsd):

>I think there is one primary reason Linux-based systems completely dominate the *BSDs’ market share - Linux uses the protective GPL license, and the *BSDs use the permissive (“BSD-style”) licenses. The BSD license has been a lot of trouble for all the *BSDs, even though they keep protesting that it’s good for them. But look what happens. Every few years, for many years, someone has said, “Let’s start a company based on this BSD code!” BSD/OS in particular comes to mind, but Sun (SunOS) and others have done the same. They pull the *BSD code in, and some of the best BSD developers, and write a proprietary derivative. But as a proprietary vendor, their fork becomes expensive to self-maintain, and eventually the company founders or loses interest in that codebase (BSD/OS is gone; Sun switched to Solaris). All that company work is then lost forever, and good developers were sucked away during that period. Repeat, repeat, repeat. That’s enough by itself to explain why the BSDs don’t maintain the pace of Linux kernel development.

...

>BSD license advocates claim that the BSD is more “business friendly”, but if you look at actual practice, that argument doesn’t wash. The GPL has created a “safe” zone of cooperation among companies, without anyone having to sign complicated legal documents. A company can’t feel safe contributing code to the BSDs, because its competitors might simply copy the code without reciprocating. There’s much more corporate cooperation in the GPL’ed kernel code than with the BSD’d kernel code. Which means that in practice, it’s actually been the GPL that’s most “business-friendly”. 

## LLM Code is Uncopyrightable

Some people who use coding LLMs may not know that the output of LLMs are not copyrightable. While commenters will retort that this applies to the American notion of copyright, it is worth remembering that the open source licenses in common use are based on the American notion of copyright.

In the US context, the copyright office has [rightly concluded that LLM outputs cannot be copyrighted](https://www.copyright.gov/ai/Copyright-and-Artificial-Intelligence-Part-2-Copyrightability-Report.pdf) as they are not the creative output of a human. They compare LLM outputs to being comparable to work for hire, where you may ask an employee to create some work for you.

>As the Third Circuit explained, when a person hires someone to execute their expression, “that process must be rote or mechanical transcription that does not require intellectual modification or highly technical enhancement” for the delegating party to claim copyright authorship in the final work. Although entering prompts into a generative AI system can be seen as similar to providing instructions to an artist commissioned to create a work, there are key differences. In a human-to-human collaboration, the hiring party is able to oversee, direct, and understand the contributions of a commissioned human artist. Depending on the nature of each party’s contributions, the artist may be the sole author, or the outcome may be a joint work or work made for hire.

...

>Prompts do not appear to adequately determine the expressive elements produced, or control how the system translates them into an output.

The copyright office says that when an employer directs an artist to create a work, the employer is able to "oversee, direct, and understand the contributions". Based on the how they each contributed to the work, the artist may be the sole author, or it may end up becoming a joint work, or a work for hire.

>The Office concludes that, given current generally available technology, prompts alone do not provide sufficient human control to make users of an AI system the authors of the output. Prompts essentially function as instructions that convey unprotectible ideas. While highly detailed prompts could contain the user’s desired expressive elements, at present they do not control how the AI system processes them in generating the output.

They conclude by saying that there isn't enough expressive input in the prompts used by humans to instruct the LLMs to generate output that would make it copyrightable. The apparent "creativity" is attributable to the LLM, which is not a human.

Programmers may believe that they have a way out - they can simply test the code, or review it and commit it under their own name - that is certainly creative enough. Unfortunately, not according to the copyright office. The only portions of the work that can be copyrighted are the actual creative work the person has put into the work. If the person changes 10 lines in a 1,000 line changeset, that person holds copyright only to the 10 lines they modified. Everything else is uncopyrightable slop.

A lot of programmers are going to struggle with this, since clearly the code compiles, and it may even be of high quality. The problem is, copyright is not based on whether something works or is desirable, but rather if it is creative - and created by a human.

### The Monkey Selfie Copyright Dispute

We can see this clearly in the case of the [monkey selfie copyright dispute](https://en.wikipedia.org/wiki/Monkey_selfie_copyright_dispute).

In the late 2000s, British wildlife photographer [David J. Slater](http://www.djsphotography.co.uk/) traveled to Indoneisa, befriended a group of wild macaques, and set up his camera equipment in a way that a monkey selfie might happen. He then reviewed the photos the monkeys took and licensed them commercially. He believed that his action of arranging the scene in a way that that a selfie might be made had imbibed the work with enough creative input from him to claim the copyright to the work.

It is a little confusing, so I'm going to say it directly. Mr. Slater didn't take the photos. Monkeys did.

Unfortunately for Mr. Slater, in August of 2014, the US Copyright office published an opinion to clarify that "only works created by a human can be copyrighted under United States law," - this "excludes photographs and artwork created by animals or by machines without human intervention". They went on to say that the [copyright] office would "refuse to register a claim if it determines that a human being did not create the work. The Office will not register works produced by nature, animals, or plants."

#### Copyright and LLMs

If we apply this logic to code produced by LLMs, the human orders the LLM to generate some output. They then examine the output, and consider it to be desirable. They show the code to other people, who also like it -- this would be something like code review. If everyone is on the same page that the LLM output was desirable, they are free to use the code for whatever purposes they want.

The one thing they can't do is copyright it. The only thing they can copyright are the creative inputs they made to the work. If during code review, a human changes a few lines of code, those lines would be copyright the human that wrote or modified the code. If on the other hand, another LLM is doing the code review and modifies some code, it's all still slop.

Simply examining the code and deciding it is good is like examining the photo that a monkey took -- it might be good code, or a good photo, but it wasn't creative output from a human. Thus, it is uncopyrightable.

What does that mean for the code in question?

If the code is uncopyrightable, it is in the public domain. Since it is in the public domain, anyone is free to use it for any purpose they wish.

### LLM Code and Open Source

Unfortunately, this presents a real challenge for open source.

Since the foundations of open source are the copyright regime, people can only release their code under an open source license if they hold the copyright. If the code in question was generated by an LLM with no further creative input (remember that testing isn't creative input into the work), the code cannot be licensed as anything but public domain. People cannot bind others from using that output for whatever purposes they wish, and people can't expect that they will abide by terms like reciprocity for derivative works.

This fundamentally destroys the bargain of copyleft licenses -- without the requirement of reciprocity, the LLM code acts more like BSD licensed code -- people can take it and use it for whatever purpose they wish.

Permissive license aficionados may see no problem here - they pride themselves as being more free then copyleft advocates, and while those licenses often require attribution - letting people know that the code is being used - ignoring that requirement may not bother them a whole lot.

Not so for the copyleft licenses. Those licences specifically bind derivative works to reciprocity -- a requirement that cannot be enforced if the code is not copyrightable.

This means that as LLM generated code is incorporated into codebases that call themselves copyleft, value leaks out of the project. Maintainers cannot prevent the LLM code from being incorporated into closed source projects without reciprocity - the license might *read* GPL, but the code is public domain.

Some open source maintainers either don't believe this to be true, or don't understand the law, and have taken it upon themselves to try to avoid the binding strictures of copyleft licenses, and come up with a brilliant solution. They'll simply command an LLM to produce a nominally "clean room" permissively licensed version of copyleft code.

## chardet

That is exactly what happened to chardet.

chardet is a library that lets programmers detect the character encoding of content.

The primary contributor and maintainer of chardet for the last 12 years, dan-blanchard used Claude Code with Opus 4.6 (and [superpowers](https://github.com/chardet/chardet/pull/322)!) to [rewrite chardet](https://github.com/chardet/chardet/pull/322) in less than a week.

As part of the update to version 7.0.0, Blanchard announced that he relicensed the project as MIT, changing from the LGPL license. The LGPL is a copyleft license, and the MIT license is a permissive license.

chardet's original author (Mark Pilgrim) came out of the woodwork and [informed the project maintainers that they had no right to relicense the project](https://github.com/chardet/chardet/issues/327).

He says:

>However, it has been brought to my attention that, in the release 7.0.0, the maintainers claim to have the right to “relicense” the project. They have no such right; doing so is an explicit violation of the LGPL. Licensed code, when modified, must be released under the same LGPL license. Their claim that it is a "complete rewrite" is irrelevant, since they had ample exposure to the originally licensed code (i.e. this is not a "clean room" implementation). Adding a fancy code generator into the mix does not somehow grant them any additional rights.
>
>I respectfully insist that they revert the project to its original license.

[The current maintainer responded to Pilgrim](https://github.com/chardet/chardet/issues/327#issuecomment-4005195078) by asserting that they had the right to relicense, since this was not a derivative work of the original chardet - he claimed that the Claude generated code is a so-called "clean-room" implementation.

We'll come back to that later.

Blanchard also [explained why he tried to relicense the project](https://github.com/chardet/chardet/issues/327#issuecomment-4005324385) under a more permissive license -- he wanted to be able to include chardet in the Python standard library. The Python standard library needs to be permissively licensed, so chardet's existing license didn't qualify. Beyond that, after years of working virtually alone, he wanted some help.

>About a decade ago, there was talk of trying to include chardet in the Python standard library, because it is a dependency of nearly every Python project. (I would dig up the Twitter thread but I deleted my account since then. I would be happy for anyone to point me to it if they have it.) Anyway, we couldn't move forward with it because the standard library code has to be a more lenient license like MIT or BSD.
>
> As the years of maintaining this project have gone on, the more and more I've added to it and made major changes to it, the more I've wanted it to become more than just a one-man shop. My main goal with relicensing is to encourage more contribution either through trying to submit it to the standard library, or just by having more people work on it who might avoid LGPL projects for whatever reason.

GitHub user Ratfink pointed out a teensy problem with that second motivation, [saying](https://github.com/chardet/chardet/issues/327#issuecomment-4005674356):

>Now that the project has eradicated all past contributions from human developers, why would I ever decide to start contributing? I can only assume my efforts would be similarly disrespected at some future date.

I said the same thing a while back about the [the way Mozilla disrespected their volunteer localization community]({% post_url 2025-12-08-mozillas-betrayal-of-open-source-googles-gemini-ai-is-overwriting-volunteer-work-on-support-mozilla %}
"Mozilla's Betrayal of Open Source: Google's Gemini AI is Overwriting Volunteer Work on Support Mozilla").

Blanchard explained his thoughts on why the newly licensed code was a "clean-room" implementation.

To catch you up, a clean-room design is where a team will copy a design by reverse engineering it and recreating it without infringing on the copyrights associated with the original design. This usually means that the people doing the reverse engineering can't have ever seen the original, copyrighted design. 

For example, the Wine project [disallows](https://gitlab.winehq.org/wine/wine/-/wikis/Developer-FAQ#who-cant-contribute-to-wine) "anyone who has seen Microsoft Windows source code (either stolen, under an NDA, disassembled, or otherwise)" to work on the project. They have a set of [clean room guidelines](https://gitlab.winehq.org/wine/wine/-/wikis/Clean-Room-Guidelines) to help contributors understand the types of techniques they can use to reverse engineer Windows features - all to ensure that they are in a legally defensible place.

Clean-room designs are a legally defensible way to copy a work, so it makes sense that Blanchard would argue that the new code was developed in a clean room.

While I'm not going to get into weeds about whether or not it makes sense to talk about a clean-room design when Claude is virtually guaranteed to have the original chardet corpus in its training data, others have figured out that they can provide a clean-room design as a service.

## Malus

Enter [Malus](https://malus.sh).

Malus offers a clean room as a service.

They claim that their "proprietary AI robots independently recreate any open source project from scratch", resulting in new code with corporate-friendly licensing. As stated by their tagline, they "Liberate Open Source" from obligations like attribution or copyleft.

There's a bunch of detail on the site about how the "liberation" works, complete with a bunch of testimonials from companies successfully generating clean-room, non-copyleft versions of open source projects.

Some of their FAQ entries are openly hostile to open source developers, like this one:

>What about the original developers?
>
>They made their choice when they released their code as "open source." We're simply exercising our right to independently implement the same functionality. If they wanted compensation, they should have worked for a corporation.

and in another one, where they claim to be able to free code from any license:

>What licenses can you eliminate?
>
>All of them. MIT, Apache, GPL, AGPL, LGPL, BSD, MPL—if it has terms, we can liberate you from them. Special rush pricing available for AGPL emergencies.

Back to reality.

Malus is a parody, but its homonym describes perfectly what LLM contributions or recreations of copyleft projects do to the original projects - pure malice. Hobbyists and practitioners released copyleft code with the expectation that their contributions would remain free forever, with the stipulation that modifications to their code would also remain free forever.

## LLM Contributions

If copyleft codebases accept public domain AI generated code into their codebases, they are signing up to hollow out their projects from the inside out. The provisions of the copyleft license listed in the repository are no longer operative for the LLM generated code, so projects can no longer enforce attribution or reciprocity.

That leaves the license to be a lie, and every contributor who contributed under the original license is being robbed, as those contributions were released under the stipulation that derivative works based on their work would also remain free. With LLM contributions, that is no longer the case.

While everyone may not feel strongly that they are being wronged, many will -- contributors could have chosen to contribute to permissively licensed codebases, but instead decided to contribute to copyleft codebases. For many, the license is an incentive, and they feel strongly that copyleft is enforced. With the acceptance of AI generated slop into copyleft codebases, maintainers are changing the terms of the project - sometimes decades after people originally contributed.

As Malus shows us, this is not good for open source. If the reciprocal provisions of copyleft licenses can no longer be enforced, it may mean that people will share less. People may not bother contributing to a project that says it is copylefted, but devalues its own contributors by being willing to violate the license to accept AI slop.

---

{% include donate-social.html %} You can
[message me](https://mastodon.social/@yoasif) or follow
[this blog](https://mastodon.social/@quippdblog) on Mastodon.
