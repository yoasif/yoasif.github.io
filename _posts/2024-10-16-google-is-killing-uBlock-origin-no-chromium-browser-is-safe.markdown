---
layout: post
title:  "Google is Killing uBlock Origin. No Chromium Browser is Safe."
date:   2024-10-16 06:38:00 -0400
categories: writing
tags: Firefox Chromium browsers

---

We’ve been anticipating it for years,[^1] and it’s finally happening. Google is [finally killing uBlock Origin](https://www.pcworld.com/article/2490090/google-warns-chrome-users-that-ad-blockers-like-ublock-origin-will-soon-be-removed.html) – with a note on their web store stating that the extension will soon no longer be available because it “doesn’t follow the best practices for Chrome extensions”.[^2]

Now that it is finally happening, many seem to be oddly resigned to the idea that Google is taking away the best and most powerful ad content blocker available on any web browser today, with one article [recommending people set up a DNS based content blocker on their network](https://www.windowscentral.com/software-apps/use-your-own-network-wide-ad-blocker-not-browser-extensions) 😒 – instead of more obvious solutions. 

I may not have blogged about this but I recently read an article from 1999 about [why Gopher lost out to the Web](https://ils.unc.edu/callee/gopherpaper.htm), where Christopher Lee discusses the importance of the then-novel term “[mind share](https://en.wikipedia.org/wiki/Mind_share)” and how it played an important part in dictating why the web won out. In my [last post]({% post_url 2024-10-13-protecting-your-privacy-while-eroding-your-democracy-PPAs-considered-harmful %}),  I touched on the importance of good information to democracies – the same applies to markets (including the browser market) – and it seems to me that we aren’t getting good information about this topic. 

This post is me trying to give you that information, to help increase the mind share of an *actual* alternative. Enjoy!

---

<link rel="stylesheet" href="{{site.url}}/assets/images/chromium-ublock/stylesheet.css" type="text/css" charset="utf-8" />

<style>

.download-button {
    position: relative; 
    display: flex;
    align-items: center; 
    background: linear-gradient(189deg, #eeffcc 0%, #aff32a 100%);
    padding: 20px 40px; 
    border-radius: 10px; /* Rounded corners */
    border: 2px solid #d2e6a0; /* Slightly darker border color */
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3)
    transition: border 0.3s ease; 
}

.logo {
    position: absolute;
    left: -40px; 
    top: 50%; 
    transform: translateY(-50%); 
    width: 128px;
}

.text {
    display: flex;
    flex-direction: column;
    margin-left: 80px;
    text-decoration: none;

}

#wrapper a {text-decoration:none;}


.text p {
    margin: 2px 0 0; 
    color: #09700b;
    font-size: 1em;
    font-family: serif;
	width: 124px;
}
.download-button:hover {
    border: 2px solid #7bbd3f; 
}


.text h1 {
    margin: 0;
    font-size: 2em;
    color: #cf1f00;
        font-family: 'fira_sansbold', sans-serif;
        font-weight: 600;
}



#wrapper {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 45vh;
    margin: 0 -16px;
    background: #fff url("{{site.url}}/assets/images/chromium-ublock/background-tile.jpeg") 50% 0 repeat-x;
}
</style>

## TL;DR

Too long to read? I get it. Here’s the summary. <strong>[Download Firefox](#wrapper)</strong>. If you like beta software (you know who you are), download the [beta version](https://www.mozilla.org/firefox/channel/desktop/#beta). If you like living on the bleeding edge, download the [nightly version](https://www.mozilla.org/firefox/channel/desktop/#nightly). If you want my recommendations on how to get started, <strong>[check out my post]({% post_url 2022-10-01-firefox-switch-a-guide-for-beginners %})</strong> on that.

Have a great rest of your day and thanks for visiting! You can [follow me on Mastodon](https://mastodon.social/@yoasif) if you want.

---

{:toc}
* toc

## Background

Let’s catch you up quickly. Back in 2018, Google announced that they were going to introduce a new extensions manifest version: [MV3](https://blog.chromium.org/2018/10/trustworthy-chrome-extensions-by-default.html) (the existing version being *MV2*). Later on in 2019, Google announced that they wanted to [weaken ad blockers](https://security.googleblog.com/2019/06/improving-security-and-privacy-for.html) to make them safer for users, as a part of the move to MV3. Commentators pointed out that the [security arguments weren’t true](https://www.eff.org/deeplinks/2019/07/googles-plans-chrome-extensions-wont-really-help-security), and users and developers of uBlock Origin (the best content blocker even then) began [discussing the implications](https://github.com/uBlockOrigin/uBlock-issues/issues/338#issuecomment-452843669) of Google’s proposal.

Raymond Hill, the primary developer of uBlock Origin quickly began to engage [^3] with Google on the proposed design, pointing out how it weakens the *very* popular extension. In 2021, Google announced their deprecation timeline for MV2,[^4], with powerful content blockers scheduled to be deprecated in Chrome by June of 2023. A year later, Google announced [updated timelines](https://developer.chrome.com/blog/more-mv2-transition/) for deprecation, to January of 2024. 

Raymond began a [two week marathon coding session](https://github.com/uBlockOrigin/uBlock-issues/issues/338#issuecomment-1253893421) to build an extension that would work within Google’s less-effective extension model: [uBO Lite](https://github.com/uBlockOrigin/uBOL-home). As expected, this version has many [missing features and limitations](https://github.com/uBlockOrigin/uBlock-issues/issues/338#issuecomment-1507539114) compared to uBlock Origin.

Late last year, Google had announced that they were [resuming the transition to Manifest V3](https://developer.chrome.com/blog/resuming-the-transition-to-mv3), with a new end date for MV2 support for enterprises of June 2025. The Chrome Web Store was slated to disallow installation of MV2 extensions as early as June 2024.

This week, we saw that Google is making good on their promises, adding warnings to the Chrome Web Store for listings of MV2 extensions, including uBlock Origin. This is the beginning of the end for powerful extension-based content blockers in Chromium browsers. 

## Chromium Browsers Are Affected

If you use uBlock Origin but aren’t using Chrome or Firefox, you might think you have nothing to worry about. Unfortunately, you'd be wrong.

A Google product manager announced the phase-out of Manifest V2 [on the Chromium blog](https://blog.chromium.org/2024/05/manifest-v2-phase-out-begins.html) on May of 2024. The MV2 deprecation will affect *all* Chromium browsers.

Once deprecated, this code will be removed from the Chromium codebase; Google is not a fan of leaving dead code around in their projects – more importantly, they consider this set of features to be a [security risk](https://security.googleblog.com/2019/06/improving-security-and-privacy-for.html).

This means that if you use browsers like Microsoft Edge or Opera, the extension will stop working on your browser.

Other Chromium browser vendors have [claimed that they will continue to support MV2 based content blockers](https://x.com/brave/status/1725622768262128006), later revealing that they were unwilling to support the code [once Google removed it](https://x.com/BrendanEich/status/1534893414579249152). 

So for Chromium browsers, it is the end of the line for uBlock Origin. 

But wait! Some of those Chromium browsers say “it’s okay, we built an ad blocker into our browser!” 

### Built-in Ad Blockers

Some browser vendors (and their adherents) try to sidestep the question of whether uBlock Origin will continue to be available on their browser by saying that the browser has an ad blocker compatible with uBlock filter lists – so people can use that browser and its built in blocker with no loss of functionality.[^5]

Nice idea in theory, but these built in blockers pale in comparison to the real thing.

[Vivaldi users](https://www.reddit.com/r/vivaldibrowser/comments/1fc2kqo/built_in_adblock_with_the_new_update/) point out that the built in blocker is noticably worse, with some guessing that Vivaldi doesn’t fully support uBlock Origin filterlists (Vivaldi is closed source, so it’s harder for users to investigate).

Brave has a number of feature gaps compared to uBlock Origin [^6], resulting in worse effectiveness as well.

If none of the built in blockers fully support uBlock Origin syntax and filterlists, what can you do? 

If you read the TL;DR above, you already know – but don’t take it from me, take it from the developer of uBlock Origin: [uBlock Origin works best on Firefox](https://github.com/gorhill/uBlock/wiki/uBlock-Origin-works-best-on-Firefox). 

## Firefox

Yep, Firefox. Not a Pi-Hole. Just a browser with a [cuddly mascot](https://en.wikipedia.org/wiki/Red_panda) that you might remember from a decade ago. 

<p>
	<figure>
	<picture>
	  <a href="https://blog.mozilla.org/en/internet-culture/firefox-irl-zoo-atlanta">
	  <img src="{{site.url}}/assets/images/chromium-ublock/zoo-atlanta-rose-1024x682.jpg" alt="A red panda in a bamboo tree"/>
  </a>
	  <figcaption>Zoo Atlanta’s Rose enjoying a bamboo for snack. (Photo credit: Zoo Atlanta)</figcaption>
	</picture>
</figure>
</p>

Firefox is still around and (actually) better than ever. It’s got zero-knowledge encrypted sync (for your privacy), the ability to [pop out web video from web pages onto your desktop](https://support.mozilla.org/en-US/kb/about-picture-picture-firefox), and it’ll even [import your existing bookmarks](https://support.mozilla.org/en-US/kb/switching-chrome-firefox). Oh, and they’re [going to keep supporting MV2 extensions](https://blog.mozilla.org/addons/2024/03/13/manifest-v3-manifest-v2-march-2024-update/), including uBlock Origin. Yay! 🎉

<div id="wrapper">
<a href="https://www.getfirefox.com">
    <div class="download-button">
		<img src="{{site.url}}/assets/images/chromium-ublock/firefox-logo.png" srcset="{{site.url}}/assets/images/chromium-ublock/firefox-256.png 2x" alt="Firefox Logo" class="logo"/>
        <div class="text">
            <h1>Firefox</h1>
            <p>Free Download</p>
        </div>
    </div>
    </a>
    </div>


📝 Read about my recommendations on <strong>[how to get started with Firefox]({% post_url 2022-10-01-firefox-switch-a-guide-for-beginners %})</strong>.

## Addendum

This section is a grab bag for responses and thoughts that aren't interesting enough for the main post. If you think I'm wrong about something or feel that I didn't cover something effectively, @ me ([no seriously, message me on Mastodon](https://mastodon.social/@yoasif)). I'll make sure to update my post with any new objections or comments.

### MV3 is more secure

I don't take this argument too seriously. Others have delved into the security implications of the standard -- I'm not covering that. To me this is a question of trust, not security. I *trust* the uBlock Origin team (along with the add-on marketplaces run by Google, Mozilla, Microsoft) to send me an extension that does what it says it is going to do. 

Even if MV2 extensions were horribly insecure (if they are, why did Google host them for so long?), that is more of a concern if I am somehow tricked into installing a malware extension -- not an argument against cripping known-good software like uBlock Origin. 

This doesn't feel like a serious argument - were you previously using uBlock Origin? Boo! 👻 You were running insecure code! If you trusted it yesterday, you trust it tomorrow, Google's arguments notwithstanding.

### MV3 blockers have better performance

You hear this one sometimes - "MV3 moves parsing of filter rules to the browser engine, making it superfast" or "the built-in blocker is faster than an extension can be, so what if it supports fewer filter rules?"

Unfortunately, this is a [false economy](https://en.wikipedia.org/wiki/False_economy). 

Recent [tests](https://x.com/gorhill/status/1792648742752981086) have shown that uBlock Origin is just as fast as a fork of its cut-down version (uBO Lite), while being blocking more.

If your blocker takes up a tiny bit more processing power to block an ad that uses a ton more processing power, caring about the processing used by the ad blocker is engaging in a false economy. 

There is no way that having a better ad blocker isn't better. Performance isn't a real argument, because the first tracker or ad that slips through your less-effective blocker obviates the seconds of gains you may have made over hundreds or thousands of page loads.

### You can opt into more effective blocking on uBO Lite

On the [README](https://github.com/uBlockOrigin/uBOL-home/blob/main/README.md) of the uBO Lite repository, developers note that:

>uBOL allows you to explicitly grant extended permissions on specific sites of your choice so that it can better filter on those sites using declarative cosmetic and scriptlet injections.

Some people read that and believe that this unlocks the full power of uBlock Origin -- that all that has happened in the MV2 to MV3 transition is permission gating. You have the same features, just behind a permission dialog.

Unfortunately, that is not the case. 

The [filtering capabilities which can't be ported to MV3](https://github.com/uBlockOrigin/uBOL-home/wiki/Frequently-asked-questions-(FAQ)#filtering-capabilities-which-cant-be-ported-to-mv3) remain the same whether you opt into cosmetic filtering or not.

The way that uBO Lite works by default is by coming with [cosmetic filtering disabled](https://github.com/gorhill/ublock/wiki/Per-site-switches#no-cosmetic-filtering). This is already a feature available in uBlock Origin - just not one most people are interested in, since it removes fewer ad trackers than having it enabled. 

As an aside, this option in uBlock Origin negates the performance argument vs. uBO Lite: you can have the same performance profile as the cut-down version, but opting into the more complete mode is more effective in uBlock Origin.

The bit about "scriptlet injections" may intrigue you. Unfortunately, this too is a mirage. If this was a simple way to convert the missing features in MV3 to scriptlets, the uBO Lite developers would have already built them in. Imagining that this is a way to get access to the full effectiveness of uBlock Origin is pure theory - ask whoever suggests this *how* to make it work, *today*, not in some far away future that may never come. 


[^1]: Daly Barnett. "[Chrome Users Beware: Manifest V3 is Deceitful and Threatening.](https://www.eff.org/deeplinks/2021/12/chrome-users-beware-manifest-v3-deceitful-and-threatening)" EFF, December 9, 2021.
[^2]: Lawrence Abrams. "[Google warns uBlock Origin and other extensions may be disabled soon.](https://www.bleepingcomputer.com/news/google/google-warns-ublock-origin-and-other-extensions-may-be-disabled-soon/)" Bleeping Computer, October 13, 2024.
[^3]: [Extensions: Implement Manifest V3](https://issues.chromium.org/issues/40598795#comment24)
[^4]: "[Manifest V2 support timeline.](https://web.archive.org/web/20211001143632/https://developer.chrome.com/docs/extensions/mv3/mv2-sunset/)" Chrome Developers Documentation, September 23, 2021.
[^5]: Team Vivaldi. "[Manifest v3 update: Vivaldi is future-proofed with its built-in functionality.](https://vivaldi.com/blog/manifest-v3-update-vivaldi-is-future-proofed-with-its-built-in-functionality/)" Vivaldi, June 17, 2024.
[^6]: [GitHub issues on Brave's adblock-rust repository labeled "uBO-parity"](https://github.com/brave/adblock-rust/issues?q=is%3Aissue%20state%3Aopen%20sort%3Acomments-desc%20label%3AuBO-parity). A list: [1](https://github.com/brave/adblock-rust/issues/1), [4](https://github.com/brave/adblock-rust/issues/4), [145](https://github.com/brave/adblock-rust/issues/145), [165](https://github.com/brave/adblock-rust/issues/165), [194](https://github.com/brave/adblock-rust/issues/194), [236](https://github.com/brave/adblock-rust/issues/236), [245](https://github.com/brave/adblock-rust/issues/245), [246](https://github.com/brave/adblock-rust/issues/246), [247](https://github.com/brave/adblock-rust/issues/247), [278](https://github.com/brave/adblock-rust/issues/278), [293](https://github.com/brave/adblock-rust/issues/293), [314](https://github.com/brave/adblock-rust/issues/314), [322](https://github.com/brave/adblock-rust/issues/322), [324](https://github.com/brave/adblock-rust/issues/324), [326](https://github.com/brave/adblock-rust/issues/326), [327](https://github.com/brave/adblock-rust/issues/327), [364](https://github.com/brave/adblock-rust/issues/364), [365](https://github.com/brave/adblock-rust/issues/365), [391](https://github.com/brave/adblock-rust/issues/391)


---

{% include donate.html %} You can also message me on [Mastodon](https://mastodon.social/@yoasif).

---