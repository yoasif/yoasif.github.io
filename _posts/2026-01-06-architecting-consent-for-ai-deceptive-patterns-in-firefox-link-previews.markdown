---
layout: post
title:  "Architecting Consent for AI: Deceptive Patterns in Firefox Link Previews"
date:   2026-01-06 10:55 -0500
categories: writing
tags: firefox mozilla
external-url: 
image: /assets/images/social-previews/Firefox Link Previews.png
redirect_from:

---

**TL;DR**: Mozilla has a new CEO and a new mission: transform Firefox into an AI browser. That has run into some snags, as Firefox users don't seem that interested in AI. Mozilla is forging ahead, utilizing deceptive patterns (previously known as dark patterns) to nag and annoy people into enabling AI features. You can see this in the introduction of Link Previews, an extremely invasive anti-feature that exists solely to push AI into your experience.

I made <a href="https://www.youtube.com/watch?v=3SdlKDD5jF8">a video</a> if you want to watch instead.

<iframe width="560" height="315" src="https://www.youtube.com/embed/3SdlKDD5jF8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

---

{:toc}
* toc

Mozilla's [new CEO has a new mission to make an AI browser](https://blog.mozilla.org/en/mozilla/leadership/mozillas-next-chapter-anthony-enzor-demeo-new-ceo/). The community's reaction has been decidedly negative, with posters on social media saying that they have [little to no interest in Mozilla's AI ambitions](https://www.reddit.com/r/firefox/comments/1poe7kb/an_open_letter_to_mozillas_new_ceo_firefox_doesnt/).

Mozilla's response to the community's backlash towards AI was to (re)announce that they would be developing an "[AI Kill Switch](https://mastodon.social/@firefoxwebdevs/115740500373677782)" to disable any existing and forthcoming AI features in Firefox.

Mozilla employees followed up on their traditional media response with a social media response, and [multiple](https://mastodon.social/@firefoxwebdevs/115740500373677782) [team members](https://www.reddit.com/r/firefox/comments/1ppydhv/firefox_is_adding_an_ai_kill_switch/nuqop1h/) fielded questions from the general public.

As Firefox users asked how the "kill switch" would work, [Mozilla began to sound more shifty](https://mastodon.social/@firefoxwebdevs/115740901466126279), saying that while there are some gray areas of what "opt-in" means to different people, their kill switch would [absolutely remove that stuff](https://mastodon.social/@firefoxwebdevs/115740500918701463).

To help clear things up, Mozilla explained that the AI features in "Link Previews" has "[always been opt-in](https://www.reddit.com/r/firefox/comments/1ppydhv/firefox_is_adding_an_ai_kill_switch/nurhmfn/)".

## Link Previews in Beta

*Link Previews* is a feature that was [first introduced in Firefox 138](https://blog.mozilla.org/en/mozilla/ai/ai-tech/ai-link-previews-firefox/), as an experimental, opt-in Labs feature.

The feature was introduced as a way for users to get relevant information faster, by providing them with an [image, the webpage title, and AI-generated key points](https://connect.mozilla.org/t5/firefox-labs/try-out-link-previews-in-firefox-labs-138-and-share-your/m-p/92012/highlight/true#M530).

Mozilla introduced the experiment by saying that Link Previews is "entirely optional" and that "it only appears in Firefox if you enable the feature and consent to local AI processing".

After enabling the feature in Firefox Labs, users would have to press <kbd>Shift</kbd> and <kbd>Alt</kbd> (or <kbd>Option</kbd> on macOS) to see the preview.

The feature changed in a few ways once it was released to general availability in Firefox 142.

## Link Previews in Firefox 142

Link Previews was promoted to release on Firefox 142.

Firefox 142's [release notes](https://www.firefox.com/en-US/firefox/142.0/releasenotes/) describes how the feature was changed upon release. Mozilla says: "Long press a link (or right-click and choose Preview Link). Previews can optionally include AI-generated key points, which are processed on your device to protect your privacy."

Firefox now shows the Link Preview popups when long clicking a link. While this gesture is common on mobile, it is not on desktops - and many people are seeing the popups and not understanding why they appear. Some are even convinced that they are coming from the sites themselves, like from YouTube.

<figure class="image-row">
<a href="https://www.reddit.com/r/firefox/comments/1prq1kf/is_this_some_new_ai_feature_in_ff/">
  
<picture>
<source srcset="{{site.url}}/assets/images/firefox/link-previews/reddit-ai.avif" type="image/avif">
<source srcset="{{site.url}}/assets/images/firefox/link-previews/reddit-ai.webp" type="image/webp">
<img src="{{site.url}}/assets/images/firefox/link-previews/reddit-ai.png" alt="Screenshot of reddit page asking if this is some new AI feature in Firefox">
</picture>
</a>
<a href="https://www.reddit.com/r/firefox/comments/1mvoong/randomly_getting_link_previews_on_webpages_using/">
  
<picture>
<source srcset="{{site.url}}/assets/images/firefox/link-previews/reddit-random.avif" type="image/avif">
<source srcset="{{site.url}}/assets/images/firefox/link-previews/reddit-random.webp" type="image/webp">
<img src="{{site.url}}/assets/images/firefox/link-previews/reddit-random.png" alt="Screenshot of reddit page asking whether link previews can be disabled">
</picture>
</a>
<a href="https://www.reddit.com/r/firefox/comments/1ps6kc3/firefox_what_is_this/">
  
<picture>
<source srcset="{{site.url}}/assets/images/firefox/link-previews/reddit-what.avif" type="image/avif">
<source srcset="{{site.url}}/assets/images/firefox/link-previews/reddit-what.webp" type="image/webp">
<img src="{{site.url}}/assets/images/firefox/link-previews/reddit-what.png" alt="Screenshot of reddit page asking Firefox what is this?">
</picture>
</a>
  <figcaption>Firefox enthusiasts are confused about the Link Preview popups</figcaption>
</figure>

<figure class="image-row">
<a href="https://www.reddit.com/r/firefox/comments/1pr67te/how_would_i_remove_this_popup_about_firefoxs_ai/">
  
<picture>
<source srcset="{{site.url}}/assets/images/firefox/link-previews/youtube-how.webp" type="image/webp">
<img src="{{site.url}}/assets/images/firefox/link-previews/youtube-how.png" alt="Screenshot of reddit page asking how remove a popup about Firefox AI on YouTube">
</picture>
</a>
<a href="https://www.reddit.com/r/firefox/comments/1oam4g9/how_to_get_rid_of_youtube_ai/">
  
<picture>
<source srcset="{{site.url}}/assets/images/firefox/link-previews/youtube-how-rid.avif" type="image/avif">
<source srcset="{{site.url}}/assets/images/firefox/link-previews/youtube-how-rid.webp" type="image/webp">
<img src="{{site.url}}/assets/images/firefox/link-previews/youtube-how-rid.png" alt="Screenshot of reddit page asking how to get rid of YouTube AI">
</picture>
</a>
<a href="https://www.reddit.com/r/firefox/comments/1pnf3j4/we_cant_generate_key_points_for_this_page_popup/">
  
<picture>
<source srcset="{{site.url}}/assets/images/firefox/link-previews/youtube-we.webp" type="image/webp">
<img src="{{site.url}}/assets/images/firefox/link-previews/youtube-we.png" alt="Screenshot of reddit page asking why Firefox can't generate key points on YouTube">
</picture>
</a>
  <figcaption>Firefox users on reddit believed that YouTube was pushing AI on them</figcaption>
</figure>

While Mozilla introduced Link Previews as "entirely optional", people are now seeing link previews without ever enabling the feature.

You probably noticed that Mozilla said that the previews can optionally include AI-generated key points. That's because Mozilla enabled link previews by default, but made the summaries optional.

Since the feature has been split up, let's see how it works.

### Link Previews

Link Previews - without the AI summary - is a feature Mozilla could have added to Firefox decades ago. That's because the snippet it shows is the same one that search engines have been using since 1996 to get a basic idea of what pages are about: the page's [meta description](https://www.w3.org/TR/html401/appendix/notes.html#h-B.4).

If you click your mouse button over a link for a second, your browser will visit the page and process it to grab the page description and to estimate the amount of time it takes to read.

The request to the page happens from your computer and is not proxied in any way. That means that your IP address will be leaked to the server hosting the link that you are previewing. Mozilla says that key points are processed locally to protect your privacy in the release notes, but says nothing about leaking your privacy in showing the link preview (and enabling it by default).

#### Criticism

**Note**: This section updated on January 8.

I got some responses that my criticism for Link Previews leaking your privacy doesn't make sense, since visiting the page would also share the same data with the originating server.

That is true, but it also doesn't defend Link Previews in any way. The reason that Mozilla tells us that the AI generated summaries are generated locally to protect your privacy is because the alternative would be to send it off to a cloud-based LLM. Mozilla doesn't apply the same thinking to the Link Previews itself, since privacy (like security) is layered.

To demonstrate, we can do a [search](https://www.startpage.com/sp/search?query=things+you+should+never+do&cat=web&pl=opensearch) for the [same](https://www.joelonsoftware.com/2000/04/06/things-you-should-never-do-part-i/) page I previewed in the [mockups](#an-alternative-opt-in) I generated.

<p>
<figure>
  
<picture>
<source srcset="{{site.url}}/assets/images/firefox/link-previews/never-do.webp" type="image/webp">
<img src="{{site.url}}/assets/images/firefox/link-previews/never-do.png" alt="Screenshot of a Startpage search in Firefox">
</picture>
  <figcaption>A Startpage search. Note the "Visit in Anonymous View" link below the search result</figcaption>
</figure>
</p>

I use Startpage, and they offer a "Visit in Anonymous View" that actually works like a privacy preserving preview.

<p>
<figure>
  
<picture>
<source srcset="{{site.url}}/assets/images/firefox/link-previews/things-you-should-never-do-anonymous.webp" type="image/webp">
<img src="{{site.url}}/assets/images/firefox/link-previews/things-you-should-never-do-anonymous.png" alt="Screenshot of a blog post inside of Startpage anonymous view">
</picture>
  <figcaption>Anonymous view of a blog post on Startpage</figcaption>
</figure>
</p>

This feature actually works to preserve my privacy. The originating host never sees my request, and I can visit the page on my own if I want to.

Would people be saying that Mozilla is intruding on your privacy if they saw what pages you were previewing? If you wouldn't want Mozilla knowing what pages you are previewing, why would you want the originating host to?

There is no doubt that Firefox is causing people to visit more pages than they normally would, and those pages aren't even being viewed by people, as they are processed by Link Previews. That Mozilla imposed this privacy leaking change on Firefox users in an automated update is indisputable.

---

While Mozilla says that the AI features in Link Previews have always been opt-in, it is obvious that this is sleight of hand. Mozilla thinks that by wrapping the AI feature inside a non-AI feature, and enabling the non-AI feature by default, the browser can interrupt you over and over again to finally opt into the AI features.

If you don't know what is happening, this might be easy to miss. Thankfully, the team over at [Deceptive Patterns](https://www.deceptive.design/) have researched "the [growing issue](https://www.deceptive.design/about-us) of manipulative, deceptive and coercive design patterns in the digital world".

## Deceptive Patterns

Looking closer, we can see that Mozilla has designed the Link Previews experience to architect consent for AI by using three main tactics. They are: **obstruction**, **nagging**, and **preselection**.

### Obstruction

The first tactic I want to highlight is **[obstruction](https://www.deceptive.design/types/obstruction)**, which *Deceptive Patterns* defines as something that "deliberately creates obstacles or roadblocks in the user's path, making it more difficult for them to complete a desired task or take a certain action".

The obstruction in Firefox is obvious - the browser is obstructing the user from clicking or manipulating the link in another way. You might want to drag the link to a document to copy it, for example. The user might also have mobility impairments that makes a fast click harder, resulting in a longer hold time.

*Deceptive Patterns* notes that *obstruction* "is used to exhaust users and make them give up, when their goals are contrary to the business's revenue or growth objectives." That sounds exactly right -- Firefox is now an AI browser, so Mozilla's goal is to grow usage of AI rather than browsing web pages.

### Nagging

The obstruction in Link Previews doesn't just happen once, though. After Firefox updates, the popup appears continually as people browse the web normally. This is *[nagging](https://www.deceptive.design/types/nagging)*, defined by the team over at Deceptive Patterns as: "a tax that the provider imposes on users who do not want to comply with the provider's wishes." 

Eventually, the cost becomes non-trivial and at that point, "the user may decide it's more cost effective to just give in and agree to whatever the provider is asking for, even if it is against their best interests".

### Preselection

The deceptive design pattern that makes it all possible is the last one I want to highlight: [preselection](https://www.deceptive.design/types/preselection).

Deceptive Patterns notes that this pattern takes advantage of the [default effect](https://en.wikipedia.org/wiki/Default_effect) cognitive bias: "a psychological phenomenon where people tend to go with the option that is already chosen for them, even if there are other choices available."

Preselection is what allows Mozilla to continually nag and obstruct users - all while putting the onus on disabling the interruptions on the person using Firefox.

Contrary to their messaging on social media, Mozilla preselected the option to  enable Link Previews in an automatic update.

<p>
<figure>
  
<picture>
<source srcset="{{site.url}}/assets/images/firefox/link-previews/link-previews-prefs.webp" type="image/webp">
<img src="{{site.url}}/assets/images/firefox/link-previews/link-previews-prefs.png" alt="Screenshot of Firefox Link Previews preferences">
</picture>
  <figcaption>Link Previews were enabled by default in certain regions</figcaption>
</figure>
</p>

## Opt-Ins and the "Kill Switch"

The design of Link Previews shows us the lengths to which Mozilla is willing to go to get users to "opt into" AI features.

After designing the feature, Mozilla allowed users to use it by opting into it, first by enabling it in settings, then by performing a keyboard shortcut to activate the popup each time.

Making the feature available in settings wasn't going to juice the metrics though, so Mozilla decided that they needed to put it in front of people who weren't checking out the settings UI.

Likely predicting backlash for enabling an AI feature by default, Mozilla decided to split the original feature into two, so they could enable the non-AI portion by default.

It really is that simple. Mozilla never designed Link Previews by itself, as the feature is annoying, not very useful and also leaks your privacy.

It's not even like we can point to people asking for this feature -- I looked for extensions that are similar to Link Previews, and [all of them](https://addons.mozilla.org/en-US/firefox/addon/linkover/) [combined](https://addons.mozilla.org/en-US/firefox/addon/open-in-popup-window/) [total](https://addons.mozilla.org/en-US/firefox/addon/open-in-popup/) up to around 300 users.

<figure class="image-row">
<a href="https://addons.mozilla.org/en-US/firefox/addon/open-in-popup-window/">
  
<picture>
<source srcset="{{site.url}}/assets/images/firefox/link-previews/extension-open-in-popup-window.webp" type="image/webp">
<img src="{{site.url}}/assets/images/firefox/link-previews/extension-open-in-popup-window.png" alt="Screenshot of Mozilla Add-ons page listing for Open in Popup Window">
</picture>
</a>
<a href="https://addons.mozilla.org/en-US/firefox/addon/linkover/">
  
<picture>
<source srcset="{{site.url}}/assets/images/firefox/link-previews/extension-linkover.webp" type="image/webp">
<img src="{{site.url}}/assets/images/firefox/link-previews/extension-linkover.png" alt="Screenshot of Mozilla Add-ons page listing for Linkover">
</picture>
</a>
<a href="https://addons.mozilla.org/en-US/firefox/addon/open-in-popup/">
  
<picture>
<source srcset="{{site.url}}/assets/images/firefox/link-previews/extension-open-in-popup.avif" type="image/avif">
<source srcset="{{site.url}}/assets/images/firefox/link-previews/extension-open-in-popup.webp" type="image/webp">
<img src="{{site.url}}/assets/images/firefox/link-previews/extension-open-in-popup.png" alt="Screenshot of Mozilla Add-ons page listing for Open in Popup">
</picture>
</a>
  <figcaption>Link previewing extensions aren't very popular among Firefox fans</figcaption>
</figure>

What's really happening is that Mozilla wanted people using AI features, but they want people to opt into them -- likely so they could say that Firefox AI features are always opt-in. How can you make that happen without actually enabling AI across the board?

Mozilla figured it out - enable the feature without AI and use the stub feature to advertise for the complete version. It is basically a demo advertising the full version.

If this is how opt-ins look to Mozilla, it means that users can expect to be nagged over and over to try AI features even though they hit the "kill switch". Clearly, Mozilla isn't actually enabling AI, it is enabling an unrelated feature that just suggests AI to you.

After having to opt out of being interrupted, Mozilla is insisting that this counts as an opt-in.

Mozilla's [latest communications](https://mastodon.social/@firefoxwebdevs/115740500918701463) say that the kill switch will remove "[entry points to AI features](entry points to AI features)", so even features newly invented to push AI should be disabled when using the kill switch.

Hopefully that is the case, but it is worth observing what Firefox is becoming. A minefield of pre-selected anti-features is Firefox's present. With the transformation to an AI browser, I'm sure we can expect to see more.

## An Alternative Opt-In

While I'm not a designer, I took a stab at imagining what an opt-in feature would look like.

If summaries are really useful, people will opt into them.

That is the idea behind making summarization a new page action button in the address bar.

Once you load a page, Firefox can advertise that it can summarize the page to you.

<p>
<figure>
  
<picture>
<source srcset="{{site.url}}/assets/images/firefox/ai-summary/Summarize1.webp" type="image/webp">
<img src="{{site.url}}/assets/images/firefox/ai-summary/Summarize1.png" alt="A screenshot of Firefox with a new lightning bolt in the address bar">
</picture>
  <figcaption>⚡ marks the new summarize feature in the address bar</figcaption>
</figure>

<figure>
  
<picture>
<source srcset="{{site.url}}/assets/images/firefox/ai-summary/Summarize2.webp" type="image/webp">
<img src="{{site.url}}/assets/images/firefox/ai-summary/Summarize2.png" alt="Firefox showing the summarize tooltip on mouse cursor hover">
</picture>
  <figcaption>The Summarize tooltip</figcaption>
</figure>
</p>

Once you click the button, Firefox will show you the summary, in a reader-view like format.

<p>
<figure>
  
<picture>
<source srcset="{{site.url}}/assets/images/firefox/ai-summary/Summarize3.webp" type="image/webp">
<img src="{{site.url}}/assets/images/firefox/ai-summary/Summarize3.png" alt="Firefox is loading a summary - the caption is reticulating splines">
</picture>
  <figcaption>Firefox summarizes the article</figcaption>
</figure>

<figure>
  
<picture>
<source srcset="{{site.url}}/assets/images/firefox/ai-summary/Summarize4.webp" type="image/webp">
<img src="{{site.url}}/assets/images/firefox/ai-summary/Summarize4.png" alt="Firefox showing the summary">
</picture>
  <figcaption>The summary is shown, like reader mode.</figcaption>
</figure>
</p>

Unlike Link Previews, this version doesn't ever get in your way.

---

{% include donate-social.html %} You can [message me](https://mastodon.social/@yoasif) or follow [this blog](https://mastodon.social/@quippdblog) on Mastodon.
