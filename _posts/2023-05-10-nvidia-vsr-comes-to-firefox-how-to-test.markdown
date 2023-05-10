---
layout: post
title:  "Nvidia Video Super Resolution Comes to Firefox: How to Test"
date:   2023-05-10 10:44:00 -0400
categories: writing
tags: Nvidia AI Firefox
---

Firefox developers recently [added support](https://bugzilla.mozilla.org/show_bug.cgi?id=1823135) for Nvidia's Virtual Super Resolution (VSR) technology. The [idea](https://connect.mozilla.org/t5/ideas/add-firefox-support-for-rtx-video-super-resolution/idi-p/26995#comments) received 278 votes on Connect Mozilla, so it is clearly interesting for people with the latest Nvidia cards who watch online video.

If you are already using a pre-release version of Firefox, [skip ahead to the instructions](#how-to-enable-nvidia-vsr-in-firefox).

* * *

{:toc}
* toc

## What is Nvidia VSR?

[Nvidia VSR](https://blogs.nvidia.com/blog/2023/02/28/rtx-video-super-resolution/) is technology that enables people to increase the visual quality of online video by reducing artifacts caused by compressing video, and while also sharpening edges and details. It does this by using a deep learning framework. From the post announcing the feature:

>The technology uses a deep learning network that performs upscaling and compression artifact reduction in a single pass. The network analyzes the lower-resolution video frame and predicts the residual image at the target resolution. This residual image is then superimposed on top of a traditional upscaled image, correcting artifact errors and sharpening edges to match the output resolution.
>
>The deep learning network is trained on a wide range of content with various compression levels. It learns about types of compression artifacts present in low-resolution or low-quality videos that are otherwise absent in uncompressed images as a reference for network training. Extensive visual evaluation is employed to ensure that the generated model is effective on nearly all real-world and gaming content.

VSR is available on all RTX 30 and 40 series GPUs on consumer notebook and desktops. 

## How to Enable Nvidia VSR in Firefox

Enabling Nvidia VSR in Firefox is a straightforward process. It hasn't appeared in release versions of Firefox yet, so you will need to use a beta version at this time. Unfortunately, installing Firefox Beta will overwrite your existing copy of Firefox, so the easiest way to install a beta version of Firefox is to install Firefox Developer edition - which doesn't overwrite Firefox. You can use Firefox Sync to keep your bookmarks and and some settings in sync.

1. Install [Firefox Developer Edition](https://www.mozilla.org/firefox/developer/). You can install Firefox Beta instead, but this will replace your existing Firefox installation, and downgrading Firefox is not supported. Go with Firefox Developer edition instead - it keeps things simpler.
2. (Optional) [Enable Firefox Sync](https://support.mozilla.org/kb/how-do-i-set-sync-my-computer) on both Firefox versions. This will make it simpler for you to swap between versions if you want to keep things in sync.
3. Navigate to `about:config` in your browser. Read the warning and continue.
4. Search for <kbd>gfx.webrender.super-resolution.nvidia</kbd> and set it to **true** by clicking the "Toggle" icon beside the search result.
5. Restart Firefox

### How to Enable Nvidia VSR on Your Computer

If you haven't already, you also need to enable VSR on your computer. This is covered in the [Nvidia FAQ](https://nvidia.custhelp.com/app/answers/detail/a_id/5448), but the quick instruction is: in your NVIDIA Control Panel, under **Adjust Video Image Settings**, enable *Super Resolution* and set a quality level from 1 (lowest) to 4 (highest).

If you run into issues with this feature, please [file a bug](https://bugzilla.mozilla.org/enter_bug.cgi?product=Core&component=Audio%2FVideo%3A%20Playback). 

---

Feel free to give me feedback on this post on [reddit](https://www.reddit.com/r/firefox/comments/13duluz/nvidia_video_super_resolution_comes_to_firefox/?). You can also message me on [Mastodon](https://mastodon.social/@yoasif).