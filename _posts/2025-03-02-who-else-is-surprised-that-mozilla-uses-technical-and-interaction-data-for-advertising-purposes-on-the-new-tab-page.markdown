---
layout: post
title:  "Who else is surprised that Mozilla uses &ldquo;technical and interaction data&rdquo; for advertising purposes on the New Tab Page?"
date:   2025-03-02 06:07:03 -0500
categories: social posts
tags: firefox privacy
external-url:
image: /assets/images/social/posts/firefox-data-collection-135-2x.png

---

[Mozilla's legal updates from last week]({% post_url 2025-02-26-mozillas-new-terms-of-use-are-out-of-step-with-firefoxs-direct-competition %}) are the gift that keep on giving. Take a look at the table below (extracted from the Firefox [Privacy Notice](https://www.mozilla.org/privacy/firefox/#notice)):

| What we use your data for                                    | What data we process                                                                                                                                                                                                 | Our lawful basis                                                                                                                                                                              | More information, including choosing how you want to share this data in Firefox                                                                                                                                                                                                         |   |
|--------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---|
| To serve relevant content and advertising on Firefox New Tab | {::nomarkdown}<li>Technical data</li><li>Location</li><li>Language preference</li><li>Settings data</li><li>Unique identifiers</li><li>System performance data</li><li>Interaction data</li><li>Search data</li>{:/} | Legitimate interest in providing you content that  you’re interested in and making sure that the ads you see are relevant  (which supports our ability to provide our products and services). | You can read more information about [how to manage your New Tab page](https://support.mozilla.org/kb/customize-your-new-tab-page) including your [data settings](https://support.mozilla.org/kb/sponsor-privacy). You can opt out of having your data processed for personalization or advertising purposes by turning off “technical and interaction data” on [Desktop](https://support.mozilla.org/kb/technical-and-interaction-data) and [Mobile](https://support.mozilla.org/kb/technical-and-interaction-data) at any time. |   |

Is it just me, or is it completely unintuitive to share advertising data as part of technical and interaction data?

<p>
	<figure>
	<picture>
	  <img src="{{site.url}}/assets/images/social/posts/firefox-data-collection-135-2x.png" alt="Screenshot of Firefox's Data Collection and Use preferences panel" />
	  <figcaption>Firefox 135's &ldquo;Data Collection and Use&rdquo; panel</figcaption>
	</picture>
</figure>
</p>

I [want to help Mozilla build Firefox](https://bugzilla.mozilla.org/user_profile?user_id=347239), so I have always had this setting enabled. It is completely surprising to me that people who disable this setting get the ads on the New Tab Page *without additional tracking*.

Am I reading this wrong?

## Feedback

I got a comment after posting that Mozilla was [upfront](https://lemmy.dbzer0.com/comment/17032600) about this preference.

I'll admit that I didn't look deeply into this before posting, but after I saw the comment, I looked.

On the [Content recommendations on the Firefox New Tab page - FAQ](https://support.mozilla.org/en-US/kb/new-tab#w_data-and-privacy)[^1], Mozilla says:

> **Is data collected when I interact with New Tab recommendations, and what controls do I have?**
>
>By default, when stories are recommended on your [New Tab page](https://support.mozilla.org/en-US/kb/about-new-tab-page), Firefox collects data on how often they appear and how many times they are clicked. This data is not linked to any technical or interaction information about you or your Firefox browser. You can learn more about the [data we collect](https://github.com/mozilla/activity-stream/blob/master/docs/v2-system-addon/data_events.md) and [opt out data collection](https://support.mozilla.org/en-US/kb/share-data-mozilla-help-improve-firefox) if you prefer.
>
>If you choose topics of interest to personalize your recommendations, the selected topics will be collected to improve the relevance of the recommended articles and sponsored content on your New Tab page. This information is also not associated with any technical or interaction data about you or your Firefox browser. 

On [Sponsored shortcuts on the New Tab page](https://support.mozilla.org/en-US/kb/sponsor-privacy#w_what-data-is-shared)[^2], Mozilla says:

> **What data is shared?**
>
> When you view or click on a sponsored shortcut, Firefox sends [anonymized technical data](https://www.mozilla.org/privacy/firefox/#recommend-relevant-content) to our partner through a Mozilla-owned proxy service. The code for this proxy service is available [on GitHub](https://github.com/mozilla/gcp-ingestion) for interested technical audiences. This data does not include any personally identifying information and is only shared when you click on a sponsored shortcut.

I don't see *any* reference on the help pages above to the new recommendation provided on the privacy notice to turn off the setting related to "technical and interaction data".

On the contrary, in both cases, Mozilla is seemingly telling us that NTP interactions are explicitly *not* linked to Firefox technical and interaction data (my emphasis):

> By default, when stories are recommended on your [New Tab page](https://support.mozilla.org/en-US/kb/about-new-tab-page), Firefox collects data on how often they appear and how many times they are clicked. **This data is not linked to any technical or interaction information about you or your Firefox browser.**

> **This data does not include any personally identifying information and is only shared when you click on a sponsored shortcut.**

How were end users supposed to glean something different?

[^1]: "[Content recommendations on the Firefox New Tab page - FAQ](https://support.mozilla.org/en-US/kb/new-tab/revision/285809)"  Sep 30, 2024, 11:09:15 AM.
[^2]: "[Sponsored shortcuts on the New Tab page](https://support.mozilla.org/en-US/kb/sponsor-privacy/revision/277826)"   Mar 12, 2024, 2:17:43 PM.

---

{% include donate-social.html %} You can also message me on [Mastodon](https://mastodon.social/@yoasif).
