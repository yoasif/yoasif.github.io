---
layout: post
title:  "The Mozilla Firefox New Terms of Use Disaster: What Actually Happened?"
date:   2025-03-05 15:22 -0500
categories: writing
tags: firefox
external-url: 
image: /assets/images/social-previews/firefox.png
redirect_from: 

---

Last week, [Mozilla introduced legal updates to users of Firefox](https://blog.mozilla.org/en/products/firefox/firefox-news/firefox-terms-of-use/), and [things did not go well]({% post_url 2025-02-26-mozillas-new-terms-of-use-are-out-of-step-with-firefoxs-direct-competition %}).

They went so badly that Mozilla had to [back off on the worst abuse](https://www.medianama.com/2025/03/223-mozilla-revises-terms-of-use-clarifies-stance-user-data-sale-backlash/) in their new Terms of Use. This is a retelling of what happened in between the initial announcement and Mozilla's retreat. 

I wrote most of this as part of an upcoming post about my coda on this whole situation -- but I found that my overall point was getting lost in all the background events. This entry is here to help you get caught up -- if you know what's up, feel free to skip this post.

{:toc}
* toc

## Background

Mozilla introduced a "[Terms of Use](https://www.mozilla.org/about/legal/terms/firefox/)" for Firefox for the first time last Wednesday, and included a clause in the document that [granted Mozilla a royalty-free license]({% post_url 2025-02-26-mozillas-new-terms-of-use-are-out-of-step-with-firefoxs-direct-competition %}) to any information transmitted via Firefox. People were unhappy about that, and Mozilla eventually backed off from the over-broad license grant and issued some clarifying updates.

## What Happened

### The First Update

We need to explain how we got here, and why Mozilla's explanations weren't enough for them to be able to move on with just lip service -- they had to make changes.

In their first update to their Terms of Use announcement, Mozilla said:

> **UPDATE:** We’ve seen a little confusion about the language regarding licenses, so we want to clear that up. We need a license to allow us to make some of the basic functionality of Firefox possible. Without it, we couldn’t use information typed into Firefox, for example. It does NOT give us ownership of your data or a right to use it for anything other than what is described in the Privacy Notice.

We predicted this explanation: this is how software works, so we need these rights in order to be on the right side of the law.

I wrote [why that explanation doesn't hold up last week]({% post_url 2025-02-26-mozillas-new-terms-of-use-are-out-of-step-with-firefoxs-direct-competition %}#this-is-how-software-works-the-terms-of-use-just-reflects-it); read that if you want my thoughts. 

Since we now have the benefit of hindsight, we can observe that even after a groundswell of highly specific criticism of their over-broad rights grant, Mozilla didn't take a step back to consider whether the policy was a mistake. 

Instead, they doubled down and provided an explanation that was *untrue* - an obvious fact, given that the current version is far less broad, while giving them what they need.

We'll learn more from what they told the media.

### The Media Response

Soon after the update on their blog post, Mozilla was responding to queries about [whether the terms now indicated that user data was being provided to AI companies or advertisers](https://techcrunch.com/2025/02/28/mozilla-responds-to-backlash-over-new-terms-saying-its-not-using-peoples-data-for-ai/).

>“These changes are not driven by a desire by Mozilla to use people’s data for AI or sell it to advertisers,” Brandon Borrman, Mozilla’s VP of Communications, said in an email to TechCrunch. “As it says in the Terms of Use, we ask for permission from the user to use their data to operate Firefox ‘as you indicate with your use of Firefox.’ This means that our ability to use data is still limited by what we disclose in the Privacy Notice.”

>“It’s part of Mozilla’s focus to build privacy-preserving ads products that improve best practices across the industry,” the spokesperson said. “In cases where we serve ads on Firefox surfaces (such as the New Tab page) we only collect and share data as set out in the Privacy Notice, which states that we only share data with our advertising partners on a de-identified or aggregated basis.”

Interesting. The policy change has nothing to do with using people's data for AI or to sell it to advertisers, but *also* it is part of Mozilla's advertising efforts. That's an interesting hint.

Once again, Mozilla continues to defend their over-broad rights grant.

### Updates to the Privacy Notice

It was around this time that [changes to the Privacy Notice](https://github.com/mozilla/bedrock/commit/d459addab846d8144b61939b7f4310eb80c5470e#commitcomment-153095625) went live on Mozilla's website.

<p>
	<figure>
	<picture>
	  <img src="{{site.url}}/assets/images/firefox-privacy-diff-2x.png" alt="Screenshot of a GitHub with text being removed from the Firefox Privacy Notice: Does Firefox sell your personal data?" id="screenshot" />
	  <figcaption>Mozilla removing a promise to not sell your personal data</figcaption>
	</picture>
</figure>
</p>

In a [widely panned](https://mastodon.social/@jplebreton/114082113246630390) change, Mozilla [excised](https://github.com/mozilla/bedrock/commit/d459addab846d8144b61939b7f4310eb80c5470e#diff-a24e74e4595fa85440a2f4e7e5dcfe68aba6e1e593aef05a2d35581a91423847R65) a question and answer promising to never sell personal data:

> **Does Firefox sell your personal data?**
>
> Nope. Never have, never will. And we protect you from many of the advertisers who do. Firefox products are designed to protect your privacy. That’s a promise.

and replaced it with a much more [weasely](https://en.wikipedia.org/wiki/Weasel_word) statement:

> **It seems like every company on the web is buying and selling my data. You’re probably no different.**
>
> Mozilla doesn’t sell data about you (in the way that most people think about “selling data“), and we don’t buy data about you. Since we strive for transparency, and the LEGAL definition of “sale of data“ is extremely broad in some places, we’ve had to step back from making the definitive statements you know and love. We still put a lot of work into making sure that the data that we share with our partners (which we need to do to make Firefox commercially viable) is stripped of any identifying information, or shared only in the aggregate, or is put through our privacy preserving technologies (like [OHTTP](https://support.mozilla.org/kb/ohttp-explained)).

Hours later, Mozilla posted a [fresh update](https://blog.mozilla.org/en/products/firefox/update-on-terms-of-use/) on the Terms.

### The Policy Change

On Friday, Mozilla posted on their website that they had heard the community, and they had a policy update to share. The company stated that the intention of the update was to "more clearly reflect the *limited* scope of how Mozilla interacts with user data".

Here’s what the new language says:

>You give Mozilla the rights necessary to operate Firefox. This includes processing your data as we describe in the Firefox Privacy Notice. It also includes a nonexclusive, royalty-free, worldwide license for the purpose of doing as you request with the content you input in Firefox. This does not give Mozilla any ownership in that content.

Not great that this isn't what the initial Terms of Use said, and that Mozilla's instinct had been to double down on their over-broad rights grant, but good that they actually fixed the intellectual property issue.

The update does more than simply back off from the over-broad <abbr title="Terms of Use">ToU</abbr> and goes further than before in explaining the rationale behind the new <abbr title="Terms of Use">ToU</abbr> and privacy updates.

Mozilla says:

>**TL;DR** Mozilla doesn’t sell data about you (in the way that most people think about “selling data”), and we don’t buy data about you. We changed our language because some jurisdictions define “sell” more broadly than most people would usually understand that word.

By updating the terms to disclaim ownership of user data, Mozilla helps clarify here that the new <abbr title="Terms of Use">ToU</abbr>, the privacy updates - they have less to do with users' intellectual property, and more about how Mozilla can use the data you input in Firefox to power its online advertising ambitions.

Their statement goes on to tell us how California's CCPA defines [sale](https://leginfo.legislature.ca.gov/faces/codes_displaySection.xhtml?lawCode=CIV&sectionNum=1798.140.#:~:text=%E2%80%9Csale), without explaining why Mozilla's data practices do not qualify as a sale. Still, their latest statement confirms prior statements to the media that this was about ads, not AI.

**Update:** Since publication, I was [alerted to the fact that Mozilla's blog post contains an error]({% post_url 2025-03-05-the-mozilla-firefox-new-terms-of-use-disaster-what-actually-happened %}) when referencing the CCPA -- it seems that Mozilla is quoting from a draft that contains a [drafting error](https://iapp.org/news/a/ccpa-cpras-hidden-third-party-business-classification/#:~:text=Yes%2C%20the%20definition%20of%20'sale'%20has%20a%20drafting%20error).

While it is great that Mozilla has backed away from the worst abuse of the previous iteration of the Terms of Use, we are still granting Mozilla the rights to process any data we input into Firefox for virtually any purpose -- just without an IP grant. That is better than before, but is definitely worse than the relationship that users had with Firefox previously -- before Mozilla's imposition of its new Terms of Use.

Mozilla doesn't explain specifically why they needed to make this change *now*, given that ads and search sponsorships have been a part of Firefox for a *very* long time.

[Other commentators](https://www.youtube.com/watch?v=-8bTquKjzos) believe that the ToU updates have more to do with clarifying that Mozilla has been selling data all along -- at least when it comes to ads on the New Tab page. If that is the case, the latest developments are troubling; Mozilla has been [aware of CCPA for years](https://blog.mozilla.org/en/mozilla/internet-policy/new-year-new-rights/) - the idea that "sale of data" could be squishy is not something that is a surprise.

[Don Marti](https://federate.social/@dmarti/114088323172276255) points out that noyb filed a [complaint against Mozilla](https://noyb.eu/en/firefox-tracks-you-privacy-preserving-feature) for enabling Privacy Preserving Attribution without asking its users if they wanted to enable it. This may help explain why Mozilla wants Firefox users to [acknowledge the new Terms](https://blog.mozilla.org/en/products/firefox/firefox-news/firefox-terms-of-use/) this month.

## Takeaways

What's the bottom line here?

* Mozilla isn't claiming the rights to your intellectual property anymore, but they say it is okay to use any of your browsing data for advertising purposes
* Mozilla may have already been deceptively [selling user data]({% post_url 2025-03-02-who-else-is-surprised-that-mozilla-uses-technical-and-interaction-data-for-advertising-purposes-on-the-new-tab-page %}), necessitating updates
* noyb filed a [complaint against Mozilla](https://noyb.eu/en/firefox-tracks-you-privacy-preserving-feature) for enabling advertising features without informing users
* Mozilla says that "asking you to acknowledge it [the <abbr title="Terms of Use">ToU</abbr>] is an important step, so we’re making it a part of the standard product experience starting in early March for new users and later this year for existing ones." - this may be a way to head off the noyb complaint for any old and new ads features.

It is clear is that Mozilla wants to be able to unambiguously claim to regulators that people agreed to have their data sold -- they want that permission to be persistent, and they want it to be modifiable in perpetuity.

That changes what Firefox has been, and [the Firefox I loved is gone](https://www.zdnet.com/article/the-firefox-i-loved-is-gone-how-to-protect-your-privacy-on-it-now/). More on why, and where we go from here, in the next post.

---

{% include donate-social.html %} You can [message me](https://mastodon.social/@yoasif) or follow [this blog](https://mastodon.social/@quippdblog) on Mastodon.
