---
layout: post
title:  "r/firefox Monthly Wrap-Up - July 2022"
date:   2022-08-10 05:26:00 -0400
categories: writing
tags: Firefox reddit wrap-up
---

There are a lot of fun things posted on [r/firefox](https://www.reddit.com/r/firefox/) every month, but if you don't visit often, you might miss some things. 

This is the third post of a (hopefully) monthly post that tries to distill the best of that forum (in my opinion) over the last month. I'm totally open to feedback, so please let me know what you think.

Unlike some past months, the sub-reddit was relatively quiet - must be due to the summer season in the northern hemisphere.

* * *

## Highlights

### Firefox 103 Was Released

[Firefox 103 was released](https://www.reddit.com/r/firefox/comments/w8kjli/firefox_1030_see_all_new_features_updates_and/) last month, and unfortunately, most of the discussion about it seemed to revolve around the "Make text bigger" Windows setting being applied to the UI and content of Firefox. 

Other highlights include:

* Required fields are now highlighted in PDF forms.
* Fixed WebGL performance issues on NVIDIA binary drivers via DMA-Buf on Linux.
* Improved performance on [high-refresh rate monitors (120Hz+)](https://bugzilla.mozilla.org/show_bug.cgi?id=1771718 "Tweak idle scheduling to support high frame rates better").
* The [backdrop-filter](https://developer.mozilla.org/en-US/docs/Web/CSS/backdrop-filter) property (which can be used to apply graphical effects such as blurring or color shifting to the area behind an element) is now available by default.

#### Make Firefox Ignore Windows "Make Text Bigger" Setting

There seem to be many Firefox users on r/firefox that have Windows scaling enabled, but don't want Firefox to respect that scaling setting. Strange to me, but there was enough consternation for me to want to point out how to make Firefox ignore that change.

To revert the change, follow these steps;

1. Go to <kbd>about:config</kbd> in Firefox. Accept the risk to continue. 
2. Type <kbd>ui.textScaleFactor</kbd> into the search box that appears.
3. Three radio buttons will appear - *Boolean*, *Number*, and *String*
4. Click the radio button next to **Number** and click the **+** button on the far right.
5. Type **100** in the text box that appears, then click the check mark (☑) that appears.

Firefox developers are exploring whether to expose the OS zoom features in the Firefox preferences UI, and [explain some of the other zoom options](https://bugzilla.mozilla.org/show_bug.cgi?id=1782287#c0) in that bug.

ecobos [explains a bit more about the rationale](https://www.reddit.com/r/firefox/comments/w9gubj/firefox_103_toolbar_icon_sizes/ii10slx/?context=3) behind the feature. I agree that it is perfectly reasonable and indeed, expected -- it was already the default behavior in Linux, for example. Personally, I am amused that people don't realize that Windows is scaled (often out of the box).

Unfortunately, I believe that this may be a blind spot for both users and developers/designers/product folks - as I mentioned in my [first post on this blog]({% post_url 2021-03-18-supporting-compact-mode-in-firefox-proton %}#appendix-research): "effective display resolutions may be smaller than physical resolutions due to [display scaling](https://docs.microsoft.com/en-us/archive/blogs/askcore/display-scaling-in-windows-10 "Display Scaling in Windows 10") at the operating system level, configured by PC vendors." I won't belabor the point here, but suffice it to say that scaling is a blind spot on Windows devices -- yet another one of Microsoft's often puzzling design decisions.

## 🧩 Add-ons

z0ccc_z0ccc [shared](https://www.reddit.com/r/firefox/comments/vqoges/browser_extension_that_lets_you_view_the_reddit/) their new, open source extension allowing people to view the reddit comments of YouTube videos (and also *any* web page). [**Upvote Anywhere**](https://addons.mozilla.org/firefox/addon/upvote-anywhere/) shows reddit comments where YouTube comments would appear. Additionally, the extension can be configured to turn the toolbar icon red when it detects that the page you are on has been submitted to reddit. I haven't tried this on Android - if there is interest, I can give it a shot.

## ✊ Take Back the Web 🌐

jamesphw posted about their credit card company (MBNA Canada) announcing that as of August 1st, [Firefox would be banned from the online banking site](https://www.reddit.com/r/firefox/comments/w2yih8/just_got_this_notice_from_my_bank_no_more_firefox/). At over 650 upvotes, the community is *not* happy about the situation. 

tempMonero123 [suggested](https://www.reddit.com/r/firefox/comments/w2yih8/just_got_this_notice_from_my_bank_no_more_firefox/igu5r2x/) closing the account with the feedback that "I'm closing my account because your IT department is too underpaid or incomptetent to ensure your website works with industry-standard web browsers, that I'm afraid the bank's security is just as fragile." OctaviaPinfold [echoed that sentiment](https://www.reddit.com/r/firefox/comments/w2yih8/just_got_this_notice_from_my_bank_no_more_firefox/igtgv7i/), saying "If they aren't even hiding cutting corners with their client-facing applications, you can only imagine what's going on in the background."

dotancohen shared that they [*had* changed banks in 2011](https://www.reddit.com/r/firefox/comments/w2yih8/just_got_this_notice_from_my_bank_no_more_firefox/igvvibv/) when their bank started blocking Firefox. 

>It took me about an hour of my time to open a new account, and another hour to close the old one and make clear the reason why.
>
>You could say that I overreacted, but honestly I had nothing else to do that day and I'm glad I stood up for something important to me. I also made sure that the new bank supports (i.e. doesn't block... web standards don't require "supporting" anything) Firefox and my banker has this written in my file as the reason I moved to this bank so that we'll have pushback if this bank ever tries the same stunt.

wisniewskit asked people to [post on webcompat](https://www.reddit.com/r/firefox/comments/w2yih8/just_got_this_notice_from_my_bank_no_more_firefox/igtg628/) if a user-agent spoof "fixes" the block.

Personally, I was annoyed enough to post about it here, along with some suggestions for some [alternatives to MBNA Canada cards]({% post_url 2022-07-19-MBNA-stops-supporting-firefox-in-august-best-alternatives-to-their-credit-cards %} "MBNA Stops Supporting Firefox in August - Best Alternatives to Their Credit Cards").

I checked in with jamesphw since it is now past August 1st, and somehow, they have not yet blocked Firefox, although the message continues to appear. Who knows, maybe they will back off.

## 🙌 Uplifting Posts

fsau posted to help bring [visibility to people's favorite ideas on Mozilla Connect](https://www.reddit.com/r/firefox/comments/w8qsp2/lets_rally_for_the_best_ideas_to_improve_firefox/). It is great to see them rallying people to be more involved in official Mozilla fora to lobby for the improvements they want to see in Firefox.

## 🐛 Bugs and Issues

### New

* ararezaee posted about [a maximized Firefox window causing the Windows taskbar to not appear when taskbar auto-hide is enabled](https://www.reddit.com/r/firefox/comments/w8loef/i_reported_a_bug_about_a_month_ago_a_bug_which/). While they had [filed a bug](https://bugzilla.mozilla.org/show_bug.cgi?id=1777136 "Maximized Firefox goes over taskbar set to auto hide on windows"), they also posted for some additional help. After a mozregression run, ararezaee found that the issue first appeared in Firefox 68. panoptigram [suggested](https://www.reddit.com/r/firefox/comments/w8loef/i_reported_a_bug_about_a_month_ago_a_bug_which/ihu9nbo/) setting <kbd>browser.launcherProcess.enabled</kbd> to **false** -- which worked around the issue. Firefox developers discovered that the regression was introduced by [bug 1543807](https://bugzilla.mozilla.org/show_bug.cgi?id=1543807 "Launcher process should no longer depend on studies as of 68"). Investigation continues here.

### Known

* yo_99 [rediscovered](https://www.reddit.com/r/firefox/comments/w43t9u/how_do_i_view_source_on_mobile/) that Firefox on Android doesn't have an affordance for viewing page source. The request is [tracked](https://github.com/mozilla-mobile/fenix/issues/3710 "View Page Source option"), but can be worked around by prepending <kbd>view-source:</kbd> before the URL. 
* DavidW273 rediscovered that [Firefox on Android doesn't have a way to import bookmarks from a file](https://www.reddit.com/r/firefox/comments/w22ijn/ive_made_the_switch_on_android_how_on_earth_do_i/). I had filed a [request for this](https://github.com/mozilla-mobile/fenix/issues/417 "Import/Export bookmarks to local fileystem") back in 2019 - unfortunately, this has not been prioritized yet.

### Fixed

* Gnash_ [posted](https://www.reddit.com/r/firefox/comments/w8kjli/firefox_1030_see_all_new_features_updates_and/ihuor8t/) about a bug on macOS where opening a Picture in Picture window from a full screen window would result in a full screen Picture in Picture window. I [filed this bug](https://bugzilla.mozilla.org/show_bug.cgi?id=1781830 "PiP is fullscreen when launched from a full screen window") (since I was able to reproduce it), and the regressing code was [rolled back in a point release](https://www.mozilla.org/en-US/firefox/103.0.2/releasenotes/).

## 🌃 Nightly

* Firefox developer primsnapper announced that [OffscreenCanvas is now enabled by default on Nightly](https://www.reddit.com/r/firefox/comments/vxb75i/psa_offscreencanvas_now_enabled_by_default_on/). While it has been shipped on release on Zoom domains for a while, the team believes it is ready for more exposure. File [bugs](https://bugzilla.mozilla.org/show_bug.cgi?id=1390089) if you experience any!

---

Feel free to give me feedback on this post on [reddit](https://www.reddit.com/r/firefox/comments/wktjke/rfirefox_monthly_wrapup_july_2022/?). 