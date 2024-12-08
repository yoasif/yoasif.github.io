---
layout: post
title:  "Should Mozilla Introduce a De-AMP Feature? (2018)"
date:   2022-04-19 16:37:00 -0400
categories: writing
tags: amp Firefox
---

In September of 2018, I applied to a mobile product role at Mozilla. Part of the interview process included writing a take-home assignment with a writing prompt about AMP. 

Given the news today about the Brave browser introducing a new [De-AMP](https://brave.com/privacy-updates/18-de-amp/) feature, I recalled that I had written a piece about this very topic in March of 2018.

While I often enjoy take-home assignments during an interview process, it can sometimes feel like time wasted if you don't land the job (I didn't). Here's hoping that you find my writing from a few years back to be interesting. I cleaned up the formatting a bit, like adding inline links (the site I was submitting to just had a big textarea to write into, no rich text here!), but the content is basically unchanged. Upon re-reading this essay today, there are definitely things I could have improved and done better. In the interest of openness however, I'm throwing caution to the wind. Hope you enjoy!

Note: One of the things I saw in comments about the new Brave feature was that "this is something Mozilla should have done". While I think the feature is cool, I think that it is less about changing the web and more of projecting Brave as a leader in privacy. I think Mozilla's motivations are often different than what its community sometimes believes (which in itself is a challenge), which leads to those kinds of comments. I definitely think that it is interesting that Mozilla was very clearly thinking about AMP and its impact on the web a while ago, even if it hasn't done much *specifically on AMP* since then - and that may not be a mistake!

* * *

# What Should Mozilla do About AMP?

