---
layout: post
title:  "Killing the Page Action API in Firefox’s Manifest V3 is a Mistake"
date:   2022-06-20 02:47:00 -0400
categories: writing
tags: Firefox manifest-v3 webextensions extensions
---

Mozilla has announced that part of the move to Manifest V3 in Firefox will mean that the [`page_action`](https://developer.mozilla.org/docs/Mozilla/Add-ons/WebExtensions/API/pageAction) extension API will be merged into [`action`](https://developer.mozilla.org/docs/Mozilla/Add-ons/WebExtensions/manifest.json/action). Documentation for `action` shows that extension icons can appear in various places - but the address bar is not one of them. This strikes me as a mistake, one that will (predictably) annoy people who use extensions that currently use page actions - and who count on them to keep their browser toolbars free of clutter. 

Discuss this post on [Reddit](https://www.reddit.com/r/firefox/comments/vgf5h3/killing_the_page_action_api_in_firefoxs_manifest/).

* * *

In Mozilla's [Manifest V3 migration guide](https://extensionworkshop.com/documentation/develop/manifest-v3-migration-guide/), Mozilla [notes that](https://extensionworkshop.com/documentation/develop/manifest-v3-migration-guide/#browser-action):

><small>In Chromium and Safari, page_action is also merged into the renamed action key. Firefox retains the separate page_action in the developer preview but will merge page_action into action in a later release.</small>
>
><small>Also, in Chromium and Safari the Browser Action and Page Action APIs are unified into the Action API, Firefox retains the separate Page Action API in the developer preview but will merge the Page Action API into the new Action API in a later release.</small>

## Chrome vs. Firefox

### Chrome

These changes seem to be prompted by the related change in Chrome. Google [says](https://developer.chrome.com/docs/extensions/mv3/intro/mv3-migration/#action-api-unification): 

><small>In Manifest V2, there were two different APIs to implement actions: `browser_action` and `page_action`. These APIs filled distinct roles when they were introduced, but over time they've become redundant so in Manifest V3 we are unifying them into as single `action` API.<small>

I can certainly understand why Google might say that, since the screenshots in their [documentation](https://developer.chrome.com/docs/extensions/reference/pageAction/) show that Chrome has *already* made pageActions redundant to browserActions, since the icons for pageActions appear alongside the address bar in Chrome, rather than *inside it* like in Firefox.

<p>
<figure>
    	<picture>
    	  <source type="image/webp" srcset="{{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/chrome-page_action.webp">
    	  <source type="image/png" srcset="{{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/chrome-page_action.png">
  <img src="{{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/chrome-page_action.png" alt="Chrome address bar and toolbar with some extensions alongside the address bar"/>
    	</picture>
  <figcaption>Chrome's page actions appear alongside the address bar</figcaption>
</figure>
</p>

Additionally, hidden page actions in Chrome appear greyed out.

<p>
<figure>
    	<picture>
    	  <source type="image/webp" srcset="{{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/chrome-page_action_grey.webp">
    	  <source type="image/png" srcset="{{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/chrome-page_action_grey.png">
  <img src="{{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/chrome-page_action_grey.png" alt="Chrome address bar and toolbar with RSS icon greyed out"/>
    	</picture>
  <figcaption>Hidden page actions - like RSS here - appear greyed out</figcaption>
</figure>
</p>

So clearly, for Chrome, there is virtually no difference between the two actions, and people will not experience any kind of regression. 

### Firefox

Firefox has a different implementation of `page_action` - one that I think works a lot better.

In Firefox, page actions appear *inside* of the address bar, so they are differentiated from browser actions.

Beyond that, page actions can be [hidden](https://developer.mozilla.org/docs/Mozilla/Add-ons/WebExtensions/API/pageAction/hide), so they don't take up space in your address bar when they aren't usable. While this might not be the best idea for standard UI features, I think it is fantastic for extensions, as concerns about discoverability are ameliorated by the fact that extensions are added *optionally* by people using Firefox.

#### Page Actions in Photon

In the Photon UI that preceded the current Proton UI, there were some additional features that helped people organize their page actions.

In Photon, various non-extension features were built into the address bar as page actions - features like pinning tabs, taking a screenshot, sharing pages, along with a few others.

Since there were a bunch of built in page actions, and people could also add new ones via extensions, Firefox had an overflow menu, where people could organize less-used page actions behind a "meatball" menu.

<p>
	<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/photon-page-actions-overflow.webp,
	  									{{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/photon-page-actions-overflow-2x.webp 2x">
	  <source type="image/png" srcset="{{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/photon-page-actions-overflow.png,
	  								   {{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/photon-page-actions-overflow-2x.png 2x">
	  <img src="{{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/photon-page-actions-overflow.png" srcset="{{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/photon-page-actions-overflow-2x.png 2x" alt="Firefox 57 with an opened page actions overflow menu"/>
	  <figcaption>The page actions overflow menu in Firefox 57</figcaption>
	</picture>
</figure>
</p>

The Proton redesign [killed the overflow menu](https://bugzilla.mozilla.org/show_bug.cgi?id=1691454), which prompted bug reports asking to make "[Page Actions customizable again](https://bugzilla.mozilla.org/show_bug.cgi?id=1706583)". The feature hasn't made a return, and my guess is that people are less bothered by this than if the overflow menu had been removed in a vacuum - this did not happen, as Mozilla ended up removing (or moving) most of the built-in page actions that were part of Photon.

## Why Page Actions

It's worth explaining why page actions are valuable. I'll demonstrate this with two extensions that use page actions - and don't use browser actions at all. 

### Extensions

#### Extension Source Viewer

The first is **[Extension source viewer](https://addons.mozilla.org/firefox/addon/crxviewer/)**, also known as **[CRX Viewer](https://github.com/Rob--W/crxviewer)**, an extension to audit the source code of Firefox or Chrome extensions. I use it quite often to get a quick idea of whether an extension looks nefarious, or to see what libraries are bundled with it, or even to see how easily a Chrome extension can be ported to Firefox. 

<p>
	<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/crxviewer-page-action.webp,
	  									{{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/crxviewer-page-action-2x.webp 2x">
	  <source type="image/png" srcset="{{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/crxviewer-page-action.png,
	  								   {{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/crxviewer-page-action-2x.png 2x">
	  <img src="{{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/crxviewer-page-action.png" srcset="{{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/crxviewer-page-action-2x.png 2x" alt="Firefox address bar with Extension Source Viewer icon"/>
	  <figcaption>Extension source viewer is the yellow icon in between the Reader View and Bookmark icons</figcaption>
	</picture>
</figure>
</p>

Clearly, this extension is only useful on certain pages - basically just pages like [AMO](https://addons.mozilla.org/firefox/) and the [Chrome Web Store](https://chrome.google.com/webstore/category/extensions). If I were to install this extension in Chrome, it would be greyed out on *most* pages on the web - since most of the time, people are browsing pages other than extension stores.

#### Feed Preview

The second extension is **[Feed Preview](https://addons.mozilla.org/firefox/addon/feed-preview/)**, a pretty simple extension that helps people discover RSS and Atom feeds on pages. The extension also lets people preview the feeds and subscribe to them using various services.

<p>
<figure>
    	<picture>
    	  <source type="image/webp" srcset="{{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/feed-preview-page-action.webp">
    	  <source type="image/png" srcset="{{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/feed-preview-page-action.png">
  <img src="{{site.url}}/assets/images/killing-the-page-action-api-in-firefox-manifest-v3-is-a-mistake/feed-preview-page-action.png" alt="Firefox address bar with Feed Preview icon"/>
    	</picture>
  <figcaption>The Feed Reader RSS icon appears only when feeds are discovered on the current page</figcaption>
</figure>
</p>

Like Extension source viewer, this only works on certain pages - not every page has an RSS or Atom feed, and having a toolbar icon that is greyed out half the time would be a waste of space (during the times that it was greyed out).

Beyond that, the extension is completely unobtrusive and integrates within the Firefox UI. In fact, the feed icon appears exactly where it used to appear in [older Firefox versions](https://en.wikipedia.org/wiki/File:Firefox_3.png).

### Pinning to Overflow?

You may be screaming at your display (or on social media) right now, saying "but you can pin toolbar icons for browser actions!". 

Yes, that is true - except that I already have a bunch of extensions in my toolbar overflow menu - including built-in browser features like "Screenshot" (that ironically used to be available as a page action).

I use the overflow menu to hide extensions of a few different categories:

1. **Extensions that don't have a badged status.** If you use extensions like Bitwarden, you know that extensions can use badges to indicate status. In Bitwarden, the badge indicates how many saved logins you have available for the current domain. On the other hand, the badge on uBlock Origin shows the number of blocked requests on a page. 
2. **Extensions that I use rarely but will seek out.** A prime example of an extension that fits this use-case is **[Go to Sound Tab](https://addons.mozilla.org/firefox/addon/go-to-sound-tab/)**. I don't need this extension as an omnipresent icon in my browser window - generally, if audio is playing, it is from a video in a foreground tab. This extension is useful for the rarer occurrence where a page begins spontaneously playing audio - or when I want to find the tab that is playing a liveset I am listening to -- perhaps to go back a few minutes.

There are bigger issues, though.

Let's go back to the Feed Preview extension. Imagine I go to a page that doesn't have a feed, but I want to subscribe to it in my feed reader. I had previously pinned it to my toolbar overflow menu, because it is a feature that I use rarely but will seek out. 

But alas, there is no feed available 😧!

That experience is worse than having the toolbar icon be omnipresent but greyed out. While I had previously hidden the icon, if I had kept it visible, I would have seen that the icon was greyed out before trying to access the overflow menu. But then I would have had to have the icon there on the toolbar all the time 😠! 

In Firefox today, that isn't an issue. The RSS icon appears in the address bar when a feed is available, and I don't need to preemptively hide icons from any toolbar to prevent visual clutter.

### Discoverability

Discoverability is really where page actions excel in comparison to browser actions. The way I think about the difference between the two is that a `page_action` and its features are contingent on the page I am viewing, whereas `browser_action` features are applicable to all pages - or just to the browser itself. 

This divison is very elegant in Firefox - even for built in page actions. The bookmark star for example, both **applies to the current page**, and shows its **status** - if it is filled in, I have already bookmarked the page. The same applies to the Reader View icon - it only appears when Firefox is able to show the current page in its reader view. [Back in 2008](https://www.cnet.com/reviews/firefox-3-review/), the RSS icon *also* appeared in the location bar.

Way back then, Mozilla could have simply added an omnipresent toolbar button instead of adding an icon to the address bar. However, the design that was chosen made it so that the *presence of the icon* aided discovery of the feature. 

We can think of this a little bit like the [indicators](https://support.apple.com/en-us/HT211876) that appear on screen when your microphone or camera is being used by an app. Would it have made sense to have the indicators be omnipresent and be greyed out 95% of the time? Perhaps, but that increases visual clutter, and likely serves to be more confusing than to aid discovery. 

### Competitiveness

This is an area where Firefox demonstrates differentiation with competitors through its richer UI configuration (if this sounds familiar, it is because I used the same phrase in arguing for Firefox's [compact density option]({% post_url 2021-03-18-supporting-compact-mode-in-firefox-proton %})). 

The current Firefox feature is better than what exists in Chrome today, even after the removal of the Photon overflow menu. In Chrome, adding new page actions *always* adds a new toolbar icon, increasing UI clutter. In Chrome, page actions cannot hide themselves, they are instead greyed out - which does nothing for clutter. 

## This is a Mistake

My feeling is that Mozilla has a lot to do to support Manifest V3 - and they are likely focused on achieving parity with it to ensure that developers can do everything that they can do in other browsers - it is important to not fall behind. 

Mozilla *has* diverged from Manifest V3 in important ways - like with [WebRequest](https://blog.mozilla.org/addons/2022/05/18/manifest-v3-in-firefox-recap-next-steps/) - so Mozilla is willing to make tough calls to support additional functionality. 

However, my own feeling is that folks within Mozilla likely see a difference between *functionality* and *UI*. Clearly it is more important that something is functionally *possible*, even if it doesn't have the best UI or experience.

I might even agree with the decision to not have a great UI in this case, if only we didn't already have a better UX that we've already experienced and is better than the competition. 

Not only that, the problems that this UI solves can be easily evaluated using real world use-cases - this isn't theoretical stuff in trying to predict user behavior - we *know* that this UI is better than the alternative, and that we can predict that this will definitely be seen as a regression. 

Unlike the past removal of the overflow menu for page actions with the Proton update, I'm not aware of any plans to reduce the need for this functionality. With the overflow menu, other page actions were removed or changed to be present in other areas of the UI. That may not have been desired, but an attempt was made to reduce the need for the removed feature.

There are very good positive reasons to retain page actions. 

Firstly, the feature is already present - the code has been written and extensions are already using it. This doesn't mean that maintenance is free, but it does mean that many of the hurdles have been overcome. 

Secondly, the feature set and what it enables is demonstrably better than what the competition supports. Like WebRequest and the [sidebar API](https://developer.mozilla.org/docs/Mozilla/Add-ons/WebExtensions/API/sidebarAction), Firefox is willing to deviate from what other browsers do in order to enable differentiated experiences. Here, I see page actions much like sidebars - could every sidebar extension be a browser action? Sure, but would *you* want to click a toolbar icon to bring up a **[Tree Style Tab](https://addons.mozilla.org/firefox/addon/tree-style-tab/)** popover each time you wanted to see your open tabs?

When people navigate to pages where page actions are not available, they simply don't appear - which reduces clutter in the UI. Clutter makes UI functions harder to find and use, and reducing it makes applications feel simpler and easier to use. The most underrated feature here may simply be that most page actions will not add icons to a toolbar *most of the time*. Why add an omnipresent icon on the toolbar that is useless 95% of the time?

The fact that page actions appear once they are contextually relevant to the page makes it *good design*.

Lastly, for extension developers already using page actions, migration becomes less of an issue. Less work for extension developers and continuity for people who use the extensions both seem like positives to me.

Page actions work great in Firefox and are better than the alternatives. Do we really want to see people filing bugs in a few months when things get worse? That would be a mistake. Better to prevent the issue entirely by retaining page actions. 

---

Feel free to give me feedback on this post on [reddit](https://www.reddit.com/r/firefox/comments/vgf5h3/killing_the_page_action_api_in_firefoxs_manifest/). 