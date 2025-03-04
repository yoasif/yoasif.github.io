---
layout: post
title:  "Who else is surprised that Mozilla uses &ldquo;technical and interaction data&rdquo; for advertising purposes on the New Tab Page?"
date:   2025-03-02 06:07:03 -0500
categories: social posts
tags: firefox privacy
external-url:
image: /assets/images/social-previews/firefox.png

---

[Mozilla's legal updates from last week]({% post_url 2025-02-26-mozillas-new-terms-of-use-are-out-of-step-with-firefoxs-direct-competition %}) are the gift that keep on giving.

I first saw that Mozilla said that users can opt out of having their data processed for advertising purposes by turning off a setting related to "technical and interaction data” in [TechCrunch coverage of the new terms](https://techcrunch.com/2025/02/28/mozilla-responds-to-backlash-over-new-terms-saying-its-not-using-peoples-data-for-ai/). I initially disbelieved what I had read, thinking that it must be in error - so I [responded to the reporter asking for clarification](https://mastodon.social/@yoasif/114082976581721155) 😳.

Clearly, I should have looked at the Privacy Notice before posting 😔. 

#### Extract from the Firefox Privacy Notice

| What we use your data for                                    | What data we process                                                                                                                                                                                                 | Our lawful basis                                                                                                                                                                              | More information, including choosing how you want to share this data in Firefox                                                                                                                                                                                                         |   |
|--------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---|
| To serve relevant content and advertising on Firefox New Tab | {::nomarkdown}<li>Technical data</li><li>Location</li><li>Language preference</li><li>Settings data</li><li>Unique identifiers</li><li>System performance data</li><li>Interaction data</li><li>Search data</li>{:/} | Legitimate interest in providing you content that  you’re interested in and making sure that the ads you see are relevant  (which supports our ability to provide our products and services). | You can read more information about [how to manage your New Tab page](https://support.mozilla.org/kb/customize-your-new-tab-page) including your [data settings](https://support.mozilla.org/kb/sponsor-privacy). You can opt out of having your data processed for personalization or advertising purposes by turning off “technical and interaction data” on [Desktop](https://support.mozilla.org/kb/technical-and-interaction-data) and [Mobile](https://support.mozilla.org/kb/technical-and-interaction-data) at any time. |   |

I was so certain that there was no way that the setting related to "technical and interaction data” was connected to data processed for advertising, that when I finally read the Privacy Notice later in the week, I surprised myself.

My immediate reaction was that is incredibly unintuitive: Mozilla is using data that it has access to only because I want to help Firefox *development* -- for **advertising**. 

After some quick testing, I found that you can disable the sharing of "technical and interaction data” and still receive ads on the New Tab page. It seems that opting to not assist Firefox technical development grants users additional privacy from advertising. *This is completely surprising to me.*

<p>
	<figure>
	<picture>
	  <img src="{{site.url}}/assets/images/social/posts/firefox-data-collection-135-2x.png" alt="Screenshot of Firefox's Data Collection and Use preferences panel" id="screenshot" />
	  <figcaption>Firefox 135's &ldquo;Data Collection and Use&rdquo; panel</figcaption>
	</picture>
</figure>
</p>

I [want to help Mozilla build Firefox](https://bugzilla.mozilla.org/user_profile?user_id=347239), so I have always had this setting enabled.

Am I reading this wrong?

## Feedback

### Mozilla was upfront about this / <abbr title="read the fucking manual">RTFM</abbr>

You might respond that Mozilla was [upfront](https://lemmy.dbzer0.com/comment/17032600) about this preference.

I admit that I didn't look deeply into this before posting, but I looked after I got this feedback.

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

I don't see any reference on the help pages linked above to the new recommendation [provided on the privacy notice](https://www.mozilla.org/en-US/privacy/firefox/#notice:~:text=products%20and%20services%29.-,You%20can%20read%20more%20information%20about%20how%20to%20manage%20your%20New%20Tab%20page%20including%20your%20data%20settings.%20You%20can%20opt%20out%20of%20having%20your%20data%20processed%20for%20personalization%20or%20advertising%20purposes%20by%20turning%20off%20%E2%80%9Ctechnical%20and%20interaction%20data%E2%80%9D%20on%20Desktop%20and%20Mobile%20at%20any%20time.,-To%20provide%20Mozilla) to turn off the setting related to "technical and interaction data".

On the contrary, in both cases, Mozilla is seemingly telling us that NTP interactions are explicitly *not* linked to Firefox technical and interaction data (*my* **emphasis** added):

> By default, when stories are recommended on your [New Tab page](https://support.mozilla.org/en-US/kb/about-new-tab-page), Firefox collects data on how often they appear and how many times they are clicked. **This data is not linked to any technical or interaction information about you or your Firefox browser.**

Here, Mozilla says that interactions with stories displayed on the New Tab page are **"not linked to any technical or interaction information about you or your Firefox browser"**. What this is saying seems pretty self evident - Mozilla is saying that New Tab story data is not linked to "technical or interaction" information - they even use the exact words that appear in the UI (and in the Privacy Notice).

> When you view or click on a sponsored shortcut, Firefox sends [anonymized technical data](https://www.mozilla.org/privacy/firefox/#recommend-relevant-content) to our partner through a Mozilla-owned proxy service. The code for this proxy service is available [on GitHub](https://github.com/mozilla/gcp-ingestion) for interested technical audiences. **This data does not include any personally identifying information and is only shared when you click on a sponsored shortcut.**

Mozilla says that data about interactions with sponsored shortcuts are **"only shared when you click on a sponsored shortcut"** via a Mozilla-owned proxy service. There is no mention here of *linking* that data with personally identifiable information, and Mozilla even says that "this data is ... only shared when you click" -- Firefox telemetry data is not sent on demand!

As far as I can tell, Firefox help was not upfront about this, but please correct me with any additional references to documentation.

### "This was in the privacy notice"

Let's take a look: [Firefox Privacy Notice: Effective May 13, 2024](https://web.archive.org/web/20250221202435/https://www.mozilla.org/en-US/privacy/firefox/).

Mozilla makes a few mentions of the New Tab page within the **Recommend relevant content** section:

> **Technical & interaction data:** Firefox sends us data such as the position, size and placement of content we suggest, as well as basic data about your interactions with content. This includes the number of times content is displayed or clicked. We use technical and interaction data in order to better understand our users and improve our product.
>
> **Recommendations:** We may recommend content to you based on your browsing history, language, and country location. The process of deciding which stories you should see based on your browsing history happens locally in your copy of Firefox, and Mozilla does not receive a copy of your browsing history. Mozilla does receive aggregated data about the recommendations you see and click. We also share aggregated data about the sponsored content you see and click with our third-party ad platform Kevel so advertisers can see how many people click on their articles. This aggregated data does not identify you personally.
>
> **Top Sites:** When you click on a Sponsored Top Sites tile on New Tab, we share your country, region, county (if you’re in the US), the tile you clicked, and the time you clicked with AdMarketplace (a third-party referral platform) to verify you navigated to the website. Firefox does not share your IP address or any other information that could be used to identify you.

This section of the old Privacy Notice is incredibly confusing. 

Mozilla says (in very obfuscated fashion) that Firefox's **"technical and interaction data"** encompass the available ad slots in Firefox, and how users interact with content (*ads*), including impression count and number of clicks. Mozilla also (erroneously) claims that this data is used to "better understand our users and improve our product".

Mozilla then goes on to say that they "share aggregated data about the sponsored content you see and click with our third-party ad platform Kevel" and that "this aggregated data does not identify you personally". There is no explanation given on how to opt out of this sharing.

Mozilla ends this area by describing that if a user clicks on a sponsored tile, data is shared with AdMarketplace. They go on to say that "Firefox does not share ... any other information that could be used to identify you".

**What's the takeaway here?** It's honestly hard to hazard a guess. I'll simply note that Mozilla doesn't say with clarity what they say in the new Privacy Notice - that "you can opt out of having your data processed for personalization or advertising purposes by turning off 'technical and interaction data' ... at any time."

I'll leave it up to the reader to decide if this was "clearly disclosed" or "upfront".

### "Technical and interaction data" is not personally identifiable

In the [figure above](#extract-from-the-firefox-privacy-notice), Mozilla states that "unique identifiers" are processed to serve ads.

### "You didn't read the settings"

Look at the [screenshot](#screenshot) of the settings. Help us by pointing me to where users could have understood this from the settings.

### Ads are optional / You can use a blank new tab

I know that ads are optional. I just don't expect that after sharing technical and interaction data to help improve Firefox, that Mozilla would turn around and monetize that technical data by linking it to advertising data in ways that Mozilla [specifically disclaims](#mozilla-was-upfront-about-this--rtfm) in their documentation.

[^1]: "[Content recommendations on the Firefox New Tab page - FAQ](https://support.mozilla.org/en-US/kb/new-tab/revision/285809)"  Sep 30, 2024, 11:09:15 AM.
[^2]: "[Sponsored shortcuts on the New Tab page](https://support.mozilla.org/en-US/kb/sponsor-privacy/revision/277826)"   Mar 12, 2024, 2:17:43 PM.

---

{% include donate-social.html %} You can also message me on [Mastodon](https://mastodon.social/@yoasif).
