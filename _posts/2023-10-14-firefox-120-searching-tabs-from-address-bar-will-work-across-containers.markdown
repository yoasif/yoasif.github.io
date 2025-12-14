---
layout: post
title:  "Firefox 120: Searching Tabs in the Address Bar Will Work Across Containers"
date:   2023-10-14 11:21:00 -0400
categories: writing
tags: Firefox Chrome
---

I was once told that Firefox users don't always do enough to celebrate the small wins. Here's something that I consider to be a big one, but might not be interesting for most people (unless you learned about the [awesomebar from my Firefox switch guide]({% post_url 2022-10-01-firefox-switch-a-guide-for-beginners %}#changing-what-the-address-bar-shows-on-the-fly)).

--- 

One of the ways that Firefox is awesome is its "awesomebar", the name that Mozilla gave to the address bar in Firefox in 2008. 

As I said in my previous post, you can use "restriction tokens" to [control what results the address bar shows you](https://support.mozilla.org/kb/address-bar-autocomplete-firefox#w_changing-results-on-the-fly). 

>One of the other restriction tokens I use *all the time* is <kbd>%</kbd> to search my open tabs - it makes it so I don't have to waste any mental energy or time to organize my tabs - I can just search for it, like I would on a search engine. Who needs hierarchies or groups?

Well, this worked great for many years -- but with the introduction of containers, a new wrinkle appeared. During the development of containers, developers decided that the [Awesomebar shouldn't force switching to a tab in a different container](https://bugzilla.mozilla.org/show_bug.cgi?id=1287866).

Eventually, as people started using containers in Firefox via the extension and native functionality, people began running into this issue -- I might be in a "work" container, but I want to quickly switch to a tab outside of my work context -- the <kbd>%</kbd> restriction token no longer helps me do that, since the address bar doesn't show me the tabs outside of my current container. 

Eventually, [Steve Fink reported this as a bug in 2018](https://bugzilla.mozilla.org/show_bug.cgi?id=1479858), and as of today, there is a workaround (basically a fix)!

## How to Enable Tab Switching Across Containers

1. Navigate to `about:config` in your browser. Read the warning and continue.
2. Search for <kbd>browser.urlbar.switchTabs.searchAllContainers</kbd> and set it to **true** by clicking the "Toggle" icon beside the search result.
3. You're done! You don't need to restart to enable this.

Thanks to [atararx](https://bugzilla.mozilla.org/user_profile?user_id=730518) and [Marc Seibert](https://bugzilla.mozilla.org/user_profile?user_id=725240) for landing this fix. 🙌

---

{% include donate.html %} Feel free to give me feedback on this post on [Kbin](https://fedia.io/m/firefox/t/352554/Firefox-120-Searching-Tabs-in-the-Address-Bar-Will-Work). You can also message me on [Mastodon](https://mastodon.social/@yoasif).