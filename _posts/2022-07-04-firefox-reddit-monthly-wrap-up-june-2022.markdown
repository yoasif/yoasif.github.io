---
layout: post
title:  "r/firefox Monthly Wrap-Up - May 2022"
date:   2022-07-04 02:30:00 -0400
categories: writing
tags: Firefox reddit wrap-up
---

There are a lot of fun things posted on [r/firefox](https://www.reddit.com/r/firefox/) every month, but if you don't visit often, you might miss some things. 

This is the second post of a (hopefully) monthly post where I attempt to distill the best (in my opinion) of that forum over the last month. I'm interested in your feedback, so please let me know what you think.

Onward!

* * *

## Highlights

### 🎉 Firefox Rolls Out Total Cookie Protection by Default on Desktop

While Total Cookie Protection has been available as an option in Firefox [since Firefox 86](https://blog.mozilla.org/security/2021/02/23/total-cookie-protection/), it reached [unversal release in Firefox 101](https://www.reddit.com/r/firefox/comments/vc3g3x/firefox_rolls_out_total_cookie_protection_by/). Last month, I wrote about [testing to enable this by default]({% post_url 2022-06-01-firefox-reddit-monthly-wrap-up-may-2022-firefox-100 %}#total-cookie-protection-testing-for-standard-etp) - it looks like the testing went well, because it is now enabled by default in the release version of Firefox for everyone. 

For people catching up, this is how Mozilla describes Total Cookie Protection:

>Total Cookie Protection works by creating a separate “cookie jar” for each website you visit. Instead of allowing trackers to link up your behavior on multiple sites, they just get to see behavior on individual sites. Any time a website, or third-party content embedded in a website, deposits a cookie in your browser, that cookie is confined to the cookie jar assigned to only that website. No other websites can reach into the cookie jars that don’t belong to them and find out what the other websites’ cookies know about you — giving you freedom from invasive ads and reducing the amount of information companies gather about you.

It is great to see a large, mainstream browser making pro-privacy moves like this - this kind of stuff exemplifies why Mozilla is a force for good in the tech landscape. Apple has also been making [positive moves](https://webkit.org/blog/10218/full-third-party-cookie-blocking-and-more/) in this area.

Under the hood, Total Cookie Protection sets `network.cookie.cookieBehavior` to **5**, which [rejects (known) trackers and partitions third-party storage](https://developer.mozilla.org/docs/Web/Privacy/State_Partitioning#disable_dynamic_state_partitioning).

wisniewskit dropped by to [explain how this feature differs from First Party Isolation (FPI)](https://www.reddit.com/r/firefox/comments/vc3g3x/firefox_rolls_out_total_cookie_protection_by/icbwh6i/) - basically, new web APIs to request stoage permissions, along with some heuristics that work automatically while sites migrate to the new API. The feature was [previously known as <abbr title="dynamic FPI">dFPI</abbr>](https://www.reddit.com/r/firefox/comments/vc3g3x/firefox_rolls_out_total_cookie_protection_by/icdbrzl/).

People had a lot of questions. 

Some [asked](https://www.reddit.com/r/firefox/comments/vc3g3x/firefox_rolls_out_total_cookie_protection_by/icc06ng/) whether the feature was enabled for Android. The answer depends on which version of Firefox you are using. While *Total Cookie Protection* is currently available in [Firefox Focus](https://play.google.com/store/apps/details?id=org.mozilla.focus), it is not yet live in [Firefox for Android](https://play.google.com/store/apps/details?id=org.mozilla.firefox_beta). Mozilla [plans](https://github.com/mozilla-mobile/fenix/issues/25736) to release it on Firefox for Android over the next few months. If you are willing to test it before it is released by default, it can be enabled on [beta and nightly](https://www.reddit.com/r/firefox/comments/vgq76g/total_cookie_protection_is_breaking_quite_a_lot/id4xm3s/) versions of Firefox (as they have access to `about:config`).

Many others [asked](https://www.reddit.com/r/firefox/comments/vha5yg/now_that_total_cookie_protection_is_a_thing_are/) about whether [containers](https://support.mozilla.org/kb/containers) are now redundant. 

That depends on your use case. regoli [points out](https://www.reddit.com/r/firefox/comments/vha5yg/now_that_total_cookie_protection_is_a_thing_are/id66v6u/) that containers are invaluable for use in a work environment where they need several different logins. 35013620993582095956 [uses containers](https://www.reddit.com/r/firefox/comments/vha5yg/now_that_total_cookie_protection_is_a_thing_are/id65o32/) to get different sets of recommendations on (logged-out) YouTube for various topics - music, tech videos, entertainment, etc.

People using the [Facebook Container](https://addons.mozilla.org/firefox/addon/facebook-container), will likely want to keep using it, since it has [other strict protections](https://www.reddit.com/r/firefox/comments/vc3g3x/firefox_rolls_out_total_cookie_protection_by/icn7qh9/) specifically for Facebook.

If you run into issues with the feature (like not being able to login to sites), please [report an issue](https://bugzilla.mozilla.org/enter_bug.cgi?product=Core&component=Privacy%3A%20Anti-Tracking) so that developers can investigate and fix it for the general userbase.

### Firefox Translations: Local Translations Without Cloud Services

Firefox Translations has been a long time coming, ever since Mozilla joined forces with the University of Edinburgh, Charles University, University of Sheffield and the University of Tartu on [Project Bergamot](https://browser.mt/), but Mozilla has released [local machine translation tools](https://www.reddit.com/r/firefox/comments/v3gjwb/mozilla_releases_local_machine_translation_tools/) as a Firefox [add-on](https://addons.mozilla.org/firefox/addon/firefox-translations/), and on [a website](https://mozilla.github.io/translate/).

[Evgeny Pavlov](https://evgeny.ai/) wrote about how the project [trained efficient neural network models](https://hacks.mozilla.org/2022/06/training-efficient-neural-network-models-for-firefox-translations/) to help bring translations to home computers. The engine runs locally via WebAssembly, and Mozilla is encouraging testing and welcomes people to [fill out a survey](https://qsurvey.mozilla.com/s3/Firefox-Translations) to help guide collaborators to know which direction to take the product.  

The supported languages are: *Spanish, Estonian, English, German, Czech, Bulgarian, Portuguese and Italian*. Languages in development include: *Russian, Persian (Farsi), Icelandic, Norwegian Nynorsk and Norwegian Bokmål*.

The extension [does not yet run on Android](https://github.com/mozilla/firefox-translations/issues/374), unfortunately -- this is [under investigation](https://news.ycombinator.com/item?id=31606316). People can use [cloud based translation on Android]({% post_url 2022-01-26-most-wanted-add-ons-firefox-android-part-1 %}#translation) in the interim.

### K-9 Mail Becomes Thunderbird for Android

While not *really* about Firefox, the topic of [K-9 Mail becoming Firefox for Android](https://www.reddit.com/r/firefox/comments/vbnup9/mozilla_bought_k9_mail_and_it_will_become/) was popular on r/firefox this month. While the submission title stated that Mozilla had bought K-9, Thunderbird Product Manager ryanleesipes came along and [explained](https://www.reddit.com/r/firefox/comments/vbnup9/mozilla_bought_k9_mail_and_it_will_become/icbis4a/) that no money was exchanged for the trademark transfer.

I have previously played with K-9 Mail but had to give up on it due to not being able to use OAuth 2.0 to add Google accounts. Thankfully, as of [K-9 Mail v6.100](https://github.com/thundernest/k-9/releases/tag/6.100), this now works perfectly for me. Personally, I am excited by this, since it means renewed investment into a fully featured, free and open source email client with the Thunderbird name attached. Hopefully there are some UI improvements, because that has been a stumbling block for my own usage of K-9 in the past.

You can download the email client from [Google Play](https://play.google.com/store/apps/details?id=com.fsck.k9), [F-Droid](https://f-droid.org/repository/browse/?fdid=com.fsck.k9), or [GitHub](https://github.com/thundernest/k-9/releases). Mozilla is also collecting [donations](https://mzla.link/k9-give) to support K-9 Mail and Thunderbird development.

## 🧩 Add-ons

There were plenty of discussions of add-ons in the last month. 

* thismoon [shared](https://www.reddit.com/r/firefox/comments/v61gww/if_you_are_still_using_the_universal_bypass/) a PSA for people running the Universal Bypass extension to switch to FastForward. [FastForward](https://addons.mozilla.org/firefox/addon/fastforwardteam/) helps people skip intermediary pages before being directed to a final page.
* juraj_m pointed out a [collection of suspicious add-ons](https://www.reddit.com/r/firefox/comments/vjvg2v/look_at_this_clickbait_its_a_winrar_addon_made_by/) that seem to only exist to direct people to [sketchy download sites](https://www.reddit.com/r/firefox/comments/vjvg2v/look_at_this_clickbait_its_a_winrar_addon_made_by/idlq6vl/). ElijahPepe did some [further analysis](https://www.reddit.com/r/firefox/comments/vjvg2v/look_at_this_clickbait_its_a_winrar_addon_made_by/idowvdp/) and recommended that people report the add-ons. The extensions have since been removed.

## ✊ Take Back the Web 🌐

[Corin Faife](https://twitter.com/corintxt) at *The Verge* wrote about [Firefox and Chrome squaring off over ad-blocker extensions](https://www.reddit.com/r/firefox/comments/v9705h/firefox_and_chrome_are_squaring_off_over/). The article describes how Google is removing an extension feature, [Web Request](https://developer.chrome.com/docs/extensions/reference/webRequest/), that is currently used by ad blockers in both Firefox and Chromium-based browsers in the upcoming [Manifest V3](https://developer.chrome.com/docs/extensions/mv3/intro/mv3-overview/) (MV3) standard. Mozilla plans to [continue to support](https://blog.mozilla.org/addons/2022/05/18/manifest-v3-in-firefox-recap-next-steps/) this feature to enable "advanced privacy and content blocking features". 

r/firefox is [very much in favor of Mozilla's approach](https://www.reddit.com/r/firefox/comments/viibuj/i_think_its_outstanding_that_mozilla_firefox_will/), and people posted kudos and memes congratulating Firefox for continuing to work with sophisticated ad blockers. 

<p>
	<figure>
	<picture>
	  <source type="image/jpeg" srcset="{{site.url}}/assets/images/firefox-reddit-monthly-wrap-up/2022-06/2023-is-coming.jpg">
	  <img src="{{site.url}}/assets/images/firefox-reddit-monthly-wrap-up/2022-06/2023-is-coming.jpg" alt="Meme featuring uBlock Origin, Firefox and Chrome"/>
	  <figcaption>MaxiEZ <a href="https://www.reddit.com/r/firefox/comments/v9wt25/its_coming/">shared</a> a meme via <a href="https://www.reddit.com/r/pcmasterrace/comments/v9ujza/2023_is_coming/">fastandfuriousMD</a>
</figcaption>
	</picture>
</figure>
</p>

## 🙌 Uplifting Posts

* A [post](https://www.reddit.com/r/firefox/comments/velue0/remembering_and_honoring_marina_zhurakhinskaya/) remembering and honoring Marina Zhurakhinskaya received 244 net votes. Marina was the founder of Outreachy - an internship program for people subject to systemic bias and impacted by underrepresentation. Mozilla [has participated in the Outreachy program](https://wiki.mozilla.org/Outreachy) since January 2013. Marina died of breast cancer on June 11, 2022. Her family has asked for donations to [Dana Farber's Metastatic Breast Cancer Research Fund](https://danafarber.jimmyfund.org/site/TR?team_id=6863&fr_id=1200&pg=team) or [Outreachy](https://www.outreachy.org/sponsor/donate/).

<p>
	<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-reddit-monthly-wrap-up/2022-06/marina-zhurakhinskaya_2022-06-14.webp">
	  <source type="image/jpeg" srcset="{{site.url}}/assets/images/firefox-reddit-monthly-wrap-up/2022-06/marina-zhurakhinskaya_2022-06-14.jpg">
	  <img src="{{site.url}}/assets/images/firefox-reddit-monthly-wrap-up/2022-06/marina-zhurakhinskaya_2022-06-14" alt="Marina Zhurakhinskaya"/>
	  <figcaption>Photo courtesy of Marina Zhurakhinskaya</figcaption>
	</picture>
</figure>
</p>

* z2Q7lYjcxK [asked](https://www.reddit.com/r/firefox/comments/vf799s/does_anyone_else_miss_the_irl_by_mozilla_podcast/) whether anyone else missed the [IRL podcast](https://irlpodcast.org/), helping resurface it to people who hadn't listened to it previously. 
* ChaoticNeutralCzech posted a PSA on how to [open the OS native print dialog by default](https://www.reddit.com/r/firefox/comments/vaqgi3/how_to_return_the_classic_system_print_dialog_in/) - set `print.prefer_system_dialog` to **true**.
* Former Firefox developer dblohm7 posted a [great overview](https://www.reddit.com/r/firefox/comments/vi2bvm/whats_the_state_of_security_on_android/idhnpbx/) of how to think about Firefox for Android's overall security. He also provided some insight into [the design of Fission for Android](https://www.reddit.com/r/firefox/comments/vi2bvm/whats_the_state_of_security_on_android/idhnpbx/).
* In an answer to a question about a slow [Linux distribution update for Firefox](https://www.reddit.com/r/firefox/comments/v58wzy/my_linux_distro_repository_havent_updated_firefox/), Linux-Is-Best [linked](https://www.reddit.com/r/firefox/comments/v58wzy/my_linux_distro_repository_havent_updated_firefox/ib9rm4n/) to their GPL3 [installer for Firefox](https://github.com/Linux-Is-Best/Firefox-automatic-install-for-Linux). *Firefox-automatic-install-for-Linux* downloads Firefox directly from Mozilla, installs it complete with .desktop files (to make it easier to launch), and uses the Mozilla updater to get the fastest updates. Release, Beta, Developer Edition, ESR, and Nightly are all supported. This is a very nice tool if you prefer getting Firefox from the upstream developer.

## 🐛 Bugs and Issues

### New

* mockedarche posted about [Firefox reportedly using 109GB of RAM](https://www.reddit.com/r/firefox/comments/vbd8zx/macos_firefox_massive_memory_leak_been_months_now/) on an M1 Mac. They went ahead and [filed a bug](https://bugzilla.mozilla.org/show_bug.cgi?id=1774027). As of this writing, Firefox developers are unsure of what is going on. Hopefully other people seeing this issue can provide some additional memory dumps to help locate what may be happening. 
* NostalgiaSchmaltz posted that Turkish site [AA](https://www.aa.com.tr/tr) was [slower to load](https://www.reddit.com/r/firefox/comments/t2o3s6/is_firefox_slow_for_android/hyt1li1/) in Firefox than Chrome. I went ahead and [filed a bug](https://bugzilla.mozilla.org/show_bug.cgi?id=1773543) to investigate. 

### Known

* yo_99 [rediscovered](https://www.reddit.com/r/firefox/comments/vkgk78/why_does_firefox_keeps_using_mozilla_directory/) that Firefox on Linux doesn't use the [XDG Base Directory spec](https://bugzilla.mozilla.org/show_bug.cgi?id=259356). whlthingofcandybeans [pointed out](https://www.reddit.com/r/firefox/comments/vkgk78/why_does_firefox_keeps_using_mozilla_directory/idpupux/) that Snap and Flatpak are also not XDG compliant. 

### Fixed

* sparrowofsong [posted](https://www.reddit.com/r/firefox/comments/v48aji/firefox_crashes_when_dragging_window/) about a [bug](https://bugzilla.mozilla.org/show_bug.cgi?id=1695591) where Firefox would crash while dragging a window on Linux. The bug has since been [fixed](https://bugzilla.mozilla.org/show_bug.cgi?id=1695591#c20) and released to Nightly 🎉. 

## 🌃 Nightly

* A request I made back in 2019 has been fixed - [touchpad gestures for back and forward on Linux](https://www.reddit.com/r/firefox/comments/vj3t8z/two_finger_touchpad_horizontal_swipe_gesture_for/) is now [in Nightly](https://bugzilla.mozilla.org/show_bug.cgi?id=1539730#c21). The feature will work in Wayland [and in X11](https://www.reddit.com/r/linux/comments/vj3udq/fixed_in_firefox_nightly_two_finger_touchpad/idk7hv2/) when using the `MOZ_USE_XINPUT2=1` environment variable 🎉. 
* Linux users can celebrate that [VA-API hardware video decode](https://www.reddit.com/r/firefox/comments/v0esaq/linux_users_good_news_seems_like_the_bug_that/) is working again without needing to disable the <abbr title="Remote Data Decoder">RDD</abbr> process sandbox. Darkspirit1337 gave a nice [walkthrough](https://www.reddit.com/r/firefox/comments/v0esaq/linux_users_good_news_seems_like_the_bug_that/iam0df2/) of how to get it going for testing. 
* [VA-API was also enabled by default](https://www.reddit.com/r/firefox/comments/v35pqu/hardware_video_acceleration_enabled_on_nightly_by/) in Nightly for people running with Mesa drivers. This is great news for getting this into the mainline release and enabled for all Firefox users on Linux. Nvidia is not supported, and Darkspirit1337 [suggested](https://www.reddit.com/r/firefox/comments/v35pqu/hardware_video_acceleration_enabled_on_nightly_by/iaxu0po/) that people [submit feedback](https://forums.developer.nvidia.com/t/nvidia-releases-open-source-gpu-kernel-modules/214128) asking Nvidia to support VA-API via Mesa.

---

Feel free to give me feedback on this post on [reddit](https://www.reddit.com/r/firefox/comments/vrqql2/rfirefox_monthly_wrapup_may_2022/?). 