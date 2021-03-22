---
layout: post
title:  "Supporting Compact Mode in Firefox Proton"
date:   2021-03-21 01:30:00 -0400
categories: writing
tags: Firefox
---

Mozilla recently [proposed](https://bugzilla.mozilla.org/show_bug.cgi?id=1693028 "Bug 1693028 - Remove compact mode inside Density menu of customize palette") that Firefox remove its compact UI density setting as part of its [Proton UI Refresh](https://wiki.mozilla.org/Firefox/Proton). Resulting [coverage](https://www.pcmag.com/news/firefox-redesign-will-see-compact-density-option-disappear "PCMag: Firefox Redesign Drops Compact Density Option") has resulted in consternation among Firefox users.

As a member of the community, I thought that it would be interesting to walk through how Firefox could continue to support a compact mode in its UI, improving user experience and engagement, while reducing the risk of user attrition through the redesign. The ideas are presented as a *Project Brief*, [adapted from Asana's template](https://jackiebo.medium.com/asanas-spec-template-spec-training-33bfd9d4dd32), and shared on the web to be [broadly accessible](https://www.otsukare.info/2021/03/16/working-tips-remote-team).

##### Updates

2021-03-21 - Updated the Goals and Hypothesis sections based on feedback. The goals are now more in line with user goals. Some of the goals felt more like *my* goals. The hypotheses try to predict what will happen if we follow the brief, instead of unknowns about users.

**Note: This is not an official plan.**

Discuss this post on [Reddit](https://www.reddit.com/r/firefox/comments/mafwuj/supporting_compact_mode_in_firefox_proton/).

* * *

{:toc}
* toc

## Background

Most users of desktop web browsers are using browsers with always visible [UI chrome](https://en.wikipedia.org/wiki/Graphical_user_interface#User_interface_and_interaction_design). This UI allows users easy access to core browser features like browser buttons, the URL field and tabs. Always visible chrome has benefits, freeing users from needing to locate it each time they want to perform a function. The benefit comes at a cost, however - reducing the amount of space available to users for content.

The Proton UI refresh expands the vertical space taken up by Firefox chrome compared to its [Photon UI](https://www.youtube.com/watch?v=tJG278nX6dM), and compared to competing browsers from Google and Microsoft. As the design decreases the content to chrome ratio, there is risk of user attrition to competing browsers. User experience may also suffer, with users needing to scroll more often in web pages, or having to pan more often in graphics editors or mockup tools.

Including an option to increase information density can serve as a competitive advantage, especially in markets with a higher share of low resolution displays. Additionally, user experience can be enhanced for users who use multiple windows or applications on screen at once.

## Problem Statements

1.  I am a Firefox user with a low resolution display who would like to maximize my screen real estate for web pages. The upcoming Proton UI refresh increases usage of screen real estate compared to previous versions of Firefox and to competing browsers, which makes me feel disappointed in Firefox and curious about alternatives.
    
2.  I am a Chrome user who would like to make my UI smaller. There is no option to do this, which disappoints me.
    
3.  I am a Firefox user that has multiple windows and applications on the screen at once, so I want to minimize screen real estate from application toolbars. I like Firefox, but the new Proton UI makes it harder for me to fit as many windows on screen as I prefer, making me feel annoyed and decreasing my productivity.
    
4.  I am a browser user who sees a screenshot of Firefox in compact mode and want to replicate the look. But I don't know how to enable it, which makes me feel like Firefox could do more to guide me.
    

## Goals

- **Improve Firefox user satisfaction and retention via display density configurations**: This will increase user satisfaction of Firefox through a UI that fits their workflows or display resolutions. Existing users accustomed to the Photon UI can be successfully retained because their workflows are not interrupted upon release of the Proton UI refresh. Success here is if Firefox users are satisfied with their display density options within the Firefox UI.
- **Demonstrate differentiation with competitors through richer UI configuration**: This will ensure that Firefox remains the preferred choice for users that prefer being able to customize their UI experience. Success here is when there is are UI options in Firefox that encompass a range of options depending on workflow or screen size - e.g. from a large high-DPI display, to a touchscreen, to a low-end laptop.
- **Ensure that Firefox is more optimized for low resolution displays than the competition**: This will ensure that Firefox remains the preferred choice for users that prefer space-saving UIs. Success here is when there is an option for a UI in Firefox that uses less vertical space than competitors.

### Non Goals
{:.no_toc}

**Vertical tabs/hiding the tabstrip**: There is interest in this feature to reduce the amount of vertical space used by the browser, since many screens in use are wider than they are tall. This is not a goal for this brief, as this requires much more effort than refreshing Photon compact mode for Proton, and because it doesn't solve the same problems the density option does (see the [vertical tabs](#vertical-tabs) section for more discussion).

## Hypothesis

- The presence of screen density configurations will allow Firefox users to retain better, especially during the Proton transition
- Increased discoverability of density configuration options will drive awareness of the feature, increasing overall usage and blunting the default effect
- Awareness of density configuration options in Firefox will give Firefox an edge when under consideration by users that prefer customization, or are using lower resolution displays

## Vision Narrative

### Melisande, the Business Boss
{:.no_toc}

Melisande is a longtime Firefox user on a subnotebook - she's always on the go, and the small size complements her lifestyle. 

Often, when editing spreadsheets, Melisande finds herself having to scroll up and down to compare figures. One day, her Firefox updates and it shows an [upgrade notification dialog](https://bugzilla.mozilla.org/show_bug.cgi?id=1697222 "Bug 1697222 - Show tab modal for existing users on upgrade highlighting Proton improvements"), and she loves the way it looks - it looks shinier than before, and there is even a cool [purple theme](https://addons.mozilla.org/en-US/firefox/addon/firefox-alpenglow/ "Firefox Alpenglow"). 

There is an option below the themes that says she can make it *Normal*, and she tries it for a moment. It takes up a lot more space on her tiny display and she switches it back.

Melisande is happy because she has a new purple theme and didn't have to sacrifice any additional screen space for it.

### Sol, the Work-From-Home Parent
{:.no_toc}

Sol is a new parent who has been working from home due to the coronavirus pandemic.

Sol has many one-on-one meetings over video, and Sol likes to have their notes visible on-screen to give their interlocutor their undivided attention.

This means having multiple applications open on their screen at once: a notes app, a browser with reference material, and relevant emails in an email client. Sol also has a view from their child's webcam on their screen at all times.

One day, Sol decides to try Firefox, after a coworker mentioned to them that the container feature could be useful for their work.

After the installation, Sol goes through the welcome screen. The last step shows some themes that they can try, and they see some additional options below the theme choices – Compact, Normal and Touch. Sol picks *Compact*, because they need to have a lot of information in front of them at the same time.

Happily, Sol finds that the compact mode is even more space efficient than their previous browser, and finds that they have to scroll less through their notes while in a meeting, helping them maintain rapport with their team members.

Sol also loves the container feature, and tells all their friends about Firefox, maintaining that it is the best browser for anyone because of how customizable it is.

### Nicole, the Web Developer
{:.no_toc}

Nicole is web developer whose screen is covered with browser windows and terminals. She uses a [tiling window manager](https://en.wikipedia.org/wiki/Tiling_window_manager) to manage her windows.

Nicole uses Chrome, but is exploring a switch to Firefox because she read that Firefox was gaining [hardware accelerated video support](https://www.phoronix.com/scan.php?page=news_item&px=Firefox-79.0-Available), and she is interested in not getting overheated as she watches tutorials while coding.

Nicole installs Firefox and is pleased to find that the vertical space it takes up is less than Chrome. She often has two browser windows on the left half of her screen, one with API documentation, the other with searches related to her code. The right side of her screen contains her development environment.

Nicole discovers that Firefox shows its bookmarks toolbar on opening any new tab, which she finds annoying - she doesn't use the toolbar, because she is keyboard driven and finds that the location bar works fine to help her easily find what she is looking for.

She right clicks on the toolbar and looks for an option to disable it - which she finds easily. She also sees the **Customize Toolbar...** menu option, which sounds interesting, so she selects it.

After adding the *Developer* button to her toolbar, she notices more options at the bottom of the dialog. She sees **Density** (she's not totally clear about what that means) and selects the *Compact* option.

Nicole finds that the compact density option is surprisingly useful when she has two windows stacked atop each other and when vertical space is at a premium. She appreciates that Firefox wastes less of that space than other browsers, and she's happier with Firefox than she was with Chrome.

Now all she needs to do is convince her manager to let her fix some of the issues her app has in Firefox...

## Rough Scoping & Timeline

### Pre-work and Experimentation

We need to do some preliminary work and would like to run some experiments to better understand the trade-offs and the ground truth today. This is starting today and will continue through the Firefox 89 release cycle.

Some of this work is already in progress.

- [x] Ensure that compact mode works acceptably in Proton.
- [x] Ensure that we can measure the usage of compact mode vs. normal mode.
- [x] Gather information on the effective display resolution of screens.
{: style='list-style-type: none'}

### Experimentation

- [ ] Enable Proton to Nightly 89 population
- [ ] Run an experiment to see which density setting is preferred by existing Firefox users.
- [ ] Run an experiment to measure the effect of the removal of density options in the customize UI on engagement and churn metrics.
{: style='list-style-type: none'}

### Development

Over the Firefox 89 release cycle, continue to develop two features:

1. Defaulting to ideal display density
2. Show density options in Firefox upgrade notification

### Testing & Release

The two features can be tested in nightly and late beta for Firefox 89 and ride along to release in 90.

## Key Trade Offs & Decisions
{:.no_toc}

### Vertical Tabs
{:.no_toc}

There is interest in this feature and worth consideration. However, this feature is not a replacement for the compact density option:

#### Lack of Interest
{:.no_toc}

- [Tab Center](https://wiki.mozilla.org/Firefox/Tab_Center), a Firefox Test Pilot experiment, was [retired](https://discourse.mozilla.org/t/whats-all-this-about-sunsetting-tab-center/15999/7) and not promoted for inclusion or further experimentation due to lack of engagement. While this was in 2017, it is not clear what has changed since then to make this feature more attractive.
- [Tree Style Tab](https://addons.mozilla.org/firefox/addon/tree-style-tab/), the Firefox add-on with the most users for this feature, has only 147,330 users today.

#### Creates New Problems
{:.no_toc}

- Vertical tabs subtract horizontal space from viewports, which can cause responsive pages to display layouts more focused torwards tablet or mobile users. In the worst case, pages may require horizontal scrolling, which is less convenient for users.
- Vertical tabs take up additional space when used in tiling window managers, taking valuable horizontal real estate.

These are not issues when using existing horizontal tabs.

## Concept Mockups

### Density Options in Firefox Upgrade Notification

<p>
<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-proton-upgrade-density-options-mockup.webp">
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-proton-upgrade-density-options-mockup.png">
	  <img src="{{site.url}}/assets/images/firefox-proton-upgrade-density-options-mockup.png" alt="Firefox Proton upgrade density options mockup"/>
	</picture>
  <figcaption>Mockup of the Firefox Proton upgrade tab modal with density options appearing below the theme selection</figcaption>
</figure>
</p>

This mockup shows the Firefox upgrade notification that appears on upgrade to the Proton UI. The notification presents the new Proton UI and allows users to select from some built in themes. The density options are shown directly below the theme selection, since they are both options related to the visual appearance of the browser. Firefox automatically selects the density based on the resolution of the screen, but users can easily change the selection based on their preference.

### Density Options on Firefox Welcome

<p>
<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-welcome-density-options-mockup.webp">
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-welcome-density-options-mockup.png">
  <img src="{{site.url}}/assets/images/firefox-welcome-density-options-mockup.png" alt="Firefox Welcome density options mockup"/>
	</picture>
  <figcaption>Mockup of the Firefox Welcome screen with density options appearing below the theme selection</figcaption>
</figure>
</p>

This mockup shows the welcome screen that appears on new Firefox profiles, and which allows users to select from some built in themes. The density options are shown directly below the theme selection, grouped in a logical way. The defaulted density is set to the ideal density based on the smallest screen connected to the computer. The mockup shows Firefox in compact mode, and like the theme option in Firefox today, updating the selection takes place immediately.

### Toolbar Density Contextual Menu Item

<p>
<figure>
  	<picture>
  	  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-toolbar-context-menu-proton-mockup.webp">
  	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-toolbar-context-menu-proton-mockup.png">
  <img src="{{site.url}}/assets/images/firefox-toolbar-context-menu-proton-mockup.png" alt="Firefox toolbar context menu mockup"/>
  	</picture>
  <figcaption>Mockup of the <strong>Toolbar Density</strong> contextual menu item in the Firefox toolbar</figcaption>
</figure>
</p>

This mockup shows a **Toolbar Density** menu item upon context clicking the Firefox toolbar, making it more visible and grouped with other relevant options. This makes the option more discoverable than using the **Customize Toolbar...** menu item, and can be used without having to enter an explicit customize mode.

### Customize UI in a Sheet

<p>
<figure>
    	<picture>
    	  <source type="image/webp" srcset="{{site.url}}/assets/images/firefox-customize-sheet-mockup.webp">
    	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox-customize-sheet-mockup.png">
  <img src="{{site.url}}/assets/images/firefox-customize-sheet-mockup.png" alt="Firefox customize UI in a sheet"/>
    	</picture>
  <figcaption>Mockup of the Firefox customize UI as a tab modal sheet, like Print Preview</figcaption>
</figure>
</p>

The mockup above shows the customize UI in Firefox (the screen that appears after context clicking the toolbar and selecting **Customize Toolbar...**). It is a modal dialog, appearing in a sheet. There are two ideas presented here:

* the density option is presented closer to both the entry point in the UI where the user began their actions, and also to the toolbar being customized
* the density option is presented in a standard dropdown control, making it simple to see the current selection, and making it easier to discover that it can be modified

# Project Proposal

## Proposal

### Pre-work and Experimentation

We need to do some preliminary work and would like to run some experiments to better understand the trade-offs and the ground truth today.

Some of this work is already in progress.

- [x] Ensure that compact mode works acceptably in Proton. [Tim Nguyen](https://bugzilla.mozilla.org/user_profile?user_id=445472) has done some work here in bugs [1697293](https://bugzilla.mozilla.org/show_bug.cgi?id=1697293 "Bug 1697293 - Improve Proton compact density") and [1697623](https://bugzilla.mozilla.org/show_bug.cgi?id=1697623 "Bug 1697623 - Improve proton compact density - round 2").
- [x] Ensure that we can measure the usage of compact mode vs. normal mode. If we don't have this data, it is hard to make further decisions. This was added in bug [1698100](https://bugzilla.mozilla.org/show_bug.cgi?id=1698100 "Bug 1698100 - Record usage of compact mode in telemetry").
- [ ] Gather information on the effective display resolution of screens. This is important because current data available in telemetry reports on a screen's physical pixel size, not necessarily the scaled size as seen by users. This is being tracked in [bug 1698896](https://bugzilla.mozilla.org/show_bug.cgi?id=1698896 "Bug 1698896 - Collect telemetry on users' virtual resolutions as well as physical resolution").
- [ ] Run an experiment to see which density setting is preferred by existing Firefox users. As Proton significantly changes the size of the UI, it would be helpful to know whether users defaulted to a compact density prefer to move to the normal density, or vice versa. This has been proposed in bug [1698171](https://bugzilla.mozilla.org/show_bug.cgi?id=1698171 "Bug 1698171 - Run an experiment to determine user preference for Normal vs Compact UI density in Proton"). Since setting a default [increases the likelihood that it is chosen](https://en.wikipedia.org/wiki/Default_effect), we can assume that a higher percentage of change from the default indicates less satisfaction with the defaulted option.
- [ ] Run an experiment to measure the effect of the removal of density options in the customize UI on engagement and churn metrics. Similar to the last experiment, with the additional change in both the control and experimental groups to remove the option to change the density. To ensure that we don't confound the results, we should ignore results where the density *has* been changed (e.g. via `about:config`) and study engagement and churn after the change. We hypothesize that the disallowing a change from normal density will result in increased churn and decreased engagement vs. the experiment where users can choose their density option.
{: style='list-style-type: none'}

This work gives us the current status of the usage of this feature, and also gives us better understanding about user preferences. We also gather some additional data that we don't currently have about effective display resolutions, which may be different from the data driving current assumptions. By ensuring that our experiments measure usage over time, including before and after the Proton UI redesign, we are better equipped to understand whether Proton itself increases the desire for a more compact UI. Additionally, we are better able to measure the effect of removing the option, which will let us understand the risk of churn or negative changes to engagement metrics in our release population.

### Features

#### Defaulting to the Ideal Display Density

This feature will provide the optimal experience for users based on their screen size. User research shows that [bigger is better](https://www.nngroup.com/articles/utilize-available-screen-space/ "Nielsen Norman Group - Utilize Available Screen Space") in user interfaces, but that  users prefer greater information density at smaller screen sizes. Thus, we can optimize our defaults such that both user groups are catered to - our ideal display density.

Large screens (≥1080 vertical pixels) will default to "normal" density, while screens with shorter vertical real estate will default to the "compact" density.

This default will apply to new installs or profiles.

#### Show Density Options in Firefox Upgrade Notification

This feature provides a way for users to discover and update the density options on upgrade to Proton.  We do this by updating the [upgrade notification highlighting Proton improvements](https://bugzilla.mozilla.org/show_bug.cgi?id=1697222 "Show tab modal for existing users on upgrade highlighting Proton improvements") to include a migration to the ideal default density, and a visible option to modify the default, alongside the theme selection prompt.

This will serve to highlight both Proton and the density options, and reduce churn from defaulting to a non-ideal density setting.

#### Future: Improving Discoverability of Compact Mode

After the initial release to release Firefox, we can add additional functionality to ensure that we make the feature known to users who may not have been defaulted to their ideal resolution (see *[Risks & Mitigations](#risks--mitigations)* section below).

- [ ] Add a "Toolbar Density" context menu item to the toolbar to allow for fast switching and easy discovery of the density options. This will allow users to update this setting without needing to enter an explicit customization mode.
- [ ] Explore renaming "Density" to "Spacing". Microsoft and Apple appear to prefer to use the word spacing, rather than density to refer to information density in UIs. Using words that users are familiar with in similar contexts can improve discoverability. 
- [ ] Explore moving the customize UI to a sheet, like the new Print Preview dialog. This will allow the density options to be closer to the entry point where customize is entered. 
- [ ] Explore updating the customize UI to use standard labels and selects. If the density option is presented in a standard dropdown control, it is more discoverable that it can be modified.
- [ ] Add the density options to the welcome UI that appears on Firefox install
{: style='list-style-type: none'}

## Risks & Mitigations

### Updating Defaults for Existing Users

Updating the default density for existing Firefox users may be risky, even if the default density is the ideal.

We can mitigate this risk by:

1.  Setting a new preference to track whether the density setting is user set.
2.  Throttle updates to track engagement
3.  If engagement is damaged, we can flip the preference (users on larger screens may prefer compact)
4.  If engagement is unchanged after a preference flip, we can conclude that the visual refresh itself is the cause. If engagement is improved after the flip, we can discontinue the updating of defaults for existing users.

### Users on Multiple Screens May Have Multiple Ideal Densities

We expect that following the experiment plan will reveal an overall preference for smaller UIs on small screens and larger UIs on larger screens. Users with multiple monitors confound this assumption.

We can mitigate this risk by basing our default on the smallest screen the user has active. Since the compact density is similar in size to previous versions of Firefox, this mitigates the risk, as there is little change in what users are used to.

## Open Questions

- What is the current usage of the density options?
- Does user preference change based on the default density option?
- Does the Proton redesign change the desire for a density option?
- Does removing the option to change density change engagement or increase churn?

# Appendix: Research

- [Firefox Public Data Report](https://data.firefox.com/dashboard/hardware) shows ~30% of existing Firefox users use a display height of 768 pixels.
- Effective display resolutions may be smaller than physical resolutions due to [display scaling](https://docs.microsoft.com/en-us/archive/blogs/askcore/display-scaling-in-windows-10) at the operating system level, configured by PC vendors.
- NPD research shows that [66% of consumer laptops](https://www.laptopmag.com/articles/laptop-screen-resolution-ripoff) and [51% of business laptops](https://www.laptopmag.com/articles/businesses-shouldnt-buy-1366-laptops) sold in 2017 had resolutions lower than 1920×1080.
- More than a quarter of users outside North America, Oceania, and Europe have desktop screen resolutions at ≤768 vertical pixels (data from [StatCounter](https://gs.statcounter.com/screen-resolution-stats/desktop/)). In South America, this is the majority of users.

	| Region | Resolution | Share |
	|:--------|:-------:|--------:|
	| [Africa]({{site.url}}/assets/data/resolution-af-monthly-202002-202102-bar.csv)   | 1366×768   | 34.70%   |
	|    | 1280×720   | 4.37%    |
	|    | 1024×768   | 4.36%    |
	|    | 1360×768   | 1.44%    |
	|    |  **Total ≤768**  | **45%**
	|----
	| [Asia]({{site.url}}/assets/data/resolution-as-monthly-202002-202102-bar.csv)   | 1366×768   | 28.06%    |
	|    | 1280×720   | 5.55%   |
	|    | 1024×768   | 2.53%   |
	|    | 1360×768   | 1.57%   |
	|    |  **Total ≤768**  | **37%**
	|----
	| [South America]({{site.url}}/assets/data/resolution-sa-monthly-202002-202102-bar.csv)   | 1366×768   | 40.64%    |
	|    | 1360×768   | 4.13%   |
	|    | 1280×720   | 3.36%   |
	|    | 1024×768   | 2.78%   |
	|    |  **Total ≤768**  | **50%**

- User research shows that [bigger is better](https://www.nngroup.com/articles/utilize-available-screen-space/ "Nielsen Norman Group - Utilize Available Screen Space") in user interfaces, but warns against [chrome obesity](https://www.nngroup.com/articles/browser-and-gui-chrome/ "Nielsen Norman Group - Browser and GUI Chrome"), finding that users prefer greater information density at smaller sizes. Research also shows that we ought to [maximize the content-to-chrome ratio](https://www.nngroup.com/articles/content-chrome-ratio/ "Nielsen Norman Group - Maximize the Content-to-Chrome Ratio, Not the Amount of Content on Screen") - which is modulated by screen size.
- [Microsoft](https://support.microsoft.com/en-us/topic/how-to-change-the-spacing-between-desktop-icons-for-windows-8-made-easy-series-d24ef024-d605-4521-7cf4-79bbd560dbaf) and [Apple](https://support.apple.com/en-gu/guide/mac-help/mchlp2209/mac) use the word "spacing" rather than "density" to refer to options related to information density.
- User response to news that compact density may be removed from Firefox has been unenthusiastic on [Mozilla Discourse](https://discourse.mozilla.org/t/please-dont-remove-the-compact-density-option-for-the-proton-redesign/76038 "Please don’t remove the compact density option for the Proton redesign"), [Reddit](https://www.reddit.com/r/firefox/comments/m3fizq/i_want_you_remind_you_all_that_theres_currently/ "I want you remind you all that there's currently an ongoing bug ticket in Bugzilla to remove the Compact size preset from Firefox") and [Hacker News](https://news.ycombinator.com/item?id=26464533 "Mozilla plans to remove the Compact Density option from Firefox's Customize menu").