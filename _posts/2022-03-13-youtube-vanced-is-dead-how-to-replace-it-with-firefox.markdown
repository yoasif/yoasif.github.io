---
layout: post
title:  "(YouTube) Vanced is Dead: How to Replace it With Firefox (Nightly)"
date:   2022-03-13 03:58:00 -0400
categories: writing
tags: Firefox
---

On March 13, 2022, [Vanced](https://vancedapp.com/) announced on Twitter that [Vanced had been discontinued](https://twitter.com/YTVanced/status/1503052250268286980). Vanced was a modded version of the official YouTube app that added features like ad blocking, sponsor blocking (via SponsorBlock), and the return of removed YouTube features like "dislikes" of videos. This happened as a result of a [cease and desist](https://www.theverge.com/2022/3/13/22975890/youtube-vanced-app-discontinued-shutting-down-legal-reasons) request from Google.

All is not lost, however. You can still get the most important Vanced features on Firefox Nightly. In this post, I walk through how to get the Vanced features in Firefox, by installing the [Nightly](https://play.google.com/store/apps/details?id=org.mozilla.fenix "Firefox Nightly on Google Play") version.

If you prefer not to use alpha versions of software, you can instead use [Firefox Beta](https://play.google.com/store/apps/details?id=org.mozilla.firefox_beta), but you won't be able to block sponsor ads or bring back dislikes to YouTube. You'll still be able to block ads and play videos in the background, though.

Discuss this post on [reddit](https://www.reddit.com/r/firefox/duplicates/tdgd4y/youtube_vanced_is_dead_how_to_replace_it_with/?).

* * *

## Setup

To get started, install [Firefox Nightly](https://play.google.com/store/apps/details?id=org.mozilla.fenix "Firefox Nightly on Google Play"), and then follow the instructions on the [Mozilla post announcing](https://blog.mozilla.org/addons/2020/09/29/expanded-extension-support-in-firefox-for-android-nightly/) expanded add-on support. The instructions note that you need to create an add-on "collection" on Add-ons Mozilla, but if you prefer not to do that (you will need a free Firefox Account), you can use [my collection](https://addons.mozilla.org/firefox/collections/3504483/Android-Nightly-Tested/ "Add-ons tested to work well in Firefox Nightly for Android.") instead.

To use my add-on collection, when Mozilla's instructions tell you to enter a collection name and your user ID, enter the following:

| **Collection owner (User ID)**  | 3504483  |
| **Collection name**  | Android-Nightly-Tested  |

Firefox will close. Reopen Firefox, then navigate to the Add-ons menu item to select add-ons from my collection.

## The Add-ons

The add-ons that you will need to get the Vanced experience on Firefox are: *[SponsorBlock](#sponsorblock)*, *[KellyC Show YouTube Dislikes](#kellyc-show-youtube-dislikes)*, *[uBlock Origin](#ublock-origin)*, and as a bonus, *Video Background Play Fix*.

### SponsorBlock

| **AMO Page**  | [SponsorBlock - Skip Sponsorships on YouTube](https://addons.mozilla.org/firefox/addon/sponsorblock/)  |
| **by**  | [Ajay Ramachandran](https://ajay.app)  |
| **Users**  | 144,402  |
| **Rating**  | 4.8 stars  |
| **License**  | GNU Library General Public License v3.0  |
| **Links**  | [Issue Tracker](https://github.com/ajayyy/SponsorBlock/issues), [Donate](https://sponsor.ajay.app/donate/)  |

**SponsorBlock** is essentially an ad blocker for the "this video is sponsored by..." segments of videos found on sites like YouTube. It works great on Firefox, and the developer fixes issues in it.

### KellyC Show YouTube Dislikes

| **AMO Page**  | [KellyC Show YouTube Dislikes](https://addons.mozilla.org/firefox/addon/return-youtube-dislike/)  |
| **by**  | [nradiowave](https://nradiowave.catface.ru)  |
| **Users**  | 1,009  |
| **Rating**  | 4.7 stars  |
| **License**  | GNU Library General Public License v3.0  |
| **Links**  | [Issue Tracker](https://github.com/NC22/KellyC-Show-YouTube-Dislikes/issues), [Donate](https://nradiowave.catface.ru)  |

Late last year, YouTube announced that they were going to [remove the "dislike" count](https://blog.youtube/news-and-events/update-to-youtube/ "An update to dislikes on YouTube") from YouTube videos. **KellyC Show YouTube Dislikes** brings dislikes back to YouTube, on both mobile and desktop browsers.

This add-on uses archived dislike data, and augments it with new data from people using this and other add-ons. This add-on also submits users' likes and dislikes, although this can be disabled.

### uBlock Origin

| **AMO Page**  | [uBlock Origin](https://addons.mozilla.org/android/addon/ublock-origin/)  |
| **by**  | [Raymond Hill](https://twitter.com/gorhill)  |
| **Users**  |     5,569,119  |
| **Rating**  | 4.8 stars  |
| **License**  |     Mozilla Public License 2.0  |
| **Links**  | [Issue Tracker](https://github.com/uBlockOrigin/uBlock-issues/issues), [Donate](https://github.com/gorhill/uBlock/wiki/Why-don%27t-you-accept-donations%3F), [reddit](https://www.reddit.com/r/uBlockOrigin/)  |

uBlock Origin is a venerable wide-spectrum content blocker with millions of installs on desktop and mobile. In its default configuration, it will remove ads on YouTube (and on many other pages on the web). It is also fully supported on mobile and has an issue tracker where you can report issues.

###  Video Background Play Fix

| **AMO Page**  | [Video Background Play Fix](https://addons.mozilla.org/android/addon/video-background-play-fix/)  |
| **by**  | JanH  |
| **Users**  |     91,671  |
| **Rating**  | 4.5 stars  |
| **License**  |     The MIT License  |
| **Links**  | [Issue Tracker](https://github.com/mozilla/video-bg-play/issues)  |

Firefox for Android can continue playing video even if you switch to another tab or app. Sites can block background playback by detecting these actions. This add-on is designed to block those events, resulting in you being able to play YouTube videos in the background, or with your devices' screen being off.

---

Feel free to give me feedback on this post on [reddit](https://www.reddit.com/r/firefox/duplicates/tdgd4y/youtube_vanced_is_dead_how_to_replace_it_with/?). 

If you want to know about other add-ons, check out my previous post on [The Most Wanted Add-ons for Firefox on Android]({% post_url 2022-01-26-most-wanted-add-ons-firefox-android-part-1 %}) (this post is a shortened version of that one).