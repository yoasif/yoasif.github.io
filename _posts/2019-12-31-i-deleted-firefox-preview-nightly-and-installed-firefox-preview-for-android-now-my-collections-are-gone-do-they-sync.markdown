---
layout: post
title:  "I deleted Firefox Preview Nightly and installed Firefox Preview for Android. Now my Collections are gone. Do they sync?"
date:   2019-12-31 05:23:24 UTC
categories: social comments
tags: firefox fenix android
external-url: https://www.reddit.com/r/firefox/comments/ehkbj0/i_deleted_firefox_preview_nightly_and_installed/
image: /assets/images/social-previews/firefox.png

---

# Original Post

> I wasn't really thinking and deleted Firefox Preview Nightly due to the constant crashing and downloaded Firefox Preview. I never thought about my Collections, which I had several. Will they sync or are they gone forever? Might I get them back if I reinstall Firefox Preview Nightly?

## My Comments

They are gone forever. There is a bug filed for this: <https://github.com/mozilla-mobile/fenix/issues/4424>

Sorry about your experience.

>Oh, it's a bug? So there is a chance I can get them back if that's fixed?

More of a missing feature. And no, your collections are gone. Sorry.

### Context

As of 2024, collections do not sync, and there is no way to export them.

In addition to the bug I referenced in my original comments, the request was refiled to [Bugzilla](https://bugzilla.mozilla.org/show_bug.cgi?id=1747614 "syncing collections from Fenix (Android)"), and there is a [Mozilla Connect discussion](https://connect.mozilla.org/t5/ideas/collections-synchronizable-give-collections-to-firefox-desktop/idi-p/1099 "collections synchronizable - give collections to Firefox desktop") as well.

Technical folks can use the Firefox debugger (and a desktop Firefox instance) to [backup & restore Firefox app data](https://github.com/Rob--W/firefox-android-backup-restore) (including collections).

---

{% include donate-social.html %} You can also message me on [Mastodon](https://mastodon.social/@yoasif).