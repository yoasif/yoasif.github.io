---
layout: post
title:  "r/firefox Monthly Wrap-Up - August 2022: A new Chief Product Officer"
date:   2022-09-05 22:11:00 -0400
categories: writing
tags: Firefox reddit wrap-up
---

There are a lot of fun things posted on [r/firefox](https://www.reddit.com/r/firefox/), but if you don't visit often, you might miss some things. 

This is the fourth post of an ideally monthly post that distills the best of r/firefox over the last month. I'm open to feedback, so please let me know what you think!

After a slow month in July, we saw an uptick in activity in August, along with a big announcement.

* * *

## Highlights

### Steve Teixeira, Mozilla’s new Chief Product Officer

On August 15, [Mozilla announced that Steve Teixeira (ex Twitter, Facebook, Microsoft) was named Chief Product Officer](https://www.reddit.com/r/firefox/comments/wp5gi5/steve_teixeira_longtime_microsoft_program_manager/). Steve [came by and commented](https://www.reddit.com/r/firefox/comments/wp5gi5/steve_teixeira_longtime_microsoft_program_manager/ikhht0p/):

>I have to say, the best theory in this thread is how I was sent from Microsoft several years ago as a sleeper agent at Mozilla today. It has a Terminator vibe that I kind of love, ngl.
>
>And yes, I am the same Steve Teixeira that wrote Delphi books in the Paleozoic era.

BubiBalboa [asked Steve to write a blog post](https://www.reddit.com/r/firefox/comments/wp5gi5/steve_teixeira_longtime_microsoft_program_manager/ikhwjov/) introducing himself and his goals for Firefox. Steve agreed -- watch this space for a follow up!

### Mozilla Accessibility: Cache the World

Asa Dotzler [announced a revamped accessibility engine for Firefox](https://blog.mozilla.org/accessibility/cache-the-world-opt-in-preview/) called "Cache the World". The new engine automatically sends information from web content processes to a cache in the browser’s main process for consumption by assistive technologies. 

If you’re a Windows screen reader user, and you’re interested in testing Firefox Nightly builds, visit the announcement for instructions on how to enable the feature, along with instructions on how to report issues.

### SpiderMonkey Improvements in Firefox 104-105

Even generally observant members of the Firefox community are often ignorant about what is happening in the JavaScript realm in Firefox. caspy7 shared the [SpiderMonkey newsletter](https://www.reddit.com/r/firefox/comments/x0z9ze/spidermonkey_newsletter_firefox_104105/), which details a lot of ongoing work and improvements, including:

* [shipping](https://bugzilla.mozilla.org/show_bug.cgi?id=1775026) the `findLast` and `findLastIndex` functions
* modernizing JS modules, by supporting modules in Workers, adding support for Import Maps, and [ESMification](https://spidermonkey.dev/areweesmifiedyet/) (replacing the JSM module system for Firefox internal JS code with standard ECMAScript modules).
	* the self-hosted module implementation was ported from [JS to C++](https://bugzilla.mozilla.org/show_bug.cgi?id=1774454), helping to improve [security, efficiency and debugging](https://bugzilla.mozilla.org/show_bug.cgi?id=1774454#c0).
* working on better (in-memory) caching of JS scripts based on the new Stencil format, which will let SpiderMonkey integrate better with other resource caches used in Gecko, hit the cache in more cases, and open the door to potentially cache JIT-related hints
* a whole host of performance improvements, including: [optimizing](https://bugzilla.mozilla.org/show_bug.cgi?id=1777222) object allocation code, making the JSON parsing benchmark more than 30% [faster](https://bugzilla.mozilla.org/show_bug.cgi?id=1777222#c6).

## 🧩 Add-ons

* snf3210 [shared](https://www.reddit.com/r/firefox/comments/wr40p5/really_loving_the_tabliss_addon_for_adding_some/) an open source, [Mozilla recommended](https://support.mozilla.org/kb/recommended-extensions-program) new tab page with greater customization potential than the default new tab page. [**Tabliss**](https://addons.mozilla.org/en-US/firefox/addon/tabliss/) lets people choose from millions of background photos, various widgets, a to-do list, notepad, a "speed dial" of sites, and a search box.
* th3luck [shared](https://www.reddit.com/r/firefox/comments/wllqbq/i_made_a_github_extension_that_recommends_similar/) their open source extension that recommends related GitHub repositories on repository pages. Mike also [wrote a post](https://indexstorm.com/git-rec) introducing [**GitHub Recommender**](https://addons.mozilla.org/firefox/addon/github-recommender/) and its development process.
* lawrencehook [shared](https://www.reddit.com/r/firefox/comments/wv38ie/sticky_notes_for_firefox_an_update/) an update to their sticky note extension, [**WebStickies**](https://addons.mozilla.org/firefox/addon/webstickies/). The extension debuted 8 months ago, and the new update includes a major new feature - accessibility via the context menu on web pages. People can now add new notes, change sticky colors, pin notes (to a location on a page), update text size, and more. The update also adds keyboard shortcuts.
* angheloc [wrote](https://www.reddit.com/r/firefox/comments/wqx8yv/i_made_a_little_addon_to_pop_up_a_miniplayer_on/) a mini-player for Spotify. [**Spopupfy**](https://addons.mozilla.org/firefox/addon/spopupfy-spotify-mini-player/) is an open source extension that acts like a picture in picture window for Spotify.
* Madd0g [asked for an add-on recommendation](https://www.reddit.com/r/firefox/comments/x25qk3/help_addon_recommendation_for_remote_controlling/) to replicate Chrome's AppleScript support in Firefox. [AppleScript](https://en.wikipedia.org/wiki/AppleScript) support in Firefox is a [21 year old request](https://bugzilla.mozilla.org/show_bug.cgi?id=125419), and while there seems to be a [prototype](https://bugzilla.mozilla.org/show_bug.cgi?id=1655268), it is currently stuck in review. Madd0g solved their own request by stumbling upon [**BroTab**](https://addons.mozilla.org/en-US/firefox/addon/brotab/), an open source extension, native app and client that alllows people to access browser functionality via a command line app. This ought to be very useful for people who want to add a browser to their existing scripts, or if they want to add some quick automation to their browser. Unlike AppleScript, BroTab has the advantage of being cross-platform, as the [client apps](https://github.com/balta2ar/brotab/) will run anywhere that [pip](https://pypi.org/project/pip/) runs.

## ✊ Take Back the Web 🌐

* sithsiri shared their blog post about [why they dumped Chrome for Firefox](https://sithsiri.medium.com/why-i-switched-from-chrome-to-firefox-8a709448a507). Their focus is on privacy features, along with concerns about website developers neglecting non-Chrome browsers due to a Chrome monopoly.
* JimMorrisonWeekend posted a [callback to the old 3D view in Firefox DevTools](https://www.reddit.com/r/firefox/comments/wxoeyl/firefox_used_to_have_a_really_cool_3d_view_of_the/) that was removed in Firefox 47, calling it "badass". Tux-Lector [posted](https://www.reddit.com/r/firefox/comments/wxoeyl/firefox_used_to_have_a_really_cool_3d_view_of_the/ils508a/) linking to the [old documentation](https://firefox-source-docs.mozilla.org/devtools-user/3d_view/index.html) for the feature. Killed_Mufasa [remarked](https://www.reddit.com/r/firefox/comments/wxoeyl/firefox_used_to_have_a_really_cool_3d_view_of_the/ilwfsed/) that Microsoft Edge has a [version of this feature](https://blogs.windows.com/msedgedev/2022/06/21/debug-the-web-in-3d-with-the-3d-view-tool/).

## 🙌 Uplifting Posts

phtdacosta posted [thanking Firefox developers](https://www.reddit.com/r/firefox/comments/wu872h/thanks_firefox_developers/) for keeping browser competition alive by maintaining Gecko and by "being an alternative at a market that is saturated with decoys" reliant on Chromium.

> As a developer and tech entrepreneur I value that, I pray for you to keep your mission, and I NEVER give up on letting my friends know how good is my experience using Firefox myself, everyday, to develop and also surf.

### 💡 Ideas

* In a question receiving 375 net votes, B_Cenocepecia asked why [additional playback controls are not available when playing music on Spotify on Firefox Android](https://www.reddit.com/r/firefox/comments/wnbnsq/why_arent_player_controls_available_in_firefox/). People interested in additional playback controls are encouraged to vote for [**advance media notification in Firefox Android**](https://connect.mozilla.org/t5/ideas/advance-media-notification-in-firefox-android/idi-p/4876) on Connect Mozilla. 
* RodrigoCard asked whether it was possible to [automatically pop videos out of websites when switching to another tab](https://www.reddit.com/r/firefox/comments/wfjyf0/automatic_pictureinpicture_mode_when_window_focus/). They were quickly directed to vote for [**Auto PIP when tab is changed**](https://connect.mozilla.org/t5/ideas/auto-pip-when-tab-is-changed/idi-p/7917). Later in the month, Mozilla employee asafko [responded](https://connect.mozilla.org/t5/ideas/auto-pip-when-tab-is-changed/idc-p/12631/highlight/true#M6332) that while this feature is on the team's radar, it won't get worked on until 2023 at the earliest. Mozilla is willing to accept a patch, however.
* In a post asking for help with searching for open tabs, sprayfoamparty discovered that the awesomebar has this feature when prepending a query with <kbd>%</kbd>, but [wanted a way to have a single keyboard shortcut to activate this feature](https://www.reddit.com/r/firefox/comments/wtya9t/keyboard_shortcut_to_directly_search_open_tabs/). I had previously submitted this as an idea: [**Keyboard shortcut for "Search Tabs"**](https://connect.mozilla.org/t5/ideas/keyboard-shortcut-for-quot-search-tabs-quot/idi-p/9134) -- vote for this feature if you want it! 

## 🐛 Bugs and Issues

### New

* AsinineHerbivore posted that they were having trouble [adding a site exception to ETP](https://www.reddit.com/r/firefox/comments/wqw7cs/how_do_i_manually_add_a_site_exception_for/) due to an automatic redirect. wisniewskit [helped ensure](https://www.reddit.com/r/firefox/comments/wqw7cs/how_do_i_manually_add_a_site_exception_for/iksz04r/) that this request was [filed to Bugzilla](https://bugzilla.mozilla.org/show_bug.cgi?id=1785825 "Allow adding ETP exceptions from about:preferences#privacy").
* New Firefox user genceldoruk posted about [glitchy graphics on Firefox while using their Nvidia RTX 2060 mobile](https://www.reddit.com/r/firefox/comments/x07fsn/so_i_switched_from_chrome/). Happily, they also [filed a bug to Bugzilla](https://bugzilla.mozilla.org/show_bug.cgi?id=1787239 "Hardware acceleration causes glitchy graphics on NVIDIA 2060"), where Jeff Muizelaar suggested a workaround -- setting <kbd>gfx.webrender.compositor</kbd> to **false** - which worked.
* nekobass posted about a new "Shop Avatars" widget on New reddit that caused increased CPU use on their Linux laptop. A number of people were able to reproduce the issue, while others [recommended that people should use Old reddit](https://www.reddit.com/r/firefox/comments/wzvufu/new_reddits_sparkling_shop_avatars_navbar_toolbar/im59e30/), which doesn't show the widget, and runs faster in general. 
	* OlDirtyLZA [provided a uBlock Origin filter](https://www.reddit.com/r/firefox/comments/wzvufu/new_reddits_sparkling_shop_avatars_navbar_toolbar/im92ywy/) to hide the widget. Add <span style="white-space: nowrap;">`www.reddit.com##:xpath(//button[contains(text(),'Shop Avatars')])`</span> to [*My filters*](https://github.com/gorhill/uBlock/wiki/Dashboard:-My-filters) in the dashboard to hide it. 
	* I went ahead and [filed a bug](https://bugzilla.mozilla.org/show_bug.cgi?id=1789153 "Reported high CPU use on reddit "Shop Avatars" widget") with a testcase.

### Known

* itai9997  rediscovered that Firefox on Android doesn't have a way to [export or import bookmarks from a file](https://www.reddit.com/r/firefox/comments/wxfooc/why_no_bookmarks_export/). I had filed a [request for this](https://github.com/mozilla-mobile/fenix/issues/417 "Import/Export bookmarks to local fileystem") back in 2019 - unfortunately, this has not been prioritized yet.
* VictorDeAzevedo found that the [keyboard shortcut for Picture in Picture doesn't work in some locales](https://www.reddit.com/r/firefox/comments/wetxd7/please_make_another_shotcut_for_picturetopicture/). Unfortunately, this is a [known issue](https://bugzilla.mozilla.org/show_bug.cgi?id=1681807 "[PiP] PiP keyboard shortcut does not work on MacOS on en-US builds when used with Spanish and some other non-English keyboard layouts"), with testers [finding](https://bugzilla.mozilla.org/show_bug.cgi?id=1681807#c2) that the "PiP [shortcut] does not work with other international languages, such as [the] Spanish keyboard layout."

### Fixed

* [There](https://www.reddit.com/r/firefox/comments/wwnxtu/youtube_videos_freezing_since_updating_to_1040/) [were](https://old.reddit.com/r/firefox/comments/wropka/firefox_struggling_to_open_some_youtube_videos/) a [number](https://old.reddit.com/r/firefox/comments/wthtet/youtube_videos_often_wont_load_and_otherwise_the/) of reports of issues loading videos on YouTube following the release of Firefox 104. panoptigram [posted a workaround](https://www.reddit.com/r/firefox/comments/wwnxtu/youtube_videos_freezing_since_updating_to_1040/ilmjfk5/) to disable some video performance improvements on Windows. Mozilla quickly released [Firefox 104.0.1](https://www.mozilla.org/en-US/firefox/104.0.1/releasenotes/ "Firefox 104.0.1 Release Notes") with a [fix](https://bugzilla.mozilla.org/show_bug.cgi?id=1787293#c25).
* steelenex [found](https://www.reddit.com/r/firefox/comments/wfhdco/firefox_for_ios_crashes_when_i_add_a_new_search/) that adding custom search engines on Firefox iOS would crash the browser. This issue has [been fixed](https://github.com/mozilla-mobile/firefox-ios/issues/11187 " App crashes when adding a new custom search engine").
* ApostleofV8 found that they were [unable to edit bookmarks from the Bookmarks UI](https://www.reddit.com/r/firefox/comments/x1zcno/how_do_you_edit_bookmark_on_firefox_android/) on Firefox for Android. This issue has [been fixed](https://github.com/mozilla-mobile/fenix/issues/26093).
* shdon experienced a regression on their Surface tablet, where [scrolling using their finger or stylus to drag the scrollbar caused the content to move in the opposite direction](https://www.reddit.com/r/firefox/comments/wwkz98/scrollbar_not_working_with_touch_or_stylus/) than they expected. They went ahead and [located the regression](https://bug1787361.bmoattachments.org/attachment.cgi?id=9291652) using [mozregression](https://mozilla.github.io/mozregression/) and [filed a bug](https://bugzilla.mozilla.org/show_bug.cgi?id=1787361 "Dragging scrollbar thumb not working with touchscreen or stylus"). The bug was [fixed and released in beta](https://bugzilla.mozilla.org/show_bug.cgi?id=1787361#c27) within 4 days! 🎉

## 🌃 Nightly

Nightly users experienced one of those rare [tab crashing bugs last month](https://www.reddit.com/r/firefox/comments/wyo5t6/weekly_discussion_for_nightly_builds_for_20220827/ily2tnp/) in [bug 1787584](https://bugzilla.mozilla.org/show_bug.cgi?id=1787584) -- reported on both reddit and Bugzilla by Fanolian (🙌). I ran into this issue when editing on [OpenStreetMap](https://www.openstreetmap.org) - thankfully, the bug was fixed within a day or so.

---

Feel free to give me feedback on this post on [reddit](#). 