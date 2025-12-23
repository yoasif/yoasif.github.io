---
layout: reddit-post
title:  "Does Airsonic support Opus?"
date:   2018-08-12 06:52:39 UTC
categories: social comments
tags: airsonic ffmpeg android flac opus
external-url: https://www.reddit.com/r/airsonic/comments/8hyxf9/does_airsonic_support_opus/e41rrs2/
image: 

---

<div class="self-post-content" markdown="1">
I'm having trouble trancoding from flac to opus, my command is the following: 

**Name**

flac > opus

**Convert from**

flac

**Convert to**

ogg

**Step 1**

`flac --silent --decode --stdout %s`

**Step 2**

`opusenc --quiet --bitrate %b - -`

</div>

<div class="comment-area" markdown="1">

### u/yoasif

I've been playing with this for a little while today and I came up with one step encode:

`ffmpeg -i %s -map 0:0 -b:a %bk -codec:a libopus -vbr on -f ogg -`

Hope it is helpful to anyone stopping by this thread. 

Also using it on FLAC to Opus (using ogg as "convert to"):

`opusenc --vbr --bitrate 192 --downmix-stereo %s -`

works well too.
</div>


---

{% include donate-social.html %} You can also message me on [Mastodon](https://mastodon.social/@yoasif).