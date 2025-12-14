---
layout: post
title:  "The Reason the List all tabs Button is Permanent is Because of Firefox View"
date:   2024-10-02 08:48:00 -0400
categories: social posts
tags: Firefox
redirect_from: /writing/2024/10/02/the-reason-the-list-all-tabs-button-is-permanent-is-because-of-firefox-view.html
image: /assets/images/social-previews/firefox.png

---

(I would generally be inclined to post something like this post to social media, but I recently read [Molly White's](https://www.mollywhite.net/)) post on [POSSE](https://www.citationneeded.news/posse/), so… here we are.)

---

[Firefox 131 is out](https://www.mozilla.org/en-US/firefox/131.0/releasenotes/), and with it arrives a change to the [Tab overview](https://support.mozilla.org/en-US/kb/tab-overview-menu) menu: "a new, refreshed icon".

<p>
	<figure>
	<picture>
	  <img src="{{site.url}}/assets/images/firefox-view-opentabs.svg" alt="A picture depicting the Tab Overview icon in Firefox 131" height="128" width="128"/>
	  <figcaption>The Tab overview icon in Firefox 131</figcaption>
	</picture>
</figure>
</p>

There has been [some](https://www.reddit.com/r/firefox/comments/1fuh1x4/how_to_remove_this_new_list_all_tabs_icon/) [outcry](https://www.reddit.com/r/firefox/comments/1ftrgkm/cant_hide_list_all_tab_botton_in_131) on social media, since the redesign came with an undesirable change for some - the button is [no longer able to be hidden by default](https://bugzilla.mozilla.org/show_bug.cgi?id=1916622). 

I am an inveterate tab hoarder, so the (continued) appearance of this button didn't bother me a bit - but I wanted to understand *why* the ability to hide the button was being removed -- and whether a contributor could bring it back.

After some digging, I found that the reason the tab overview was initially made always visible (rather than in response to many tabs being opened, or an extension hiding tabs) [was due to Firefox View](https://bugzilla.mozilla.org/show_bug.cgi?id=1786011#c0):

>Normally, the button appears when tabs overflow, but because of said feature, having hidden tabs makes it show up as well. So what's happening here is that because Firefox View is using a hidden tab, opening it suddenly shows the "List all tabs" button at the end of the tab strip.

...

>I think the most straightforward solution or improvement we can make here is to set browser.tabs.tabmanager.enabled = true, that is, show the "List all tabs" button always and unconditionally.

### Update

I got feedback that the immediate reason (which seems previously undocumented) is to [deal with](https://bugzilla.mozilla.org/show_bug.cgi?id=1918681#c6) "add-ons hiding tabs that could be malicious or that don't provide a good UI for re-showing tabs":

>From my perspective, the main thing stopping us from allowing users to remove the button is that it contains the hidden tabs sub menu, which is sort of a stop-gap solution for add-ons hiding tabs that could be malicious or that don't provide a good UI for re-showing tabs. It's a safeguard for a theoretical concern, that in practice shouldn't get much usage (which is often part of the nature of a safeguard). Note that disabling/uninstalling such add-ons re-shows hidden tabs too. I wouldn't be opposed to allowing users to remove the button if add-ons and Product folks think the risk is acceptable.

---

{% include donate-social.html %} You can also message me on [Mastodon](https://mastodon.social/@yoasif).