---
layout: post
title:  "Mozilla Turns Firefox Away from Open Source, Towards Spyware: Firefox Labs Now Requires Data Collection"
date:   2025-06-16 9:28 -0500
categories: writing
tags: firefox
external-url: 
image: /assets/images/social-previews/firefox-labs-spyware.png
redirect_from: 

---

**TL;DR**: Mozilla is now enforcing data collection as a [pre-requisite to access new features in Firefox Labs](https://support.mozilla.org/en-US/kb/firefox-labs-explore-experimental-features-firefox). This is backed by the [Terms of Use that Mozilla introduced a few months ago]({% post_url 2025-03-05-the-mozilla-firefox-new-terms-of-use-disaster-what-actually-happened %}).

I made <a href="https://www.youtube.com/watch?v=1lOLe-NagMg">a video</a> if you want to watch instead.

<p>
<figure>
	<a href="https://www.youtube.com/watch?v=1lOLe-NagMg">
	<picture>
	  <source type="image/png" srcset="{{site.url}}/assets/images/thumbnails/labs.png,
	  								   {{site.url}}/assets/images/thumbnails/labs-2x.png 2x">
	  <img src="{{site.url}}/assets/images/thumbnails/labs.png" srcset="{{site.url}}/assets/images/thumbnails/labs-2x.png 2x" alt="A picture of a YouTube video"/>
	  <figcaption>Mozilla Backs Away from Open Source, Towards Spyware: Firefox Labs Now Requires Data Collection</figcaption>
	</picture>
	</a>
</figure>
</p>

**Note:** I've gotten a lot of feedback on the idea that Mozilla is moving away from open source. I wrote up a small [update](#note) with some additional thoughts -- I want to be clear that while I believe the addition of Terms and feature-gating of features behind telemetry are moves away from the spirit of open source, I agree with everyone who has pointed out that Firefox remains open source.

Hope you enjoyed the post!

---

{:toc}
* toc

## Firefox Labs and Telemetry

It started with an innocent question -- "Anybody else notice Firefox Labs doesn't work unless you've enabled telemetry?"

<p>
<figure>
  <picture>
    <source 
      type="image/png" 
      srcset="{{site.url}}/assets/images/firefox/labs-telemetry.png,
              {{site.url}}/assets/images/firefox/labs-telemetry-2x.png 2x">
    <img 
      src="{{site.url}}/assets/images/firefox/labs-telemetry.png" 
      srcset="{{site.url}}/assets/images/firefox/labs-telemetry-2x.png 2x" 
      alt="A screenshot showing a message from lastbern about Firefox Labs and telemetry.">
  </picture>
  <figcaption>A question from lastbern on <a href="https://matrix.to/#/#reddit-firefox:mozilla.org">Firefox Social</a></figcaption>
</figure>
</p>

I hadn't noticed, but a quick mozregression later, and I found [the changes](https://hg-edge.mozilla.org/integration/autoland/pushloghtml?fromchange=2d99d5ccb64f44aa0ef76ccc293efb9d0ec16cad&tochange=e4ec27d13a503218a250593825b2395577304747) starting in Firefox 138.

The change in behavior is simple -- disabling [data collection on Firefox desktop](https://support.mozilla.org/en-US/kb/technical-and-interaction-data#w_on-desktop) makes the Firefox Labs section of the Firefox Preferences UI go away.

Running the release version of Firefox confirmed that this is the released behavior.

Like lastbern, I was surprised that Mozilla was now locking features behind data collection, and I went looking for communication from Mozilla announcing this change.

I figured that there might be a mention in the [Firefox Nightly News blog](https://blog.nightly.mozilla.org/). Unfortunately, after looking through the last few posts, I saw no mention of this change to Labs. 

I reached out to the SUMO chat and to Mozilla's [Press Inquiry form](https://www.mozilla.org/en-US/press/press-inquiry/) to see if I was missing something. 

The chatroom responded that this was announced in the [Enterprise release notes for version 138](https://support.mozilla.org/en-US/kb/firefox-enterprise-138-release-notes). That is a strange place to put this note, since this isn't an "enterprise" feature, and [138 isn't an ESR release](https://whattrainisitnow.com/release/?version=esr).

The note says "Firefox Labs is now controlled by Nimbus, our testing platform, so disabling telemetry also disables Firefox Labs." That sounds pretty definitive, but it doesn't explain *why*, so I looked more closely at the bugs where the changes were made.

I soon found [bug 1959804](https://bugzilla.mozilla.org/show_bug.cgi?id=1959804 "Disabling telemetry makes Firefox Labs go away"), where Mike Kaply reported the new behavior as a regression. Mike reported: "Based on the regressing bug, I don't think this was deliberate. *Just because Firefox Labs is tied to Nimbus doesn't mean it should be tied to telemetry.*" 

<p>
<figure>
  <picture>
    <source 
      type="image/png" 
      srcset="{{site.url}}/assets/images/firefox/1959804-cropped.png,
              {{site.url}}/assets/images/firefox/1959804-cropped-2x.png 2x">
    <img 
      src="{{site.url}}/assets/images/firefox/1959804-cropped.png" 
      srcset="{{site.url}}/assets/images/firefox/1959804-cropped-2x.png 2x" 
      alt="A screenshot of comment 1 on Mozilla bug 1959804">
  </picture>
  <figcaption>Mike Kaply's <a href="https://bugzilla.mozilla.org/show_bug.cgi?id=1959804#c0">bug report</a></figcaption>
</figure>
</p>

Unfortunately, it wasn't a mistake; the bug report was closed within the hour as [intended](https://bugzilla.mozilla.org/show_bug.cgi?id=1959804#c2) behavior.

Mozilla hasn't responded to my inquiry for clarification, but they have posted [reintroducing Labs](https://blog.mozilla.org/en/firefox/firefox-labs-fx138/), and the [Support Mozilla article](https://support.mozilla.org/en-US/kb/firefox-labs-explore-experimental-features-firefox) for Labs had been updated with this note:

<p>
<figure>
  <picture>
    <source 
      type="image/png" 
      srcset="{{site.url}}/assets/images/firefox/labs-telemetry-sumo.png,
              {{site.url}}/assets/images/firefox/labs-telemetry-sumo-2x.png 2x">
    <img 
      src="{{site.url}}/assets/images/firefox/labs-telemetry-sumo.png" 
      srcset="{{site.url}}/assets/images/firefox/labs-telemetry-sumo-2x.png 2x" 
      alt="Screenshot showing Firefox Labs panel note on SUMO.">
  </picture>
  <figcaption>The note on SUMO</figcaption>
</figure>
</p>

I had been [dreading news like this](https://www.zdnet.com/article/the-firefox-i-loved-is-gone-how-to-protect-your-privacy-on-it-now/) since Mozilla announced its new Terms - **Firefox is now feature-gating new features behind data collection**.

## Developing Firefox

### Nightly, Betas

Since its [inception](https://website-archive.mozilla.org/www.mozilla.org/firefox_releasenotes/en-us/firefox/releases/0.1), Firefox has been released in pre-release builds. Firefox is built automatically and [distributed in multiple variants](https://www.mozilla.org/en-US/firefox/channel/desktop/), including a nightly build with the latest changes. 

This is where the latest code is produced and released to a self-selecting cohort of Firefox devotees, and where ideally, issues are ironed out before they hit a larger population. 

It is easy to find instances of [issues being caught and resolved prior to release](https://www.reddit.com/r/firefox/comments/wwkz98/scrollbar_not_working_with_touch_or_stylus/) by people running pre-release builds, and Mozillians have long encouraged people to run pre-release versions of Firefox to help test for a wider audience. 

No one ever felt that opting into data collection via sending "technical and interaction data" to Mozilla was required, as Mozilla never feature-gated new features behind data collection -- simply downloading Firefox Nightly or Beta was enough to try out the newest features in testing. 

You can see this from the [Firefox Nightly News blog](https://blog.nightly.mozilla.org/), where features like [Vertical Tabs](https://blog.nightly.mozilla.org/2024/08/07/firefox-sidebar-and-vertical-tabs-try-them-out-in-nightly-firefox-labs-131/) were previewed, without any mention of needing to enable data collection in Firefox.

That is changing. 

On May 13, Mozilla [posted about Firefox Labs](https://blog.mozilla.org/en/firefox/firefox-labs-fx138/), saying that:

>“We created Firefox Labs to get features into users’ hands earlier,” said Karen Kim, senior product manager at Mozilla. “It’s a safe space where people can turn things on, play around, and help us learn faster.”
>
>In the past, testing out new ideas usually meant downloading special builds like Nightly or digging into advanced settings. That’s not for everyone. Firefox Labs makes it way easier — just head to your Firefox settings, flip a switch, and try something new.

The post also tells us how to provide feedback on what is being built -- on [Mozilla Connect](https://connect.mozilla.org/t5/firefox-labs/bd-p/Labs).

There is no mention in the post that Mozilla is moving functionality behind data collection -- this appears to be the beginning of the privacy invasion that many predicted with Mozilla's new Terms of Use. 

### Studies

It's not like Firefox doesn't already have a mechanism for studying user behavior in Firefox -- Firefox has [Studies](https://support.mozilla.org/en-US/kb/shield).

I have been a participant in a whole bunch of them.

<p>
<figure>
  <picture>
    <source 
      type="image/png" 
      srcset="{{site.url}}/assets/images/firefox/shield-studies.png,
              {{site.url}}/assets/images/firefox/shield-studies-2x.png 2x">
    <img 
      src="{{site.url}}/assets/images/firefox/shield-studies.png" 
      srcset="{{site.url}}/assets/images/firefox/shield-studies-2x.png 2x" 
      alt="A screenshot of my about:studies page">
  </picture>
  <figcaption>Active and completed Studies in Firefox</figcaption>
</figure>
</p>

Mozilla [introduced studies](https://mgrimes.medium.com/shield-studies-go-faster-bet-smarter-1010ae8d8e) as "controlled A/B tests built right into Firefox" and they "allow us to compare *proposed changes* to the *default experience* in Firefox for small, representative, populations before shipping those changes to everyone."

Firefox Nightly (or Test Pilot, or Labs) users kick the tires on the newest functionality, and once paid staff deems it to be of release quality, Mozilla can run a study against a larger audience of Firefox users to understand whether the feature change appeals to people who aren't interested in testing beta software. 

Studies have always required data collection - and that *also* makes sense - you can't study something very easily without measuring it - but that was okay, because the underlying functionality was available to be enabled even without opting into the study. You could test the software, post about it on Connect, or reddit, or file bugs -- without ever needing to be in a study. 

With the recent Labs changes, the idea that the underlying functionality will be present with data collection disabled is dead. 

## Firefox Terms of Use and Labs

It has been a few months since [Mozilla's disastrous release of its Terms of Use]({% post_url 2025-03-05-the-mozilla-firefox-new-terms-of-use-disaster-what-actually-happened %}), and feature-gating of new features behind data collection seems to be part and parcel of the changes driven by the new Terms. 
 
You may recall that after the outcry over the Terms of Use, Mozilla posted an [update to their announcement](https://blog.mozilla.org/en/products/firefox/firefox-news/firefox-terms-of-use/) to say that:

>**UPDATE:** We’ve seen a little confusion about the language regarding licenses, so we want to clear that up. We need a license to allow us to make some of the basic functionality of Firefox possible. Without it, we couldn’t use information typed into Firefox, for example. It does NOT give us ownership of your data or a right to use it for anything other than what is described in the Privacy Notice.

While I described at the time [why that does not wash]({% post_url 2025-02-26-mozillas-new-terms-of-use-are-out-of-step-with-firefoxs-direct-competition %}#this-is-how-software-works-the-terms-of-use-just-reflects-it), the Labs change may help us understand what they were thinking. 

The phrase **"we couldn’t use information typed into Firefox"** seems to speak directly to features that might be released in Labs, or are experimental and where Mozilla might want to analyze more deeply how users are using them. 

This is different from the AI use cases that many of us had suspected -- instead, Mozilla seems to want to run more experiments across the Firefox userbase, and wants more assurances that any data collected in that process is something that Mozilla has access to. 

Of course, AI use cases are definitely part of the Labs experiments -- [AI link previews](https://blog.mozilla.org/en/mozilla/ai/ai-tech/ai-link-previews-firefox/) were one of the first recent features previewed via Labs.

If Mozilla intends to tightly couple "basic functionality of Firefox" to Labs experiments, it makes total sense that Mozilla needs to have pervasive access to user data - virtually any feature can be something Mozilla can experiment with, and any feature can access data you have entered into Firefox. 

It seems that part of Mozilla's vision for how to build Firefox in the future is to build it as spyware. 

## Developing Firefox as Spyware

In the introduction to Shield Studies (the original name for the feature), Matt Grimes points out a key insight into early adopter audiences - "Test Pilot is a heavily biased audience. It is predominantly early adopters and highly technical users. Just because a feature appeals to Test Pilot users doesn’t mean it will generalize to the broader Firefox population."

That makes a lot of sense, and explains why studies exist.

With the new Firefox Labs, Mozilla changes the way the feature funnel works -- instead of more technical early adopters testing new functionality, less technical early adopters will opt-in to new features. Unlike in the past, Mozilla is safe in the knowledge that users are forced [into data collection]({% post_url 2025-05-13-the-forced-firefox-terms-of-use-tos-clickwrap-agreement-is-here %}), so all experiences with the new features are observed - this is less likely with a more technical audience.

Why do this?

The problem being solved here seems to be that the people who give feedback on new Firefox features are too technical - perhaps they are too disinterested in spyware. 

If Mozilla wants to build features with an audience more tolerant of data collection, it is useful to simply cut out all the people who might object to data collection -- and that is what Mozilla is doing. 

If [the purpose of a system is what it does](https://en.wikipedia.org/wiki/The_purpose_of_a_system_is_what_it_does), the purpose of Mozilla's new Terms of Use and the changes to Firefox Labs is to develop Firefox as spyware. 

If the goal was simply to make Labs features accessible to a wider audience, Mozilla could simply ensure that Labs was accessible in release builds (not just in Nightly or Beta). This is already the case -- Mozilla didn't have to make any change!

Perhaps Mozilla is simply tired of people providing negative feedback on Mozilla Connect -- making features inaccessible to a portion of your erstwhile enthusiastic but technical audience is a pretty good way to silence their objections.

Features and products developed in this way will trend towards abuse - all the features are developed using the audiences, behaviors and feedback of people who are already willing to be experimented upon. 

As more product functionality is gated and developed using this framework, the voice of people less interested in spyware will be necessarily diminished -- the software is simply not being designed for those people, and they are not part of the design loop.

### Only the Metrics Care

Les Orchard recently [wrote about our obsession with metrics](https://blog.lmorchard.com/2025/05/27/only-metrics-care/):

>The user isn’t the customer. And they’re not the product either. The real product is behavioral optimization—metrics on a dashboard. The paying customer is somewhere else entirely, and the "content" is just a means to nudge behavior and juice KPIs.
>...
>The point isn’t to communicate. It’s to simulate relevance in order to optimize growth. It's all goal-tracking, A/B tests, fake doors, and dark patterns.
>
>It’s not publishing. It’s performance art for algorithms. Interpretive dance for the bots. It's sympathetic magic—building the runways and replicas, hoping the traffic increases.
>
>And that’s what makes me so sad. It reveals such a grim meathook future ahead, a solipsistic view of humanity: most people reduced to NPCs in someone else's growth funnel. Not peers. Not audiences. Just marks—behavioral units to be nudged for another uptick.

It used to be that we would encourage people to test pre-release versions of Firefox - to catch issues early, to provide feedback -- to help Mozilla make it the *best browser it can be*.

Seemingly, Mozilla now wants Mozillians to only have a voice if comes with your data. 

That means that the "canary in the coalmine" effect that enthusiast communities have provided to the wider population is diminished; enthusiasts will have to test the software like paid QA engineers, testing the software as a persona that isn't their own. Will that happen? I can think of some volunteers that will continue to  burn themselves out on helping the community - I just don't know whether their heart will be in it, when they are clearly picking up the slack for poor leadership decisions.

Even when enthusiasts catch issues in pre-release, decision making tends towards obfuscation; when Mozillians learned of Firefox Labs feature gating on telemetry and asked for the change to be noted in the [release notes](https://bugzilla.mozilla.org/show_bug.cgi?id=1959804#c3), Mozilla [buried the note](https://support.mozilla.org/en-US/kb/firefox-enterprise-138-release-notes) alongside unrelated features. 

To be clear: hiding features from people who specifically disable telemetry will necessarily tend design decisions toward spyware technology.

## Mozilla Moves Away from Open Source

One of the invasive thoughts I have had since the Terms of Use fiasco was the feeling that the terms represent a move away from open source. 

Up until the announcement of Mozilla's Terms of Use, basic functionality of Firefox was covered under the terms of the open source license that Firefox is distributed under. 

In the announcement of the terms, however - Mozilla said:

>Although we’ve historically relied on our open source license for Firefox and public commitments to you, we are building in a much different technology landscape today.
...
>We remain dedicated to making Firefox open source, but we believe that doing so along with an official Terms of Use will give you more transparency over your rights and permissions as you use Firefox.

Make no mistake - the terms are not meant to clarify or make transparent the open source license that Firefox is distributed under - the terms are *additional restrictions* placed on *top* of the license.

### Grsecurity and Open Source

Observers of the open source landscape may remember Bruce Perens' post about the [Grsecurity Linux kernel patches](https://perens.com/2017/06/28/warning-grsecurity-potential-contributory-infringement-risk-for-customers/) and how they might violate the GPL. Grsecurity [sued Bruce Perens](https://www.theregister.com/2017/08/03/linux_kernel_grsecurity_sues_bruce_perens_for_defamation/) for the post:

>Grsecurity offers Linux kernel security patches on a paid-for subscription basis. The software hardens kernel defenses through checks for common errors like memory overflows. Perens, meanwhile, is known for using the Debian Free Software Guidelines to draft the [Open Source Definition](https://opensource.org/docs/osd), with the help of others.
>
>Grsecurity used to allow others to redistribute its patches, but the biz ended that practice for stable releases two years ago and for test patches in April this year. It offers its GPLv2 licensed software through a subscription agreement. The agreement says that customers who redistribute the code – a right under the GPLv2 license – will no longer be customers and will lose the right to distribute subsequent versions of the software.
>
>According to Perens, "GPL version 2 section 6 explicitly prohibits the addition of terms such as this redistribution prohibition."

That was a strange episode in open source history, and the underlying concerns [weren't actually decided upon](https://www.theregister.com/2020/03/27/grsecurity_bruce_perens_gpl_settlement/) - but it helps to illustrate the weirdness happening with the code that Mozilla is releasing as open source. 

---

Like Grsecurity, Mozilla is placing *additional terms* to software that already has a license. With Firefox 138, these terms enforce new restrictions on the usage of some "open source" features.

Amusingly, if we think of the data collection checkbox as a digital lock (I think we have [pretty](https://bugzilla.mozilla.org/show_bug.cgi?id=1937169) [good](https://bugzilla.mozilla.org/show_bug.cgi?id=1950661) reasons to believe Mozilla thinks of it that way), trying to enable Labs features in Firefox without enabling data collection is [illegal under US law](https://en.wikipedia.org/wiki/Digital_Millennium_Copyright_Act). Lovely. 

I [recently wrote]({% post_url 2025-05-07-firefox-forever %}) that Firefox was "still open source, and it wasn’t surreptitiously exfiltrating data to Mozilla" - but even if that is true today, that doesn't seem to be the direction Firefox is going in. 

Is Firefox really open source if we have to submit to data collection to access features distributed under an open source license? 

Yes, ordinary end users can create a patch set to enable these features without needing to submit data to Mozilla - but that would clearly no longer be *Firefox*.

I'm realistic enough to believe that Mozilla can defend this practice legally, even if it seems to be against the *spirit* of open source (and the open source license Firefox is released under). 

I don't think most open source users expect that the open source software they use will require data collection to use it. I think that generally, users of open source software use it to *escape* that kind of abuse from proprietary vendors. 

**Note:** Since posting, this section has gotten a lot of feedback; I agree with readers that Firefox remains open source. The purpose in discussing licenses was in reference to Mozilla's own language (e.g. "although we’ve historically relied on our open source license for Firefox and public commitments to you, we are building in a much different technology landscape today") and the weirdness inherent to the fact that while the software is open source, it is locked behind data collection.
{: #note}

I think it is obvious that Mozilla's Terms of Use is now imposing new restrictions on Firefox users (not developers!) that did not exist prior to their introduction. I interpreted that as a move away from open source, while many of my loving readers see only a binary - Firefox *is* open source.

Before Firefox 138, every piece of open source code was open to be tested and used by anyone using Firefox. After 138, Mozilla requires data collection to use some of that open source software in compiled form. Mozilla enforces that restriction via their Terms of Use.

If you don't agree to the terms, you have to be a developer to use this software - you have to compile the open source code yourself. In doing so, you haven't compiled Firefox - only Mozilla can do that - you have compiled a fork. It was in that sense that I wrote that your fork would no longer be Firefox - and that the code - *in Firefox* was inaccessible without submitting to additional terms.

I think Firefox is still open source. That doesn't change that I see the imposition of the Terms and the feature-gating behind data collection as moves away from the spirit of open source - especially in the product that Mozilla releases for download.

## The Future is Spyware

Mozilla doesn't need to do this, and it definitely shouldn't. 

Many people who want to help build Firefox will willingly opt into telemetry, so Mozilla has access to all the data that they need. Beyond that, telemetry data collection is already the default, so Mozilla has virtually its entire audience available to experiment on. 

The only thing that Firefox Labs feature gating new functionality behind data collection does is to help to silence feedback from early adopters who aren't opted into telemetry. 

It isn't as if Mozilla doesn't have Mozilla Connect. Mozilla has a way to have peer to peer conversations with their userbase, without needing to spy on them. 

Even more amusingly, Mozilla can continue to spy on their userbase, and people who prefer not to be spied on can communicate via Mozilla Connect. 

Most importantly, giving people access to features that aren't part of your experimental group is probably irrelevant anyway -- does it matter if people were using some feature and you don't know about it? They could have been using Vivaldi instead!

The alternative is that "grim meathook" future where Mozillians become those NPCs in Mozilla's growth funnel. I don't think that opting out is enough.

## Feedback

I got a lot of feedback about Firefox being open source. I posted some [additional thoughts](#note)  -- I want to be clear that while I believe the addition of Terms and feature-gating of features behind telemetry are moves away from the spirit of open source, I agree with everyone who has pointed out that Firefox remains open source.

### Features Aren't Actually Gated

Soon after I posted, a friend asked me which features - if any - were blocked by this new gate. 

I had assumed that Mozilla's public postings on Support Mozillla were accurate - that people needed to enable data collection for Labs features to function.

I went ahead and played around with enabling "[Passwords in the sidebar](https://connect.mozilla.org/t5/firefox-labs/try-managing-your-passwords-right-from-the-sidebar/td-p/87890)" in Labs to try to figure out which <kbd>about:config</kbd> key might allow access to the feature. 

I quickly found that setting `browser.contextual-password-manager.enabled` to **true** enabled the functionality without needing to enable data collection.

That is good news!

While I continue to believe that features ought not to be gated by telemetry, if there *is* an escape hatch, that is good news for people who are interested in testing the latest functionality without submitting to data collection.

Mozilla hasn't given us a lot of clarity about how this is supposed to work; on the surface, this looks like an oversight, since users have access to features without enabling data collection, contrary to Mozilla's statements.

If this continues to work in future releases for future Labs features, the Labs change ends up looking more like a minor roadblock -- one that will still limit usage, but likely not enough to dissuade interested enthusiasts.

I don't know what this looks like in the future, but we may find Firefox users posting about the <kbd>about:config</kbd> keys and values that enable Labs features - no forking required. That is great. 👍

---

{% include donate-social.html %} You can [message me](https://mastodon.social/@yoasif) or follow [this blog](https://mastodon.social/@quippdblog) on Mastodon.
