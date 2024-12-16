---
layout: post
title:  "Is Firefox planning on adding support for conic-gradient?"
date:   2019-02-14 02:30:21 UTC
categories: social comments
tags: firefox chrome css
external-url: https://www.reddit.com/r/firefox/comments/apzayu/can_we_get_a_permanent_fix_for_the_tab_bar_color/
image: /assets/images/reddit/can-we-get-a-permanent-fix-for-the-tab-bar-color-issue-with-the-latest-ff-version-in-w10-imgur.png

---

# Original Post

>I can get a circular progress indicator very easily with it in Chrome. Is there another simple way in Firefox?
>
> `previewElement.style.backgroundImage = "conic-gradient(#BBB " + pieValue + "deg,#FFF 0)";`
>
> Gives me a circular progress bar. something like:

<p>
	<picture>
	  <img src="{{site.url}}/assets/images/reddit/circular-progress-ios.gif" alt="Video of an iOS device displaying three circular progress indicators" />
	</picture>
</p>

>Is there an easy way to do this in firefox? Ive seen the "move rectangles around" solution but im looking for something simpler.

## My Comments

Watch bug id [1175958](https://bugzilla.mozilla.org/show_bug.cgi?id=1175958 "[meta] Implement conic gradients from CSS Image Values Level 4"). 

People in the bug mention using SVG for what sounded like a similar use case.

This would work: <https://codepen.io/xgad/post/svg-radial-progress-meters>

---

{% include donate-social.html %} You can also message me on [Mastodon](https://mastodon.social/@yoasif).