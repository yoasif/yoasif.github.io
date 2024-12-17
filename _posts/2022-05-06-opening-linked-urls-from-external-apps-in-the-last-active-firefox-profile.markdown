---
layout: post
title:  "Opening linked URLs from external apps in the last active Firefox profile"
date:   2022-05-06 22:15:16 UTC
categories: social comments
tags: firefox
external-url: https://www.reddit.com/r/firefox/comments/ujy85q/firefox_profiles_and_opening_urls_from_outside/
image: 

---

# Original Post

>TL;DR: Is there a way to quickly switch which profile is 'current' so that links clicked from outside the browser (e.g. a password manager) open as a new tab in the 'current' profile window?
>
>Context:
>
>I really want to be using Firefox, but am currently a Chrome user. I use Chrome with multiple profiles, but haven't been able to get the desired functionality in Firefox's profiles - for simplicity, let's say I have a Work profile, and a Personal profile.
>
>I often have both profiles open at the same time (music playing from Personal, authenticated in to work related apps in Work, and logged in to respective Gmail accounts on both).
>
>Clicking a link from outside the browser opens the OS default browser to handle the URL. With Chrome as default, the URL is opened in whatever Chrome window was most recently focused, and naturally - uses the same Profile the window uses to open the link.
>
>With Firefox though, the link is always opened in the default Profile, even if the most recently focused Firefox window was for a non-default Profile.
>
>I've tried to customize Firefox Containers to suit my needs, but there is a fair amount of overlap in the websites I log in to between my Work and Personal profiles, so setting "Always open this site in..." can't differentiate Work google.com from Personal google.com.
>
>Does anyone have any advice on how to accomplish something like this in Firefox?
>
>Thanks!

## My Comments

>Does anyone have any advice on how to accomplish something like this in Firefox?

This is not available as a Firefox feature. Copying and pasting works, of course.

There is an open feature request to support this filed to bug [1601351](https://bugzilla.mozilla.org/show_bug.cgi?id=1601351 "Provide option in Profile Manager for links from external applications to open into last active profile window").

If you are using Windows, you can try [BrokenURL](https://brokenevent.com/projects/brokenurl) to route URLs.

---

{% include donate-social.html %} You can also message me on [Mastodon](https://mastodon.social/@yoasif).