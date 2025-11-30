---
layout: post
title:  "Prevent Firefox from inheriting system font size"
date:   2019-02-06 00:00:15 UTC
categories: social comments
tags: firefox
external-url: https://www.reddit.com/r/firefox/comments/ankgzn/prevent_firefox_from_inheriting_system_font_size/efu078s/
image: /assets/images/social-previews/firefox.png

---

>I've recently changed my Windows 7 system font size to 110%.
>
>I notice Chrome and IE don't apply the system size, and continue to display the base font at 16px, the browser default. This is the way I prefer it for development.
>
>But Firefox (and Dev edition) apply the system font size to the base size for all text. Consequently the pages render at 110% of the actual font size setting.
>
>Is there a setting I can use to force Firefox to use 16px or to prevent it inheriting the system font size?

Setting `layout.css.devPixelsPerPx` to **1.0** should give you what you want.

---

{% include donate-social.html %} You can also message me on [Mastodon](https://mastodon.social/@yoasif).