Given that AMP (at least as it stands today), serves to balkanize the web and serves as a threat to Mozilla Manifesto [Principle #6](https://www.mozilla.org/en-US/about/manifesto/#principles-06) (decentralized participation worldwide), Mozilla should minimally have an opinion on AMP and likely ought to intervene in some way to this threat to the web. The development process around AMP is also very opinionated and owned largely by Google, lacking much of the participation and community involvement also desired by Mozilla Manifesto [Principle #8](https://www.mozilla.org/en-US/about/manifesto/#principles-08) (community based processes that promote participation and trust). 

>The effectiveness of the internet as a public resource depends upon interoperability (protocols, data formats, content), innovation and decentralized participation worldwide. -- [Mozilla Manifesto](https://www.mozilla.org/en-US/about/manifesto/#principles-06)

Ultimately, there is a large lack of trust from the community (not just publishers of content who feel forced into complying with AMP to maintain search engine result position in Google search), but also from end users, especially on iOS where AMP pages served on Google search result pages happen to have [non standard scroll behavior (lacking fluidity)](https://news.ycombinator.com/item?id=14386292), or the behavior on said pages where URLs point to google.com instead of the content creator’s page. 

## How would you start?

I would start with a lot of research, and also discussions with engineering teams. I tried to do some to write this document, but much more should be done before decisions can be made.

## What options/technologies would you consider to intervene or support AMP inside Firefox?

The problem we’re ultimately trying to solve, both Google and other browser vendors, is to allow web pages to load quickly and with less annoyance. How can we get to a better place for users? How can we incentivize publishers to write to the web instead of AMP?

### Options & Technologies

#### Preloading/prerendering web pages in Firefox

This option has the benefit of reducing the end user difference between “preloaded” content via AMP iframes and standard (non AMP) pages. Other benefits include the fact that page URLs point to the original content page instead of a caching server’s URL.

There are some not very good downsides, however - preloading or prerendering content causes extra bandwidth usage, which can impact users negatively via data caps or overage fees. It may also increase battery usage via increased CPU and network usage, causing users to note that Firefox “kills my battery”. 

#### In-page popup blocking

This particular idea seems to already be experimented with inside of Mozilla, with the “[in-page popup reporter](https://github.com/ehsan/popup-reporter)”. This is interesting because it tries to get at some of the fundamental reasons why Google has pushed AMP - reduction of page annoyances. This idea feels more positive than negative, because most of these popups can be safely dismissed without breaking the page content; there is generally content “underneath” the popup that is hidden until users dismiss them.

#### Introduce features to adhere to “[better ads](https://www.betterads.org)”

This can be done as an opt-out (if required for risk mitigation for the business); the horse seems to have left the barn here, and Mozilla risks compromising on user experience vs. Chrome if this is not addressed.

#### Disable autoplay for video generally in order to reduce bandwidth usage and decrease page load times

This ought to be whitelisted for sites that are primarily video consumption vehicles, but not in third party domains.

#### Reduce the priority of third party scripts

Especially those on the Disconnect lists when loading web pages. The community has already identified third party scripts that aren’t “required” for users to get at the content they are after - we can help users prioritize content by deferring loading of erroneous scripts after the main page content has loaded and rendered.

#### Make tracking protection available on a page by page basis

Like in Firefox Focus or Firefox Desktop.

#### Introduce a (disabled by default) ad blocker

#### Optimize page render and download of resources based on where the user is at in a page

AMP attempts to speed up page loads by making web pages simpler -- Mozilla can respond by deferring rendering and downloading of page resources like images until we can determine that a user is about to scroll, or after the initial page has loaded. This would be good not only for AMP pages, but for all web pages - my feeling is that Google is focusing their efforts around AMP, and is less likely to build these tricks into the browser.

Interestingly enough, one of the most promising ways to intervene with the current implementation of AMP is to join and push the [Web Packaging](https://github.com/WICG/webpackage) project and work to standardize it, so as not to be owned by a single vendor. 

Support for community based approaches like webpackage should be contingent on a clear path along a standards track, coupled with a lack of native browser support from Mozilla for non-standard approaches. Native web standards support in Firefox should be the carrot to the non-standard, Blink only, AMP stick. 

## Roughly how much time do you need, and what would you do during that time?

Much of this will depend on discussions with engineering and management. Optimistically, given buy-in from both, we could hopefully get a plan together in two weeks or so, and begin to experiment with possibilities in browser as soon as possible after that. For some of the above (e.g. deprioritizing Disconnect third party trackers), a feature might be something we’d want to validate to ensure that we aren’t causing negative results, so an experiment (funnelcake?) may be helpful to validate that. 

For consensus and community building approaches (like those required by webpackage) it is likely helpful to meet with stakeholders or at least tech evangelism/outreach that there is sufficient buy-in such that publishers can get the promised benefits over AMP, along with our userbase (since the publishers updated their pages and we were able to deliver the better feature). 

It would also be helpful to elicit community comments or to engage with the community to see whether those approaches might find acceptance. 

If a feature has been developed, I would also be testing as much as I am able to - a plan is only as good as its end result. 

## How do you balance user benefit with business needs?

To the best of my ability. For example, while I expressed interest in deprioritizing third party scripts on the Disconnect list, I don’t propose blocking them by default. While this may be a great user benefit, it may conflict with business needs. 

Frankly, I’d need to understand more about the business needs at Mozilla before I could speak more cogently about the trade-offs required. 

For some perspective on the example above, however - ensuring that the scripts are deprioritized rather than blocked allows us to leave the door open for user communication with publishers when requesting Firefox specific features and support (as many see the mobile web as Webkit/Blink only) - since Mozilla can’t free-ride on Apple and Google’s contributions to those web engines, Mozilla needs to maintain some level of good faith with the publishing community to ensure that it can make positive change to the web.

## What data would you want/need to see to make a decision?

Specific examples based on suggestions above:

* in-page popup blocking: how many pages break if implemented in real world usage / whether users continue to read content instead of moving away (hitting back) when encountering these pages
* reducing the priority of third party scripts - is time to first paint or interaction with page faster? Do users in aggregate browse more pages on that site when the perceived performance is faster?
* optimize page render and download of resources - is there decreased network use? CPU? Does this improve perceived page performance or time to first paint?


---

{% include donate.html %} You can also message me on [Mastodon](https://mastodon.social/@yoasif).