---
layout: post
title:  "r/firefox Monthly Wrap-Up - May 2022: Firefox 100!"
date:   2022-06-01 02:30:00 -0400
categories: writing
tags: Firefox reddit wrap-up
---

There are a lot of fun things posted on [r/firefox](https://www.reddit.com/r/firefox/) every month, but if you don't visit often, you might miss some things. 

This is the inaugural post of a (hopefully) monthly post that tries to distill the best of that forum (in my opinion) over the last month. I'm totally open to feedback, so please let me know what you think.

Without further ado, let's jump in!

* * *

## Highlights

### 🎉 Firefox 100 was Released!

17 years after the first version of Firefox, we're at 100 versions. You can take a look at the complete [release notes](https://www.mozilla.org/firefox/100.0/releasenotes/) for everything that was changed. 

Some of the features that got reddit users excited are: [HTTPS-only mode for Firefox on Android](https://www.reddit.com/r/firefox/comments/ugvs6y/firefox_100_is_coming_to_us/i72vg5j/), being able to select [preferred color schemes for websites and its menus](https://www.reddit.com/r/firefox/comments/umbyvh/this_feature_is_pretty_good/), improved [process isolation in Windows](https://www.reddit.com/r/firefox/comments/uo5s9b/hacksmozillaorg_improved_process_isolation_in/) (aka Win32k Lockdown), overlay scrollbars on [Linux](https://www.reddit.com/r/firefox/comments/uhe0yz/firefox_100_is_released/i75bkwn/) and [Windows 11](https://www.reddit.com/r/firefox/comments/uhe0yz/firefox_100_is_released/i75wogs/), and improved [performance on various sites](https://www.reddit.com/r/firefox/comments/uhe0yz/firefox_100_is_released/i75ta84/).

### Total Cookie Protection Testing (for Standard ETP)

At 818 net votes, the r/Firefox community seems *very* interested in the [new Total Cookie Protection](https://www.reddit.com/r/firefox/comments/utt5kx/new_total_cookie_protection/) test. wisniewskit dropped by to answer some questions about it, including [explaining](https://www.reddit.com/r/firefox/comments/utt5kx/new_total_cookie_protection/i9cczo7/) that while this has been available as an option since [Firefox 86](https://blog.mozilla.org/security/2021/02/23/total-cookie-protection/), Mozilla is hoping to enable it by default for all Firefox users. 

Under the hood, opting into Total Cookie Protection in this test sets `network.cookie.cookieBehavior` to **5**, which [rejects (known) trackers and partitions third-party storage](https://developer.mozilla.org/docs/Web/Privacy/State_Partitioning#disable_dynamic_state_partitioning).

It is exciting to see this valuable privacy feature nearing universal release!

## 🧩 Add-ons

There were plenty of discussions of add-ons in the last month. 

* ClassCusername [shared](https://www.reddit.com/r/firefox/comments/uxc7gk/consentomatic_a_firefox_addon_that_blocks_based/) an open source add-on that automatically answers cookie pop-ups based on your preferences. [Consent-O-Matic](https://addons.mozilla.org/firefox/addon/consent-o-matic/) is a cool idea, and I installed it to try it out.
* [ademkingTN](https://www.reddit.com/user/ademkingTN) showed up in a [post](https://www.reddit.com/r/firefox/comments/uoubin/betterviewer_is_an_incredible_addon_for_viewing/) about his open-source add-on, [BetterViewer](https://addons.mozilla.org/firefox/addon/betterviewer/), which adds features to the image viewer built into browsers. Adem [plans to support Firefox for Android](https://www.reddit.com/r/firefox/comments/uoubin/betterviewer_is_an_incredible_addon_for_viewing/i8naosx/) -- exciting! 
*  SarcasticGrin [shared](https://www.reddit.com/r/firefox/comments/ujlg3z/an_ff_extension_to_make_youtube_shorts_play_as/) a very simple redirector add-on to [make YouTube shorts play using the standard YouTube video player](https://addons.mozilla.org/firefox/addon/redirect-shorts-to-youtube/).

## ✊ Take Back the Web 🌐

[Alaina Yee](https://twitter.com/morphingball) at PCWorld wrote a very nice article with [8 reasons to ditch Chrome and switch to Firefox](https://www.reddit.com/r/firefox/comments/uybeei/8_reasons_to_ditch_chrome_and_switch_to_firefox/). 

* Unwashed_villager noted that one of the best reasons to switch (not referenced in the article) is the [much better font rendering](https://www.reddit.com/r/firefox/comments/uybeei/8_reasons_to_ditch_chrome_and_switch_to_firefox/ia37pq0/) on Windows and Linux.
* hasbro-elephan pointed out that [uBlock Origin works best on Firefox](https://www.reddit.com/r/firefox/comments/uybeei/8_reasons_to_ditch_chrome_and_switch_to_firefox/ia3b6ot/).

This may not end up going anywhere, as it is based on leaks, but *The Register* says that [Apple's grip on iOS browser engines [will be] disallowed under latest draft EU rules](https://www.reddit.com/r/firefox/comments/urlayr/apples_grip_on_ios_browser_engines_disallowed/). 

Personally, I'll believe it when I see it, and I'm not holding my breath. Others are pessimistic about the prospect that this will lead to "[even more Chromium on this world](https://www.reddit.com/r/firefox/comments/urlayr/apples_grip_on_ios_browser_engines_disallowed/i8xypo4/)".

## 🙌 Uplifting Posts

* wolfinunixclothing gave a [shout-out](https://www.reddit.com/r/firefox/comments/ukq81w/shoutout_for_folks_involved_in_bringing_subtitles/) to the people involved in [bringing subtitles](https://www.reddit.com/r/firefox/comments/uhmol9/firefoxs_pictureinpicture_rolls_out_subtitles_a/) to <abbr title="Picture in Picture">PiP</abbr> mode.

* irvinm66 [answered](https://www.reddit.com/r/firefox/comments/ugjf8a/roadmap_firefox/i70le7h/) a question about Firefox's roadmap with a link to [planned work for Gecko in 2022](https://wiki.mozilla.org/Platform/2022PlannedWork).

* Firefox graphics team engineer jrmuizel asked redditors for [feedback on sites that are worse in Firefox than in Chrome](https://www.reddit.com/r/firefox/comments/ursxpi/feedback_wanted_sites_that_are_worse_in_firefox/).

## 🐛 Bugs and Issues

### New

* Ausmerica [posted](https://www.reddit.com/r/firefox/comments/uugj0o/ff100_has_made_tab_text_black_on_black_its_the/) about a bug in Firefox 100 causing [tabs to appear with black text on a black tab](https://bugzilla.mozilla.org/show_bug.cgi?id=1768380) in Windows 8.1. 
* Darth_Jupiter posted about [low resolution/poor quality video](https://www.reddit.com/r/firefox/comments/ummt1m/problems_with_reddit_video_quality_on_firefox/) on new reddit. I went ahead and [filed a bug](https://bugzilla.mozilla.org/show_bug.cgi?id=1768699). Firefox developers will reach out to reddit to ask for help in identifying where the problem is.

### Known

* Andrade132 [rediscovered](https://www.reddit.com/r/firefox/comments/v002hb/is_there_a_way_to_remove_the_white_corners_in/) an existing issue where the background color of custom images in Top Sites [shows up as white](https://bugzilla.mozilla.org/show_bug.cgi?id=1674272). 

### Fixed

* Linux users are [excited](https://www.reddit.com/r/firefox/comments/v0esaq/linux_users_good_news_seems_like_the_bug_that/) about a fix that re-enables [VA-API](https://01.org/linuxmedia/vaapi) hardware video decode (without needing to disable a media decoder sandbox). VA-API decode isn't yet enabled in release Firefox, so if you want the latest features and fixes, use [Firefox Nightly](https://www.mozilla.org/firefox/channel/desktop/#nightly). 
* A bug posted by Itay1787 where [opening the Page Info window caused a crash in RTL languages](https://www.reddit.com/r/firefox/comments/rmefif/something_broke_firefox_in_the_last_update/) was just [fixed](https://bugzilla.mozilla.org/show_bug.cgi?id=1763035) and may be uplifted to release and beta.

---

Feel free to give me feedback on this post on [reddit](https://www.reddit.com/r/firefox/comments/v2itch/rfirefox_monthly_wrapup_may_2022_firefox_100/). 