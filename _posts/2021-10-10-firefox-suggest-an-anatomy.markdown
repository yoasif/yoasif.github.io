---
layout: post
title:  "Firefox Suggest: An Anatomy of a PR Disaster"
date:   2021-10-10 01:30:00 -0400
categories: writing
tags: Firefox
---

Firefox 93 was [released](https://www.mozilla.org/en-US/firefox/93.0/releasenotes/) last Tuesday, and early reviews were positive. That didn't last long though, as reports soon spread on tech media that Firefox was now showing ads in the address bar, something only obliquely mentioned in the release notes. Since then, Support Mozilla has posted a note saying that they "haven't quite hit" their mark, and that they are working to address it.

How did this happen? Grab a cup of your favorite beverage, as I try to explain. 

The good news is that it isn't as bad as it seems. The bad... well, it *is* a disaster.

{:toc}
* toc

* * *

## Timeline

* **Aug 2, 2021**: Mozilla posts a [video](https://blog.mozilla.org/en/products/firefox/an-update-from-firefox/) referencing upcoming features to "help Firefox users to get the best out of the web"
* **September 7, 2021**: Users [begin](https://www.reddit.com/r/firefox/comments/pjp68v/how_to_get_rid_of_the_word_firefox_suggest_on_the/) to [notice](https://www.reddit.com/r/firefox/comments/pjq5bq/whats_firefox_suggest/) "Firefox Suggest" in their address bar with the release of Firefox 92. No mention of Firefox Suggest or the labeling change appear in the [release notes](https://www.mozilla.org/en-US/firefox/92.0/releasenotes/).
* **September 15, 2021**
	* Mozilla [announces Firefox Suggest](https://blog.mozilla.org/en/products/firefox/firefox-news/firefox-suggest/) in a blog post.
	* Fast Company posts an article profiling Firefox Suggest: [Firefox’s new feature is part of an ambitious plan to change how we search](https://www.fastcompany.com/90676758/firefox-suggest-wikipedia-ebay-results-mozilla-google).
* **October 5, 2021**: Firefox 93 is released. Firefox Suggest is mentioned in the [release notes](https://www.mozilla.org/en-US/firefox/93.0/releasenotes/), as the last "new" item as a "a faster way to navigate the web". The notes link to a [support article](https://support.mozilla.org/en-US/kb/navigate-web-faster-firefox-suggest/revision/230279) to learn more. 
* **October 6, 2021**
	* ladyaeva posts on Twitter that "[looks like firefox quietly added ads into the address bar.](https://twitter.com/ladyaeva/status/1445834339917320194)"
	* ladyaeva's post gets shared to [reddit](https://www.reddit.com/r/firefox/comments/q2z99w/looks_like_firefox_quietly_added_ads_into_the/)
* **October 7, 2021**
	* ladyaeva's post gets shared to [Hacker News](https://news.ycombinator.com/item?id=28780285)
	* The Verge posts an article saying that [Firefox’s address bar has ads now, but you can disable them](https://www.theverge.com/2021/10/7/22715179/firefox-suggest-search-ads-browser).
* **October 8, 2021**
	* A [revision](https://support.mozilla.org/en-US/kb/navigate-web-faster-firefox-suggest/revision/230565) is posted to Support Mozilla clarifying how to see if users are opted-in to "improved results for Contextual Suggestions". The change was accompanied by a comment marking the revised update due to a "PR incident".
	* How-To Geek reports that [Firefox now sends your address bar keystrokes to Mozilla](https://www.howtogeek.com/760425/firefox-now-sends-your-address-bar-keystrokes-to-mozilla/).
	* [Jefferson Scher](https://www.jeffersonscher.com/) posts a clarification on reddit that address bar queries are [not sent to Mozilla](https://www.reddit.com/r/firefox/comments/q485wb/firefox_now_sends_your_address_bar_keystrokes_to/hfx546l/), with a link to the [Firefox source](https://searchfox.org/mozilla-release/source/browser/components/urlbar/UrlbarPrefs.jsm#532).
* **October 9, 2021**: Known tech blogger Paul Thurrott asks if [Mozilla Firefox is getting sketchy](https://www.thurrott.com/cloud/web-browsers/mozilla-firefox/258006/is-mozilla-firefox-getting-sketchy). [Betteridge's law of headlines](https://en.wikipedia.org/wiki/Betteridge's_law_of_headlines) would suggest *no*, but it remains to be seen how public perception changes.

## Firefox Suggest - What is it?

As is often the case with posts having gone through PR filters, it can be hard to understand what Firefox Suggest actually *is*.

Mozilla [says](https://blog.mozilla.org/en/products/firefox/firefox-news/firefox-suggest/):

<blockquote>Firefox Suggest is a new discovery feature that is built directly into the browser. Firefox Suggest acts as a trustworthy guide to the better web, surfacing relevant information and sites to help people accomplish their goals.</blockquote>

it continues by saying:

<blockquote>Firefox already helps people search their browsing history and tabs and use their preferred search engine directly from Firefox’s Awesome Bar. 

Firefox Suggest will enhance this by including other sources of information such as Wikipedia, Pocket articles, reviews and credible content from sponsored, vetted partners and trusted organizations.</blockquote>

Okay, so Firefox Suggest is an addition to Firefox's Awesome Bar that pulls in information from organizations external to Firefox.

Not exactly.

### Relabeling of Existing Features
{:.no_toc}

Two months ago, when Firefox Suggest features started trickling into Firefox Nightly, I [opened a bug](https://bugzilla.mozilla.org/show_bug.cgi?id=1725290) because I saw a *Firefox Suggest* label in my address bar even though I had opted out of search suggestions. I had assumed then that Firefox Suggest was an addition to Firefox's existing functionality.

Not so. The first thing Firefox Suggest is is a relabeling of functionality that previously existed in Firefox. For a very long time now, Firefox has had an "[AwesomeBar](https://blog.mozilla.org/en/mozilla/a-little-something-awesome-about-firefox-3/)", which is, well - awesome. You can see the documentation on the [autocomplete suggestions](https://support.mozilla.org/en-US/kb/address-bar-autocomplete-firefox) article on Support Mozilla, but all you really need to know is that it makes it very easy to navigate your open tabs, history, and bookmarks. 

Per the closed bug report I filed, Firefox Suggest first relabels the AwesomeBar features under a new umbrella term.

>Firefox Suggest is what we're labeling bookmarks/history now. They're "suggestions" from Firefox as opposed to suggestions from your search engine.

### Contextual Suggestions
{:.no_toc}

The first *new* feature in Firefox Suggest is "contextual suggestions", a way for the browser to guide users to recommended sites. Mozilla calls it a discovery feature that is meant to be "a trustworthy guide to the better web" to help people accomplish their goals.

The only site that seems to a part of the better web today is Wikipedia, and users can test this by typing "Costa Rica" into the address bar, whereupon you should see a result that deep links you directly to the article on Wikipedia.

<p>
	<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-suggest-an-anatomy/firefox-suggest-address-bar-wikipedia.webp,
	  									{{site.url}}/assets/images/firefox-suggest-an-anatomy/firefox-suggest-address-bar-wikipedia-2x.webp 2x">
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-suggest-an-anatomy/firefox-suggest-address-bar-wikipedia.png,
	  								   {{site.url}}/assets/images/firefox-suggest-an-anatomy/firefox-suggest-address-bar-wikipedia-2x.png 2x">
	  <img src="{{site.url}}/assets/images/firefox-suggest-an-anatomy/firefox-suggest-address-bar-wikipedia.png" srcset="{{site.url}}/assets/images/firefox-suggest-an-anatomy/firefox-suggest-address-bar-wikipedia-2x.png 2x" alt="Firefox address bar showing a Firefox Suggest result for Costa Rica on Wikipedia"/>
	  <figcaption>Firefox users can find suggestions from Wikipedia</figcaption>
	</picture>
</figure>
</p>

I totally agree with Mozilla that Wikipedia is a great site, and providing a deep link to Wikipedia instead of hitting a search engine first or [never visiting Wikipedia](https://twitter.com/patrickstox/status/1103338903426207745) feels like a much better experience.

### Sponsored Contextual Suggestions
{:.no_toc}

The other new feature is advertisements. Mozilla works with adMarketplace to show relevant ads in response to typed queries in the address bar. An example of this is given on the support page - you can type "vans" into your address bar and you will see a result (clearly labeled as *Sponsored*) linking to Vans Shoes on eBay.

<p>
	<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-suggest-an-anatomy/firefox-suggest-address-bar-ads.webp,
	  									{{site.url}}/assets/images/firefox-suggest-an-anatomy/firefox-suggest-address-bar-ads-2x.webp 2x">
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-suggest-an-anatomy/firefox-suggest-address-bar-ads.png,
	  								   {{site.url}}/assets/images/firefox-suggest-an-anatomy/firefox-suggest-address-bar-ads-2x.png 2x">
	  <img src="{{site.url}}/assets/images/firefox-suggest-an-anatomy/firefox-suggest-address-bar-ads.png" srcset="{{site.url}}/assets/images/firefox-suggest-an-anatomy/firefox-suggest-address-bar-ads-2x.png 2x" alt="Firefox address bar showing a Firefox Suggest result for Vans Shoes on eBay"/>
	  <figcaption>Firefox users can find sponsored suggestions from vetted partners</figcaption>
	</picture>
</figure>
</p>

I think this is a good result - I often shop on eBay, and I sometimes use the built in search engine on Firefox to search eBay. 

Other times though, I start off doing a search for "vans ebay" using my default search engine - if I am lucky, my default search engine will have a result with a deep link to eBay with the correct search term. I know that is a little like the people who type "google" into Chrome's address bar to navigate to google.com to continue their search, but Mozilla has understood something that Google learned a long time ago - just because it is possible doesn't mean it is *easy* - and you can monetize making it easier.

## What Went Wrong?

I'm not going to discuss whether it makes sense for Firefox to have ads in its address bar - it was announced previously, and ultimately, it is up to users to decide whether the features make sense for them. 

I will note that I agree that Mozilla needs to reduce its dependence on search engine royalties, especially after multiple [rounds of layoffs](https://arstechnica.com/information-technology/2020/08/firefox-maker-mozilla-lays-off-250-workers-says-covid-19-lowered-revenue/) - the future of the Mozilla projects (and perhaps the web) that we care about depend on it.

The rollout on the other hand, was badly managed and confusing, and that is where I will place my focus. 

### Branding

Mozilla went through a [rebranding](https://blog.mozilla.org/opendesign/firefox-the-evolution-of-a-brand/) in 2019 where it seemed like everything new that Mozilla was working on had the Firefox branding attached. Mozilla has since shown more restraint, with its VPN product using the name "Mozilla VPN", but it seems like they were unable to resist attaching the Firefox name to a feature that if anything, weakens the master brand. 

#### Why Rebrand the AwesomeBar?
{:.no_toc}

As noted above, most of Firefox Suggest's functionality isn't actually new. It is the repackaging of Firefox 3 technology with the addition of "contextual suggestions" and advertising. Firefox’s release notes from 2008 [noted](https://website-archive.mozilla.org/www.mozilla.org/firefox_releasenotes/en-us/firefox/3.0/releasenotes/):

<blockquote>Smart Location Bar: type in all or part of the title, tag or address of a page to see a list of matches from your history and bookmarks; a new display makes it easier to scan through the matching results and find that page you're looking for. Results are returned according to their a combination of frequency, and recency of visits to that page, ensuring that you're seeing the most relevant matches. An adaptive learning algorithm further tunes the results to your patterns!</blockquote>

Sounds kinda familiar. 

Mozilla said back then that the address bar was smarter because it showed me *my* locally sourced content - my **history** and **bookmarks**. The new feature though, shows me content from "contextual suggestions" that lead me *away* from my own content towards content that my browser (and maybe a web service) is directing me towards.

I can see it from Mozilla's perspective -- the browser is ultimately interpreting what users are typing into the address bar and showing you things that the software deems to be relevant, and returning that result to you. The software is web-connected anyway, so *why not* take advantage of web services (or built-in suggestions) to provide more relevant responses that go beyond browsing through stuff users have already seen?

##### Differentiation
{:.no_toc}

Perhaps Mozilla wanted to rebrand the AwesomeBar suggestions in order to differentiate between search engine suggestions and contextual suggestions? Firefox developers said as much in their bug tracker - "they're suggestions from Firefox as opposed to suggestions from your search engine". 

Even if that is the case, it doesn't seem to be the relevant distinction here - Mozilla wants to separate search engine suggestions from *contextual suggestions*, so that you don't think Google or DuckDuckGo or whatever your default search engine is is showing you content from Firefox Suggest. That can be done without rebranding locally sourced suggestions though - simply label the *new* suggestions from Firefox Suggest. 

#### Rebranding is Confusing
{:.no_toc}

The most galling thing about the rebranding of existing functionality is that it is utterly confusing. For people that are already familiar with Firefox, relabeling the existing history and bookmark search is extremely confusing. 

I myself run a [setup of Firefox]({% post_url 2021-07-26-firefox-privacy-stop-hardening-love-strict-etp %}) that doesn't show search engine suggestions in the address bar, so prior to Firefox Suggest, everything that appeared in my address bar suggestions was *my* content - things I *knew* I would be interested in seeing. 

I was so confused by the appearance of the "Firefox Suggest" label in my address bar that I opened a bug, whereupon I was told that Firefox was relabeling those suggestions as part of the new feature. 

Here's the problem -- it doesn't *make sense*!

Firefox Suggest is its *own thing*. It is the new contextual suggestions - the nifty links to Wikipedia, the useful nudges to eBay - but it is decidedly *not* my own content. 

There's a simple reason for this. 

Once you give something a name, it becomes an *[other](https://otheringandbelonging.org/the-problem-of-othering/)* - it no longer belongs to the thing we thought it belonged to. There is a reason that Firefox's history isn't called "Firefox History" and bookmarks aren't called "Firefox Bookmarks" - I am already using the app, so it is obvious (and expected) that everything within it belongs to Firefox.

You can see this kind of branding in use when you are talking about disparate entities within an ecosystem - iCloud Keychain as opposed to keychains in macOS, for example. Keychains are used to store login information across many apps on macOS - but it is only when you move those passwords to another, cloud based system that you need to use the *other* iCloud Keychain. It isn't on your system, so it gets a new name.

Mozilla tried to reduce the foreignness of rebranding something native to the browser since 2008 by naming it *Firefox* - it is familiar because it shares a name with the thing you already know. It really doesn't work though, because just like Firefox Accounts, while you might be able to use its functionality in Firefox, it is also external to it.

### Privacy and Dark Patterns

Mozilla has in recent years been focusing a lot on privacy, both in its marketing and in its product development and research. These efforts have helped Firefox gain popularity among online privacy communities - perhaps even to its detriment, as some people seem to think of Firefox as a "privacy browser" - rather than a great browser with excellent privacy features.

The Firefox Suggest brand damages the the core Firefox *browser* brand in exactly the area where Mozilla has placed focus - privacy. Mozilla has rebranded an ultimate privacy feature - offline and locally sourced search suggestions - as one and the same as one that may require network access and contains advertisements. It is now struggling to explain the distinction between offline and online suggestions, even though it would have been simpler to simply call the *new* functionality Firefox Suggest.

Even if this was not the intent, this comes off as a dark pattern. 

My own setup that I referenced earlier exemplifies the situation.

As one of the privacy aware users that Mozilla has done a great job catering to, I don't have any search suggestions in my address bar results. I prefer to only send my search queries to my search engine when I am actively searching, as I am often searching for my local data. 

For reference, this is how my search preferences are setup:

<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-privacy-stop-hardening-love-strict-etp/firefox-search-suggestions-address-bar.webp,
	  								  {{site.url}}/assets/images/firefox-privacy-stop-hardening-love-strict-etp/firefox-search-suggestions-address-bar-2x.webp 2x">
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-privacy-stop-hardening-love-strict-etp/firefox-search-suggestions-address-bar.png,
	  								   {{site.url}}/assets/images/firefox-privacy-stop-hardening-love-strict-etp/firefox-search-suggestions-address-bar-2x.png 2x">
	  <img src="{{site.url}}/assets/images/firefox-privacy-stop-hardening-love-strict-etp/firefox-search-suggestions-address-bar.png" srcset="{{site.url}}/assets/images/firefox-privacy-stop-hardening-love-strict-etp/firefox-search-suggestions-address-bar-2x.png 2x" alt="Show search suggestions in address bar results checkbox unchecked and highlighted"/>
	</picture>
</figure>

This means that the idea of differentiation between offline search results (history and bookmarks) and search engine results no longer applies. Someone who uses this setting in Firefox preferences (not a secret feature!) *never* sees search engine results, and with the release of Firefox 93 will see their *locally sourced* search results labeled as "Firefox Suggest" results.

#### A Dark Pattern
{:.no_toc}

[Dark Patterns](https://en.wikipedia.org/wiki/Dark_pattern) are defined as "a user interface that has been carefully crafted to trick users into doing things", and the way that Firefox Suggest has been built feels like a dark pattern.

Why?

Take my experience as an example. 

1. I set my address bar preferences to not show me search engine results.
2. I upgrade to Firefox 93.
3. I type `vans` into my address bar to browse my history for previously viewed articles on vans.

What happens?

I see an ad to shop for Vans Shoes on eBay, among my locally sourced results, all under the label of "Firefox Suggest". 

What is wrong here?

Mozilla is training less-savvy users into believing that while previously, they were able to see their offline, locally sourced data without ads, they must now see them with sponsored results, as they are now part of Firefox Suggest. Even if I don't make the connection to advertising - maybe I don't even see an ad - why are my locally sourced search results grouped under a new service? Is this not part of the app like it has always been?

Maybe we are meant to assume that the suggestions are now somehow powered by a web service. As more and more functionality in apps move to the web, it wouldn't be too much of a stretch to believe that Firefox Suggest (and everything about it) works like Amazon Echo or Google Home - where all queries are sent over the network to a cloud based service for interpretation and results.

This is insidious and damaging to Firefox's brand, since it attaches something that was once 100% private to something that looks like it is sending queries online. Instead of clearly labeling the contextual suggestions (including sponsored suggestions) as Firefox Suggest, Mozilla has instead chosen to damage *existing and private* functionality with the taint of network services -- and worse yet, advertising.

The weirdest part about the new feature is that *even after disabling* the **Contextual suggestions** checkbox in Firefox preferences, you *still* see the "Firefox Suggest" branding in your address bar, even though Firefox Suggest is ostensibly the *very same* feature that you *just disabled*! So Firefox Suggest is something I can't even disable - even though Mozilla says that "we believe people should be in control of their web experience, so Firefox Suggest will be a customizable feature".

Is this a dark pattern, or does the right hand not know what the left hand is doing?

The rollout made this worse than the branding issue that I have detailed thus far - much worse.

### The Rollout

Firefox 93 was released last Tuesday, and within the next day, technology enthusiasts were abuzz with the news that Firefox had opted users into advertisements in the address bar.

The reaction was not all that positive, and the release notes nor the Support Mozilla documentation did little to allay that initial reaction.

Upon upgrade (and on new installs), Firefox 93 opts users into "Contextual suggestions" and "Include occasional sponsored suggestions".

#### Support Mozilla
{:.no_toc}

Unfortunately, the Support Mozilla page that both the release notes and the Firefox UI [linked to](https://support.mozilla.org/en-US/kb/navigate-web-faster-firefox-suggest/revision/230279) stated a number of confusing and contradictory things.

The document states:

* Beginning in Firefox version 92, you will also receive new, relevant suggestions from our trusted partners based on what you’re searching for. **No new data is collected, stored, or shared to make these new recommendations.**
{: style='list-style-type: none'}
(Emphasis added)

It goes on to say:

* What data is shared if you enable contextual suggestions?
* To help you find information faster, Firefox Suggest uses a service provided by us to offer relevant suggestions to the text you are typing. **When contextual suggestions are enabled, Mozilla receives your search queries. When you see or click on a Firefox Suggest result, Mozilla collects and sends your search queries and the result you click on to our partners through a Mozilla-owned proxy service. The data we share with partners does not include personally identifying information and is only shared when you see or click on a suggestion.**
{: style='list-style-type: none'}
(Emphasis added)

It also included a screenshot of the Firefox preferences UI:

<figure>
	<picture>
	  <img src="{{site.url}}/assets/images/firefox-suggest-an-anatomy/firefox-suggest-settings.png" alt="Firefox Suggest settings"/>
	</picture>
</figure>

With the note: "to enable or disable contextual suggestions, select or deselect the checkbox next to **Contextual suggestions**."

This was already pretty confusing, but it gets worse, because the Mozilla announcement had also made a number of promises around opt-ins for Firefox Suggest.

#### Firefox Suggest Announcement
{:.no_toc}

In the Firefox Suggest [announcement post](https://blog.mozilla.org/en/products/firefox/firefox-news/firefox-suggest/), Mozilla says that:

>As always, we believe people should be in control of their web experience, so Firefox Suggest will be a customizable feature. We’ll begin offering contextual suggestions to a percentage of people in the U.S. as an opt-in experience ... We believe online ads can work without advertisers needing to know everything about you.

This was accompanied by a screenshot of the opt-in dialog:

<figure>
	<picture>
	  <img src="{{site.url}}/assets/images/firefox-suggest-an-anatomy/firefox-suggest-opt-in.png" alt="Firefox Suggest opt-in"/>
	</picture>
</figure>

This screenshot and a similar note was posted to the aforementioned Support Mozilla article, saying:

* Contextual suggestions
* We are rolling out a new type of even smarter suggestions. You might notice a message inviting you to enable these new suggestions the next time you install or update Firefox.
* **These suggestions — which aim to enhance and speed up your searching experience — are only enabled when you provide access to new data types.** We source and partner with trusted providers to serve up contextual suggestions related to your query from across the web. 
{: style='list-style-type: none'}
(Emphasis added)

Why was this confusing?

The best available information (directly linked from the application and release notes) said that if the *Contextual suggestions* checkbox was enabled, Mozilla received your search queries. Even worse, most of the people (nearly everyone) who looked in their settings to see whether ads were enabled *never saw* an opt-in dialog, and had never opted in.

Clearly then, Firefox was sending address bar queries to Mozilla, and that is exactly how How-To Geek reported it. The ads were clearly enabled - you could type in `vans` into your address bar and see the ad. The checkbox was also enabled without an opt-in.

## The Good News

Eventually, Support Mozilla posted an update to the support page for Firefox Suggest clarifying how to check to see if users are opted into an enhanced contextual suggestions experience. A few hours after that, jscher2000 posted a clarification on reddit that address bar queries are [not sent to Mozilla](https://www.reddit.com/r/firefox/comments/q485wb/firefox_now_sends_your_address_bar_keystrokes_to/hfx546l/), with a link to the [Firefox source](https://searchfox.org/mozilla-release/source/browser/components/urlbar/UrlbarPrefs.jsm#532) as proof.

No accompanying blog post addressing the confusion has been posted. The release notes have not been updated to make reference to advertising.

The good news here is that if users have not opted into the "improved results for Contextual Suggestions" experience, no additional data is sent or collected by Mozilla.

## Epilogue

The bad news is that Mozilla broke a lot of people's expectations and trust. Mozilla explicitly said that *"As always, we believe people should be in control of their web experience, so Firefox Suggest will be a customizable feature. We’ll begin offering contextual suggestions to a percentage of people in the U.S. as an opt-in experience. We believe online ads can work without advertisers needing to know everything about you."*

I (and I think most other people) took that to understand that the experience - without any update to the contrary - would be opt-in only. Of course I had expected at some point that the sponsored suggestions would be enabled by default, but I had expected an announcement prior to that occurrence.

Mozilla blindsided Firefox users upon release, and made it harder to defend it on social media, helping to burn out its still avid fanbase. 

Connecting the Firefox brand and browser to an ecosystem of online and offline services can be a good thing - I have a Firefox Sync account and tested Firefox Lockwise - and would even love to see a [Chromium extension for Lockwise](https://github.com/mozilla-lockwise/lockwise-addon/issues/350). Those things should be additive to the brand and browser, though. 

Rebranding features that already worked offline in order to attach it to online functionality is a mistake. The rebrand doesn't come with any enhancement to the existing functionality, so the branding serves no purpose to users - indeed, it is so confusing that Support Mozilla hasn't been able to hit their mark, even after a PR incident. Why release such a confusing update without an announcement? 

It is said that the cover-up is always worse than the crime, and that is exactly how it looks here. Mozilla promised users that they would be asked to opt-in to the new contextual suggestions experience in Firefox Suggest. That isn't what happened. Users began seeing ads, and there was no opt-in. It *doesn't matter* if no additional data is sent. Mozilla eroded people's trust, and bad headlines followed. Would there would have been as much consternation and confusion if they had announced what was coming? I'm optimistic that it would have had a better result.

By not updating users on what exactly happened in Firefox 93, Mozilla looks like they are trying to sneak something past its users. Even Firefox Suggest's presence in the release notes seem to follow that theme - it is the last item, below a macOS only feature that only affects users who run applications from their download directory. Lacking clarity, the community and press have begun to ascribe murky motivations for Mozilla's actions. That isn't good for a privacy brand who claims to [respect its users](https://www.mozilla.org/en-US/firefox/privacy/) and "doesn’t depend on secretly abusing your trust".

Firefox Suggest has been a disaster. I'm hoping that Mozilla will try to repair the damage.