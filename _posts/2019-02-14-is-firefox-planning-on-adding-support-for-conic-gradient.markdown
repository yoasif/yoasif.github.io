---
layout: reddit-post
title:  "Is Firefox planning on adding support for conic-gradient?"
date:   2019-02-14 02:30:21 UTC
categories: social comments
tags: firefox chrome css
external-url: https://www.reddit.com/r/firefox/comments/aqdsm1/is_firefox_planning_on_adding_support_for/
image: 

---

<div class="self-post-content" markdown="1">

I can get a circular progress indicator very easily with it in Chrome. Is there another simple way in Firefox?

`previewElement.style.backgroundImage = "conic-gradient(#BBB " + pieValue + "deg,#FFF 0)";`

Gives me a circular progress bar. something like:

<p>
	<picture>
	  <img src="{{site.url}}/assets/images/reddit/circular-progress-ios.gif" alt="Video of an iOS device displaying three circular progress indicators" />
	</picture>
</p>

Is there an easy way to do this in firefox? Ive seen the "move rectangles around" solution but im looking for something simpler.
</div>

<div class="comment-area" markdown="1">

### u/yoasif

Watch bug id [1175958](https://bugzilla.mozilla.org/show_bug.cgi?id=1175958 "[meta] Implement conic gradients from CSS Image Values Level 4"). 

People in the bug mention using SVG for what sounded like a similar use case.

This would work: <https://codepen.io/xgad/post/svg-radial-progress-meters>

</div>

---

{% include donate-social.html %} You can also message me on [Mastodon](https://mastodon.social/@yoasif).