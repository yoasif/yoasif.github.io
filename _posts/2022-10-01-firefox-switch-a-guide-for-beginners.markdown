---
layout: post
title:  "Firefox Switch: A Guide for Beginners"
date:   2022-10-01 07:07:00 -0400
categories: writing
tags: Firefox
---

Firefox is experiencing a resurgence since the news of Chromium based browsers [weakening ad blocking extensions](https://www.eff.org/deeplinks/2021/12/chrome-users-beware-manifest-v3-deceitful-and-threatening) has hit the public consciousness.

You may be one of the people switching to Firefox, or may be looking to help a family member who is less interested in browsers than you are -- but you want to make sure that they are safe on the web, especially with the rise in [internet scams](https://us.norton.com/blog/emerging-threats/internet-scams). *Beginner* in this page refers to someone who is new to *Firefox* (at least within the last few years). Even if you are an expert, you may still learn something new about Firefox.

* * *

{:toc}
* toc

## Install

As a novice, the most recommended release channel of Firefox is the *release* channel. Hopefully, you already have it installed, but if not, head on over to the [Firefox Download page](https://www.getfirefox.com) to download and install Firefox.

Make sure not to remove your old browser (yet).

## Switch

The first time you run Firefox, an import wizard should pop up. If it does (or it doesn't), follow the steps on Mozilla's site to [import your old browser's data](https://blog.mozilla.org/en/privacy-security/how-to-switch-from-chrome-to-firefox/). If you previously had Firefox installed and want to clean up first, you can [Refresh Firefox](https://support.mozilla.org/kb/refresh-firefox-reset-add-ons-and-settings) instead - reset your settings while keeping your data. You can then follow up to import your old browser data.

## Set up Sync and Mobile Devices

You probably want your Firefox data on the go - bookmarks, logins, sending pages to your other devices - you're going to want to get a Firefox Account and set up Sync on another device (or more).

Check out the help pages on [Sync](https://support.mozilla.org/kb/how-do-i-set-sync-my-computer) and get it set up. Once you are done, you can set up Firefox syncing on your [Android](https://support.mozilla.org/kb/sync-bookmarks-tabs-history-and-passwords-android) ([Google Play](https://play.google.com/store/apps/details?id=org.mozilla.firefox), [FFUpdater](https://f-droid.org/packages/de.marmaro.krt.ffupdater/)) or [iOS](https://support.mozilla.org/kb/sync-bookmarks-logins-and-browsing-history-firefox) ([App Store](https://apps.apple.com/us/app/firefox-private-safe-browser/id989804926)) device.

Unlike other browsers, Firefox Sync is [encrypted with zero-knowledge encryption](https://hacks.mozilla.org/2018/11/firefox-sync-privacy/) - that means that no one but you will see your passwords, or your browsing history. That is unlike most competitors. Just another way that Firefox (and Mozilla) are looking out for you.

## Customizing Settings

Firefox comes with good defaults, and they are chosen to ensure that most people have a satisfactory experience with Firefox. Every Firefox user is going to have a slightly different opinion of whether those defaults are the *best* choices for them - and I'm no different.

We'll go through a couple of changes in the settings - start by navigating to the Settings page, either by navigating to the ☰ menu and clicking **Settings**, or by typing <kbd>about:preferences</kbd> in your address bar and pressing the enter key to navigate to it.

### Open previous windows and tabs

In the *General* section of the preferences, check the **Open previous windows and tabs** checkbox. What this does is restore your opened tabs and windows when you start Firefox the next time you start Firefox after closing it. 

One thing I have learned from beginners using Firefox is that they don't know how to shut down Firefox. No, I'm not kidding 🤪! 

People are used to clicking the ❎ symbol on Firefox windows and wondering where those windows have gone once they restart Firefox. You can prevent this confusion by exiting Firefox via the ☰ menu - click the ☰ menu, then choose **Exit** on Windows or **Quit** on Linux. 

On macOS, you can also use the **Firefox** menu and the **Quit** option.

<p>
	<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-switch-beginners/firefox-quit-macOS.webp,
	          {{site.url}}/assets/images/firefox-switch-beginners/firefox-quit-macOS-2x.webp 2x">
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/firefox-quit-macOS.png,
	  		  {{site.url}}/assets/images/firefox-switch-beginners/firefox-quit-macOS-2x.png 2x">
	  <img src="{{site.url}}/assets/images/firefox-switch-beginners/firefox-quit-macOS.png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/firefox-quit-macOS-2x.png 2x" alt="Firefox menu on macOS with Quit Firefox selected"/>
	  <figcaption>The Quit menu option in Firefox for macOS</figcaption>
	</picture>
</figure>
</p>

The next time you start Firefox, your previously opened windows will be restored.

#### Default Search Engine

Firefox comes with Google as its default search engine in most of the world, and while Google is a good search engine, it is also [one of the biggest players in the online ad industry](https://www.wsj.com/articles/amazon-surpasses-10-of-u-s-digital-ad-market-share-11617703200). You may not want to share your searches with Google, especially if you use other Google services. 

Fortunately, Firefox also comes with a more privacy aware search engine, [DuckDuckGo](https://duckduckgo.com/), which you can default your searches to pretty easily:

1. Go to <kbd>about:preferences</kbd>, or navigate to it by clicking the **&equiv;** button, then selecting **Settings**.
   
2. Navigate to the **Search** section.

3. Under *Default Search Engine*, select **DuckDuckGo** from the dropdown menu.

	<figure>
		<picture>
		  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-privacy-stop-hardening-love-strict-etp/firefox-default-search-engine-duckduckgo.webp,
		  									{{site.url}}/assets/images/firefox-privacy-stop-hardening-love-strict-etp/firefox-default-search-engine-duckduckgo-2x.webp 2x">
		  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-privacy-stop-hardening-love-strict-etp/firefox-default-search-engine-duckduckgo.png,
		  								   {{site.url}}/assets/images/firefox-privacy-stop-hardening-love-strict-etp/firefox-default-search-engine-duckduckgo-2x.png 2x">
		  <img src="{{site.url}}/assets/images/firefox-privacy-stop-hardening-love-strict-etp/firefox-default-search-engine-duckduckgo.png" srcset="{{site.url}}/assets/images/firefox-privacy-stop-hardening-love-strict-etp/firefox-default-search-engine-duckduckgo-2x.png 2x" alt="Firefox Default Search Engine with DuckDuckGo selected and highlighted"/>
		</picture>
	</figure>
	
As with everything else in this guide, this is totally optional, and some people really prefer Google's search results. If you don't like the setting, it is easy to undo, so feel free to come back if you need help with that.

Although this guide recommends the **DuckDuckGo** search engine, I *don't* recommend **[DuckDuckGo Privacy Essentials](https://addons.mozilla.org/firefox/addon/duckduckgo-for-firefox/)** -- it is fine, but there are better alternatives.

#### Search Suggestions

If you are like most people, you are visiting a lot of  the same sites on a day to day basis. Firefox can help you find the sites you use most often by prioritizing them in the address bar results.

In the *Search* section of the preferences, uncheck the **Show search suggestions ahead of browsing history in address bar results** checkbox. This will make it so that you see your previously visited pages ahead of search suggestions from your default search engine.

<p>
	<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-switch-beginners/search-suggestions.webp,
	          {{site.url}}/assets/images/firefox-switch-beginners/search-suggestions-2x.webp 2x">
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/search-suggestions.png,
	  		  {{site.url}}/assets/images/firefox-switch-beginners/search-suggestions-2x.png 2x">
	  <img src="{{site.url}}/assets/images/firefox-switch-beginners/search-suggestions.png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/search-suggestions-2x.png 2x" alt="Screenshot of Firefox Search Suggestions preferences"/>
	  <figcaption>Search Suggestions preferences</figcaption>
	</picture>
</figure>
</p>

### Compact Density

If you are using a low resolution screen, or you simply prefer to minimize the space taken up by toolbars, you can try out the (unsupported) compact density in Firefox.

You can follow the steps on the [Support Mozilla page](https://support.mozilla.org/kb/compact-mode-workaround-firefox), or if you are okay with using the `about:config` UI, you can:

* set <kbd>browser.compactmode.show</kbd> to **true**
* set <kbd>browser.uidensity</kbd> to <kbd>1</kbd>

<p>
	<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-switch-beginners/firefox-default-density.webp,
	          {{site.url}}/assets/images/firefox-switch-beginners/firefox-default-density-2x.webp 2x">
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/firefox-default-density.png,
	  		  {{site.url}}/assets/images/firefox-switch-beginners/firefox-default-density-2x.png 2x">
	  <img src="{{site.url}}/assets/images/firefox-switch-beginners/firefox-default-density.png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/firefox-default-density-2x.png 2x" alt="Screenshot of Firefox window with toolbars in normal density"/>
	  <figcaption>Firefox with Normal density toolbars, featuring two-line tabs showing media playback status</figcaption>
	</picture>
</figure>
</p>

<p>
	<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-switch-beginners/firefox-compact-density.webp,
	          {{site.url}}/assets/images/firefox-switch-beginners/firefox-compact-density-2x.webp 2x">
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/firefox-compact-density.png,
	  		  {{site.url}}/assets/images/firefox-switch-beginners/firefox-compact-density-2x.png 2x">
	  <img src="{{site.url}}/assets/images/firefox-switch-beginners/firefox-compact-density.png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/firefox-compact-density-2x.png 2x" alt="Screenshot of Firefox window with toolbars in compact density"/>
	  <figcaption>Firefox with Compact density toolbars</figcaption>
	</picture>
</figure>
</p>


## Differences From Your Previous Browser

Sometimes, switching can be challenging. The things you are used to are just slightly different - rearranged to places you may not have thought to look. I'll walk through some of the differences that seem to trip up beginners that are used to different browsers.

### Recently Closed Windows

While Chromium derivative browsers have a single keyboard shortcut for restoring closed tabs and windows (you keep pressing the same shortcut to bring back all of the tabs in closed windows), Firefox has a separate keyboard shortcut for bringing back closed windows.

If you didn't already know the shortcut to restore closed *tabs*, it is:

* <kbd>Control-Shift-T</kbd> on Windows and Linux
* <kbd>⌘-Shift-T</kbd> on macOS

To restore closed *windows* instead, the shortcut is:

* <kbd>Control-Shift-N</kbd> on Windows and Linux
* <kbd>⌘-Shift-N</kbd> on macOS

### Private Browsing Windows (aka Incognito)

If you looked at the previous difference (recently closed windows), you may have noticed that the keyboard shortcut for restoring closed windows in Firefox is the same as the one you might have used to open a new "Incognito" window in Chrome (other browsers may call this something different).

In Firefox, what you might recognize as Incognito mode is known as [Private Browsing](https://support.mozilla.org/kb/private-browsing-use-firefox-without-history), and the windows are called *Private Windows*. To open a Private Window in Firefox, the shortcut is:

* <kbd>Control-Shift-P</kbd> on Windows and Linux
* <kbd>⌘-Shift-P</kbd> on macOS

### Profile Manager

While this isn't really a "beginner" feature, a number of people are using multiple profiles in Chromium browsers, and at first glance, it may seem like they don't exist on Firefox.

Profiles are a way to set up parallel instances of your browser - with separate settings, bookmarks, extensions, logins and themes. The most common way people use them is to separate between their personal setup and their work/school setup. 

Firefox has had profile support since its first versions - and it shows, since it isn't as easy to use as the one in competing browsers. Thankfully, it works and will let you do what you need to do.

#### But First - How Many Profiles Do You Need?

Before we get into the details of setting up a new profile, ask yourself how many profiles you need. If you are like most people and need only two profiles -- like for personal data and for work data, there is an easier way to handle that than to create multiple profiles. 

If two profiles will suffice, I recommend installing a second copy of Firefox - [Firefox *Developer Edition*](https://www.mozilla.org/firefox/developer/). 

<p>
	<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-switch-beginners/macOS-dock-firefox-plus-dev-edition.webp,
	          {{site.url}}/assets/images/firefox-switch-beginners/macOS-dock-firefox-plus-dev-edition-2x.webp 2x">
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/macOS-dock-firefox-plus-dev-edition.png,
	  		  {{site.url}}/assets/images/firefox-switch-beginners/macOS-dock-firefox-plus-dev-edition-2x.png 2x">
	  <img src="{{site.url}}/assets/images/firefox-switch-beginners/macOS-dock-firefox-plus-dev-edition.png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/macOS-dock-firefox-plus-dev-edition-2x.png 2x" alt="Screenshot of macOS dock showing Firefox and Firefox Developer Edition"/>
	  <figcaption>Firefox and Firefox Developer Edition - the Developer Edition icon is blue</figcaption>
	</picture>
</figure>
</p>

Don't let the "developer" name scare you - Firefox Developer Edition is basically a beta version of Firefox that includes some small tweaks to help web developers do their work. While this means that while you may not to use it for mission critical work, it is great for your personal profile. You always have a backup in the release version of Firefox if anything goes wrong, as well.

The setup here is very simple. Just download Firefox Developer Edition and keep your data separate. By default, Firefox and Firefox Developer Edition use different profiles and have different taskbar/dock icons, so they are easy to keep separate. 

If you need more than two profiles, or you can't deal with beta software, you can instead read on to learn about how to create profiles from within Firefox.

#### The about:profiles Profile Manager

The most recent addition to Firefox's profile management features is its in browser profile manager, accessible by navigating to `about:profiles`. 

There is some good [documentation on the profile manager](https://support.mozilla.org/kb/profile-manager-create-remove-switch-firefox-profiles#w_manage-profiles-when-firefox-is-open) - on this page, you can create, manage, and launch profiles.

There are alternatives to this page, but this is what I recommend, especially for beginners (and it is what I use personally).

<p>
	<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-switch-beginners/about-profiles.webp,
	          {{site.url}}/assets/images/firefox-switch-beginners/about-profiles-2x.webp 2x">
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/about-profiles.png,
	  		  {{site.url}}/assets/images/firefox-switch-beginners/about-profiles-2x.png 2x">
	  <img src="{{site.url}}/assets/images/firefox-switch-beginners/about-profiles.png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/about-profiles-2x.png 2x" alt="about:profiles UI showing some available options"/>
	  <figcaption>Screenshot of about:profiles showing a single profile</figcaption>
	</picture>
</figure>
</p>

If you are running Windows, you may want to see your profiles in separate icons in the taskbar. To accomplish this, set <kbd>taskbar.grouping.useprofile</kbd> to **true** in `about:config`.

You can vote for a [friendlier profile management UI](https://connect.mozilla.org/t5/ideas/shortcut-for-different-profiles/idi-p/707) on Mozilla Connect.

## Features You May Not Know About

Firefox has been around a long time, but if you haven't used it in a while (or ever), you may not know about some of its best features. While competing browsers continue to borrow features from Firefox, keep reading for some of the best features that you may not have seen before.

### Screenshots

Being able to [take screenshots](https://support.mozilla.org/kb/take-screenshots-firefox) may seem like a pretty basic feature, but other browsers don't usually make it too easy. Sure, you can take a screenshot of your browser window - but how about a picture of a table, or a specific section of a page -- or even the full page? 

I use this feature all the time to keep records of things like order confirmations, or times when I want to save a specific part of a page.

To use it, context-click on a page and select the *Take Screenshot* option. You can also add a button to your toolbar. 

<p>
	<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-switch-beginners/take-screenshot-contextual-menu.webp,
	          {{site.url}}/assets/images/firefox-switch-beginners/take-screenshot-contextual-menu-2x.webp 2x">
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/take-screenshot-contextual-menu.png,
	  		  {{site.url}}/assets/images/firefox-switch-beginners/take-screenshot-contextual-menu-2x.png 2x">
	  <img src="{{site.url}}/assets/images/firefox-switch-beginners/take-screenshot-contextual-menu.png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/take-screenshot-contextual-menu-2x.png 2x" alt="Screenshot of Firefox macOS contextual menu with Take Screenshot highlighted"/>
	  <figcaption>The Take Screenshot menu option in Firefox for macOS</figcaption>
	</picture>
</figure>
</p>

After that, you can choose to save a rectangular selection, the currently visible part of the page, or the whole page.

<p>
	<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-switch-beginners/firefox-take-screenshot.webp,
	          {{site.url}}/assets/images/firefox-switch-beginners/firefox-take-screenshot-2x.webp 2x">
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/firefox-take-screenshot.png,
	  		  {{site.url}}/assets/images/firefox-switch-beginners/firefox-take-screenshot-2x.png 2x">
	  <img src="{{site.url}}/assets/images/firefox-switch-beginners/firefox-take-screenshot.png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/firefox-take-screenshot-2x.png 2x" alt="Screenshot of Firefox taking a screenshot"/>
	  <figcaption>Take a Screenshot options</figcaption>
	</picture>
</figure>
</p>

There's even a nice keyboard shortcut if you take screenshots often:

* <kbd>Control-Shift-S</kbd> on Windows and Linux
* <kbd>⌘-Shift-S</kbd> on macOS

### The AwesomeBar (Address Bar and Search)

The AwesomeBar is the name that Mozilla affectionately [called the Firefox address bar back in 2008](https://blog.mozilla.org/en/mozilla/a-little-something-awesome-about-firefox-3/) -- and for good reason, as the Firefox address bar remains awesome today. 

#### Search Alternatives

Firefox comes with a few built in search engines, like Wikipedia, Google, Amazon and eBay. While a search engine like Google is good at general queries, Wikipedia is good for encyclopedic searches, and Amazon and eBay are good for shopping.

Firefox makes it really easy to [search on a search engine that isn't your default](https://support.mozilla.org/kb/change-your-default-search-settings-firefox#w_one-click-search-alternatives) - as you are doing your search, before, during, or after typing your query. 

If you know you are searching eBay before typing your search query, you can type <kbd>@ebay</kbd> and your search. If you decide that you want to search eBay after you type your query, you can <kbd>Tab</kbd> to the eBay icon, or click on the eBay icon below your search suggestions.

This is an incredibly powerful and useful feature that saves you the time of heading to your primary search engine and searching for "ebay shoes" - or whatever your query might be.

<p>
	<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-switch-beginners/firefox-search.webp,
	          {{site.url}}/assets/images/firefox-switch-beginners/firefox-search-2x.webp 2x">
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/firefox-search.png,
	  		  {{site.url}}/assets/images/firefox-switch-beginners/firefox-search-2x.png 2x">
	  <img src="{{site.url}}/assets/images/firefox-switch-beginners/firefox-search.png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/firefox-search-2x.png 2x" alt="Screenshot of Firefox with eBay selected as a non-default search engine"/>
	  <figcaption>Shopping for a new watch on eBay, skipping a more general search engine</figcaption>
	</picture>
</figure>
</p>

#### Changing What the Address Bar Shows On the Fly

The awesomebar becomes really awesome when you being using "restriction tokens" to [control what results the address bar shows you](https://support.mozilla.org/kb/address-bar-autocomplete-firefox#w_changing-results-on-the-fly). That sounds complicated, but it is *addictive* once you get the hang of it. Basically, you can type a certain character before your search to tell Firefox what to show you. 

In the screenshot below, I typed <kbd>*</kbd> and space to show me results from my bookmarks. 

<p>
	<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-switch-beginners/searching-bookmarks.webp,
	          {{site.url}}/assets/images/firefox-switch-beginners/firefox-searching-bookmarks-2x.webp 2x">
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/firefox-searching-bookmarks.png,
	  		  {{site.url}}/assets/images/firefox-switch-beginners/firefox-searching-bookmarks-2x.png 2x">
	  <img src="{{site.url}}/assets/images/firefox-switch-beginners/firefox-searching-bookmarks.png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/firefox-searching-bookmarks-2x.png 2x" alt="Screenshot of Firefox searching bookmarks"/>
	  <figcaption>Searching within my bookmarks</figcaption>
	</picture>
</figure>
</p>

One of the other restriction tokens I use *all the time* is <kbd>%</kbd> to search my open tabs - it makes it so I don't have to waste any mental energy or time to organize my tabs - I can just search for it, like I would on a search engine. Who needs hierarchies or groups?

The complete list of tokens are:

* <kbd>^</kbd> to show only matches in your browsing history.
* <kbd>*</kbd> to show only matches in your bookmarks.
* <kbd>+</kbd> to show only matches in bookmarks you've tagged.
* <kbd>%</kbd> to show only matches in your currently open tabs.
* <kbd>#</kbd> to show only matches where every search term is part of the title or part of a tag.
* <kbd>$</kbd> to show only matches where every search term is part of the web address (URL). The text “https://” or “http://” in the URL is ignored, but not “file:///”.
* <kbd>?</kbd> to show only search suggestions. 

### Picture-in-Picture & Multi-PiP

[Picture-in-Picture](https://support.mozilla.org/kb/about-picture-picture-firefox) is something you may remember from your TV, and the idea in Firefox is similar - pop out a video from a web page so that you can continue working in another tab -- while continuing to watch the video.

This feature can be really useful if you want to watch a lecture while following along, or just to watch music videos while browsing the web. 

When you load a video, Firefox overlays a PiP toggle over the video:

<p>
	<figure>
	<picture>
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/pip-icon.png">
	  <img src="{{site.url}}/assets/images/firefox-switch-beginners/pip-icon.png" alt="Picture-in-Picture icon"/>
	  <figcaption>Picture-in-Picture icon</figcaption>
	</picture>
</figure>
</p>

<p>
	<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-switch-beginners/youtube-with-PiP-icon.webp,
	          {{site.url}}/assets/images/firefox-switch-beginners/firefox-multi-PiP-2x.webp 2x">
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/youtube-with-PiP-icon.png,
	  		  {{site.url}}/assets/images/firefox-switch-beginners/youtube-with-PiP-icon-2x.png 2x">
	  <img src="{{site.url}}/assets/images/firefox-switch-beginners/firefox-multi-PiP.png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/firefox-multi-PiP-2x.png 2x" alt="Screenshot of Firefox on YouTube with a PiP icon overlaid on the right side of a video"/>
	  <figcaption>YouTube <a href="https://www.youtube.com/watch?v=hQX7Zub0ZdI" title="HOME - We're Finally Landing">video</a> showing a Picture-in-Picture icon on the right</figcaption>
	</picture>
</figure>
</p>

This feature is great on its own, but Firefox has more recently added caption support for many video players around the web, and it also has Multi-PiP - which lets you pop out more than one video.

My brother uses this all the time to watch several live sports at once on many nights - it can be a game changer. 

<p>
	<figure>
<a href="{{site.url}}/assets/images/firefox-switch-beginners/firefox-multi-PiP-2x.png">
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-switch-beginners/lossy/firefox-multi-PiP.webp,
	          {{site.url}}/assets/images/firefox-switch-beginners/lossy/firefox-multi-PiP-2x.webp 2x">
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/firefox-multi-PiP.png,
	  		  {{site.url}}/assets/images/firefox-switch-beginners/firefox-multi-PiP-2x.png 2x">
	  <img src="{{site.url}}/assets/images/firefox-switch-beginners/firefox-multi-PiP.png" srcset="{{site.url}}/assets/images/firefox-switch-beginners/firefox-multi-PiP-2x.png 2x" alt="Screenshot of macOS desktop with multiple PiP videos"/>
	</picture>
</a>
	  <figcaption>Watch (and listen) to a music video, while watching a spoken word video with captions</figcaption>
</figure>
</p>

## Staying Safe on the Web (Ad Blocking)

One of the reasons you may be giving Firefox a look *now* is that competing browsers are working to weaken ad blockers on the web. There has been a lot of articles about the situation, and the [EFF has a good summary of what is happening](https://www.eff.org/deeplinks/2021/12/googles-manifest-v3-still-hurts-privacy-security-innovation). In short, Chromium browsers (that includes most browsers - including major names like Google Chrome and Microsoft Edge) are dropping "blocking webRequest", a feature that enables browser based ad blockers to effectively disable the worst offenses of online scams and advertising. Safari has never had this feature, unfortunately. 

Currently, the best (fastest, most effective) browser based ad blocker is [uBlock Origin](https://addons.mozilla.org/firefox/addon/ublock-origin/), which *already* [works best in Firefox](https://github.com/gorhill/uBlock/wiki/uBlock-Origin-works-best-on-Firefox). The developer of uBlock Origin has [raised the alarm about the changes in Chromium](https://github.com/uBlockOrigin/uBlock-issues/issues/338#issuecomment-1253893421) and how they will weaken uBlock Origin.

Competing browsers insist that they can stay ahead of the changes in Chromium by simply building in ad blocking into their browsers. Unfortunately, the effectiveness of those solutions pale in comparison to what is available in Firefox + uBlock Origin today and into the future. 

The choice is clear - if you want the best ad blocking available, you want Firefox.

I will note that I actually prefer a more measured approach to web safety and annoyance blocking - but this is a guide for beginners, and so I am including the simplest and easiest solution possible. If you consider yourself to be more advanced, I detail my own setup in an earlier post: [How I Learned to Stop Hardening and Love Strict Tracking Protection]({% post_url 2021-07-26-firefox-privacy-stop-hardening-love-strict-etp %}).

## Troubleshooting

There shouldn't be a need for extensive troubleshooting - and I'm not going to include instructions here. There's a <a href="https://www.reddit.com/r/firefox/">good community on reddit</a> that you can visit with specific questions. 

However, there are two things that come up often that it is worth detailing. 

### Video Playback

There are various reasons why your operating sysem may not include non-royalty-free, patented video codecs. If you find that your copy of Firefox doesn't play video, you can reolve that issue by installing the codecs:

* [Windows](https://support.mozilla.org/kb/fix-video-audio-problems-firefox-windows)
* [Ubuntu](https://help.ubuntu.com/community/RestrictedFormats)
* Other Linux - consult your distribution's documentation

### webcompat

If you come across a site that doesn't work as expected in Firefox, but it works in other browsers, you may be seeing a web compatibility issue. 

Most of the time, these issues are caused by web developers not testing their sites on Firefox, but sometimes, they are Firefox issues. You can report issues to [webcompat](https://webcompat.com/) if you run into sites that don't work as expected. 

Before you report an issue, try to do a little investigation on your own - like testing to see if the issue happens in a [new profile](https://support.mozilla.org/kb/profile-manager-create-remove-switch-firefox-profiles#w_manage-profiles-when-firefox-is-open). If the issue happens in a fresh profile, you may have something worth investigating - help make the web better by reporting the issue.

---

Feel free to give me feedback on this post on [reddit](#). 