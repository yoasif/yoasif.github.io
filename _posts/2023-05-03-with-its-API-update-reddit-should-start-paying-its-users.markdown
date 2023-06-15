---
layout: post
title:  "With its API Update, Reddit Should Start Paying its Users (Or They Should Leave)"
date:   2023-05-03 10:44:00 -0400
categories: writing
tags: Reddit LLM AI
---

Reddit is one of the most popular social media sites on the web, with millions of users and communities dedicated to every topic imaginable. The platform is known for its user-generated content, with people sharing their thoughts, opinions, and experiences with the world. However, despite the value that user-generated content brings to Reddit, the platform does not currently compensate users for their contributions.

In this post, I argue that Reddit should begin to pay people for their contributions to the platform, or barring that, people should leave Reddit and share their writing in different ways.

* * *

{:toc}
* toc

Reddit recently announced that it will [begin to charge](https://www.reddit.com/r/reddit/comments/12qwagm/an_update_regarding_reddits_api/) for commercial usage of its API. The same day, the New York Times [reported](https://www.nytimes.com/2023/04/18/technology/reddit-ai-openai-google.html) that this change was spurred at least in part by the usage of Reddit data in large language models - or <abbr title="Large language models">LLMs</abbr>. 

A deep dive into <abbr title="Large language models"><a href="https://en.wikipedia.org/wiki/Large_language_model">LLMs</a></abbr> is definitely too complex for this post, but suffice it to say that it is a core component of what is now known as conversational AI, and that they are machine learning models trained on a corpus of data that provide the backing for what makes their output seem conversational.

Per the New York Times: "The underlying algorithm that helped to build Bard, Google’s conversational A.I. service, is [partly trained](https://aclanthology.org/W18-3022.pdf) on Reddit data. OpenAI’s ChatGPT [cites](https://cdn.openai.com/papers/gpt-4.pdf) Reddit [data](https://cdn.openai.com/papers/gpt-4.pdf) as one of the [sources](https://cdn.openai.com/better-language-models/language_models_are_unsupervised_multitask_learners.pdf) of information it has been trained on."

Founder and CEO of Reddit, Steve Huffman stated to the NYT that “the Reddit corpus of data is really valuable. But we don’t need to give all of that value to some of the largest companies in the world for free.”

I first came across this story via a post by [May likes products](https://mastodon.social/@productnerd) where she asked the obvious question -- if Reddit is going to start making money on this data, [are the creators of that data going to be paid](https://mastodon.social/@productnerd/110223407621857375)?

The irony here is that while Steve bemoans the loss of value to OpenAI and others, the very content creators who *created* the value that Reddit seeks to monetize are left out of the bounty, even as their continued cooperation is required to maintain the revenue they seek.

As Huffman said, “More than any other place on the internet, Reddit is a home for authentic conversation. There’s a lot of stuff on the site that you’d only ever say in therapy, or A.A., or never at all.”

## Before AI

Before widespread recognition of how AI products were using the Reddit corpus for conversational AI, Reddit users have long recognized that Reddit is used for research purposes. Indeed, Reddit for a long time has had [options](https://www.reddit.com/prefs/) to allow users' data to be used for research purposes.

<p>
	<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/reddit/reddit-privacy-options.webp,
	          {{site.url}}/assets/images/reddit/reddit-privacy-options-2x.webp 2x">
	  <source type="image/png" srcset="{{site.url}}/assets/images/reddit/reddit-privacy-options.png,
	  		  {{site.url}}/assets/images/reddit/reddit-privacy-options-2x.png 2x">
	  <img src="{{site.url}}/assets/images/reddit/reddit-privacy-options.png" srcset="{{site.url}}/assets/images/reddit/reddit-privacy-options-2x.png 2x" alt="Screenshot of Reddit's privacy options"/>
	  <figcaption>Reddit&#8217;s privacy options, showing the &ldquo;allow my data to be used for research purposes&rdquo; option</figcaption>
	</picture>
</figure>
</p>

Unfortunately, the [12 year old announcement of that preference](https://www.reddit.com/r/announcements/comments/ddz0s/reddit_wants_your_permission_to_use_your_data_for/) reveals that it really only applies to voting data that is not publicly available. 

The Reddit [user agreement](https://www.redditinc.com/policies/user-agreement) seems to disallow scraping:

> Access, search, or collect data from the Services by any means (automated or otherwise) except as permitted in these Terms or in a separate agreement with Reddit. We conditionally grant permission to crawl the Services in accordance with the parameters set forth in our robots.txt file, but scraping the Services without Reddit’s prior written consent is prohibited.

but it is routinely used in [hundreds of studies](https://journals.sagepub.com/doi/full/10.1177/20563051211019004) - either via the site itself or via its APIs.

Even before the widespread recognition and usage of conversational AIs like ChatGPT, researchers were grappling with questions of user consent over the usage of "participant" data, especially when replication is taken into consideration. 

As the authors of *[‘Scraping’ Reddit posts for academic research? Addressing some blurred lines of consent in growing internet-based research trend during the time of Covid-19](https://www.tandfonline.com/doi/full/10.1080/13645579.2022.2111816)* note: 

> Crucially, if a Reddit user becomes uncomfortable with something they have posted – for example, concerns that the posting may identify them or others, reflect an outdated opinion or feeling, or cause distress, they (almost always) have the option to return and remove this data from public access later. By replicating data without a user’s permission, any control that lies with the original poster is lost.
>
> &hellip;
>
> Postings utilised in these manners are de-localised from their original source and may exist in a permanent – replicable – archive, where the user now has no influence or control over their temporalities, nor how this content may be used in intended or unintended ways that could impact them negatively. While Reddit users consent to the replication and use of their posted content, this consent does not represent a de facto agreement for a permanent relinquishment of their autonomy over any later content controls. Most importantly, the Reddit user-agreement rationalises that by posting to Reddit, users consent to a wider-use of their posted data. If a user then chooses to delete their original Reddit posting, as some users later do, this should be taken as rationale for a *removal of consent* for user data to be used more widely, given that this data no longer exists in the original location for which rationale for duplication – and by extension, consent for replication – was first established.

The issues that the researchers confront here are magnified in the context of AI.

Unlike the replicated data that may be stored in researchers' data sets siloed into neat buckets that are unlikely to be reused or remixed, tools like ChatGPT are adept at taking disparate sources of data to reuse and rework them, removing context and provenance in the process. If data found in a researcher's data set is misused or a user wants to be cited specifically, that is likely possible. Not so in the world of black box <abbr title="Large language models">LLMs</abbr> as exist today - the companies are [extremely tight lipped about the data sources they use](https://gizmodo.com/chatbot-gpt4-open-ai-ai-bing-microsoft-1850229989), and I could find no way to request deletion of data that they were already using.

Clearly, there is evidence that responsible researchers have concerns about user consent in usage of social media postings - especially postings that have been deleted, where the question of whether the user has revoked consent is an open one. This doesn't seem to be a concern for the AI platforms, though. They just slurp up the data as it is available, and I see no indication that they have any interest in letting people opt out of their data being used, even as they face [lawsuits](https://githubcopilotlitigation.com/pdf/06823/1-0-github_complaint.pdf) accusing them of violating copyright laws. 

### The User Agreement

I have already referenced the Reddit user agreement in this post, so it is worth noting that Reddit is fully within its rights (per the agreement) to do exactly what it is planning on doing - to charge AI vendors for access to the Reddit corpus via its API firehose.

It is clearly stated in the agreement:

> When Your Content is created with or submitted to the Services, you grant us a worldwide, royalty-free, perpetual, irrevocable, non-exclusive, transferable, and sublicensable license to use, copy, modify, adapt, prepare derivative works of, distribute, store, perform, and display Your Content and any name, username, voice, or likeness provided in connection with Your Content in all media formats and channels now known or later developed anywhere in the world. This license includes the right for us to make Your Content available for syndication, broadcast, distribution, or publication by other companies, organizations, or individuals who partner with Reddit. You also agree that we may remove metadata associated with Your Content, and you irrevocably waive any claims and assertions of moral rights or attribution with respect to Your Content.

However, I think that it is obvious that given the sea-change that conversational AI represents (the "Godfather of AI" [recently quit Google](https://www.nytimes.com/2023/05/01/technology/ai-google-chatbot-engineer-quits-hinton.html) in order to warn about the dangers ahead, for example), most people didn't foresee that their commentary - freely given - would be used to create derivative works, *virtually without cost* - unlike the way most people generally conceived of how content is reworked or reused. 

Clearly, while Reddit is legally within its rights to monetize Reddit's content creators' content in this way, it should raise ethical concerns among those same creators and the broader public.

### Unpaid Labor

Reddit isn't new to monetizing labor provided by their userbase. Last year, a pair of studies led by Northwestern University found that [Reddit moderators do (at least) $3.4 million worth of unpaid work each year](https://news.northwestern.edu/stories/2022/05/unpaid-social-media-moderators/).

Reddit moderators volunteer to perform a range of tasks, including reviewing content, enforcing rules, and responding to user reports. Despite the significant amount of work that moderators perform for Reddit, they are not compensated for their labor.

While that hasn't led to any big shakeup in social media moderation -- imagine Reddit moderators organizing to demand pay, for example - it is worth recognizing just how valuable this type of labor is. Reddit would not be nearly as valuable to the AI companies if the platform was filled with spam and abuse -- if the platform wasn't so well curated. 

Beyond that, the site itself would not be as pleasurable for people to congregate on to share their own content if the moderators were not curating the "space" and culture of the online communities they moderate -- as Hanlin Li, a doctoral candidate at Northwestern University who led the research [stated](https://www.nytimes.com/2022/06/28/technology/online-moderators-compensation.html):

>“We want to make people understand that the discussions on Reddit don’t just emerge. It’s because these moderators are working to actively shape the communities. This is substantial labor that is subsidizing Reddit.”

### Other Social Media

Other social media has solved the problem of non-payment of social media contributions by&hellip; paying them. YouTube is likely the biggest and most prominent example, and they are [very open](https://www.youtube.com/howyoutubeworks/product-features/monetization/) about how it works. It is clearly not impossible for social media platforms to pay creators for the content that they produce. 

## The Status Quo

Reddit users may not previously have been aware that the AI products that they have been reading about and possibly even discussing on Reddit were trained with the content that they themselves had produced.

Reddit themselves may not have known that AI platforms had been replicating Reddit user data into the <abbr title="Large language model">LLM</abbr> datasets -- it seems to me that if they *had* known, they would not be complaining about it today and introducing a paid API.

Unfortunately, that leaves the userbase in a strange place. 

Unlike content creators on YouTube, who have access to control monetization of their content, and to earn money for their labor, Reddit provides no facility to users to disable monetization (all Reddit comments and posts are monetized) or to share in the takings. 

Indeed, Reddit has gone beyond monetization of content provided by its users, and has captured millions of dollars of labor by volunteer moderators whose activities cannot be construed simply as "sharing".

Clearly, Reddit was blindsided by some of this, just like much of society was surprised by the introduction of ChatGPT.

Still, Reddit recognizes the valuable contributions that moderators make, as I myself received an offer for gifts last year due to being a "dedicated moderator". The offers included perks like 6 months of unlimited access to Skillshare, and a one-time delivery of a snack box from SnackMagic. Heady stuff.

Reddit also recognizes the value that Reddit users pour into the platform, as its CEO's comments make clear. 

Reddit users that have thought about how the economics of how online forums worked were likely comfortable with the deal that they had signed up for - they joined the site, commented and posted for free -- and the site monetized that content to stay afloat (and make a profit). Reddit was even open source initially, making it seem particularly friendly to the nerdy userbase it initially attracted.

The value exchange feels like it has fundamentally shifted recently, however. 

With Reddit's announcement of monetization of its API - specifically targeting AI platforms (at least in part), Reddit seems to have tacitly endorsed the transformation and exploitation of its users' contributed content -- all without sharing with the userbase from the new revenue stream. 

I would have preferred a different response from Reddit. Instead of Reddit recognizing the effect that machine generated content will likely have on online communities made up of human commenters (that of dissolution), Reddit instead is going after the easy money. After all, why not simply take the money and run, rather than try to defend the intellectual property (and knowledge, and ingenuity) of the people who spend time contributing to the site? 

## Moving Forward

Reddit can still ameliorate the situation, to try to create a new covenant with creators. 

My preference would be for Reddit to disfavor the sale of user-generated content to AI-based products. From all the information we have, the content was copied from the publicly available site without permission, and it seems to also be against the existing Reddit user agreement. It doesn't seem like Reddit was asked for permission, and was likely just as surprised as most people.

At this point, it isn't clear that leadership at Reddit has done much more thinking about whether they *ought* to be in support of Reddit feeding <abbr title="Large language models">LLMs</abbr> -- they seem far more interested in taking advantage of a new revenue stream.

Reddit has been open about charging for API access, but has not given its userbase insight into what kind of thinking has occurred to make them believe that "AI" is good for Reddit, or for its users. It seems as if Reddit believes that they have a captive audience, and that people will simply go with the flow. 

I hope that isn't the case. Reddit comments and posts are the most valuable commodity that Reddit has in its possession, and it requires continued upkeep. History is littered with the memories of dead or forgotten social media companies -- remember Digg and MySpace? Even with consolidation in the space, people have a choice to participate, and continued participation isn't guaranteed. 

### Deleted Comments and Posts

The original content already copied into <abbr title="Large language models">LLMs</abbr> is likely a lost cause - AI-based products seem unlikely to remove the original data posted by Reddit users unless they are forced to. Unfortunately, unlike the programmers in the GitHub lawsuit and the [artists](https://gizmodo.com/free-ai-art-stability-midjourney-deviantart-sued-getty-1849995371) in other lawsuits, Reddit doesn't seem to have anything other than a pecuniary interest in the content shared by its userbase. 

I'm not optimistic that Reddit will demand that companies remove already copied data from black box <abbr title="Large language model">LLM</abbr> data stores, even as they ask the AI vendors to pay for access to the firehose of user-generated content via their API. Sure, platforms didn't ask Reddit for permission, but they can still be forgiven - but that won't happen if Reddit doesn't ask.

Even if Reddit doesn't demand a complete removal of Reddit user data from <abbr title="Large language models">LLMs</abbr>, it ought to ask the platforms to remove data that has been removed by the users who originally posted them. 

The academic literature I referenced earlier touches on this -- and the reason is simple. While a poster may have initially wanted their content to be freely available on Reddit (and the web), they later revoked that permission by removing that content. While Reddit undoubtedly has the legal right to reuse and republish that data, it is not clear to me that the AI companies do, especially barring an explicit agreement from Reddit or the original posters. 

So even if *Reddit* has the legal right to the deleted content, it is not at all clear that the AI companies do. They don't have *moral* rights to the content -- even if we wanted to argue about singular pieces of content that were particularly newsworthy, no such evaluation is taking place at the AI platforms. They have reportedly copied wholesale user-generated content, perhaps with some filtering, but without regard to other considerations.

Sites that have archived Reddit user data have recognized the moral right for content creators to revoke permissions to their contributed data, by [not showing user deleted comments](https://www.reveddit.com/about/faq/#user-deleted). Reddit even used to provide lip service to this sentiment (as Reveddit's developer [noted](https://www.reddit.com/r/removeddit/comments/ir1oyw/comment/g5fgxgl/?context=3)), [saying that](https://www.reddit.com/r/privacy/comments/j11sda/reddit_has_updated_its_privacy_policy/) "Privacy is core to our DNA, our culture, and our values. We are committed to making our policies clear and focused **on empowering users to be masters of their identities—and their data**." (emphasis added)

While that line has never been part of the Reddit user agreement, Reddit seemed to recognize that while it has the legal right to content posted on Reddit, that its moral rights are subservient to the users - that the *users* are the masters of their data.

Clearly, neither the AI products nor Reddit are standing by that sentiment today. 

Even if Reddit doesn't ask companies to remove already copied data from the Reddit archive, it can accomplish that goal via an update to their API agreement as part of a new policy that clarifies the usage of deleted data. 

Reddit can simply state that the <abbr title="Large language models">LLMs</abbr> must keep track of whether Reddit user data is *at present* available via the site or API, and remove the content if it is removed by the original poster. That simple step can help Reddit preserve user agency and let Reddit stay true to the sentiment it expressed to its userbase three years ago - that users are masters of their data.

That change would clarify to both the Reddit community and consumers of AI platforms that the Reddit user data that is part of the <abbr title="Large language model">LLM</abbr> corpus continues to be freely given - and that they are willing to be part of the corpus. 

### New Options

Reddit is demanding that companies building AI products pay up for the content produced by its userbase but has provided no way for its userbase to opt out of this value exchange. 

If Reddit updates its policy prescription to disallow <abbr title="Large language models">LLMs</abbr> to store data deleted by its userbase without corresponding controls on the side of content creators, Reddit would leave itself and its userbase in an objectionable position. 

That would mean that people who want their content to be accessible across the platform, *but not on external <abbr title="Large language models">LLMs</abbr>* would be stuck needing to delete their content from Reddit to remove it from <abbr title="Large language models">LLMs</abbr>. That hurts the content creator, the community (broken, context free conversations aren't good) and Reddit - since the site would be missing those comments and posts. The future in that world doesn't look much better - creators would be forced to post and delete later -- helping promote the broken feel of posts where comments have disappeared. 

Reddit can return control of user data to their userbase by adding a new option to Reddit preferences. Call it "**allow my data to be used by large language models**" with a link to some help.

<p>
	<figure>
	<picture>
	  <source type="image/webp" srcset="{{site.url}}/assets/images/reddit/reddit-privacy-options-proposed.webp,
	          {{site.url}}/assets/images/reddit/reddit-privacy-options-proposed-2x.webp 2x">
	  <source type="image/png" srcset="{{site.url}}/assets/images/reddit/reddit-privacy-options-proposed.png,
	  		  {{site.url}}/assets/images/reddit/reddit-privacy-options-proposed-2x.png 2x">
	  <img src="{{site.url}}/assets/images/reddit/reddit-privacy-options-proposed.png" srcset="{{site.url}}/assets/images/reddit/reddit-privacy-options-proposed-2x.png 2x" alt="A mockup of Reddit's privacy options"/>
	  <figcaption>Reddit&#8217;s privacy options, showing an added &ldquo;allow my data to be used by large language models&rdquo; option</figcaption>
	</picture>
</figure>
</p>

The new checkbox would allow Reddit content creators to indicate to Reddit (and to its AI-based consumers) that their content is ineligible for consumption by <abbr title="Large language models">LLMs</abbr>. That both clarifies user intention around <abbr title="Large language model">LLM</abbr> usage of their data, and allows Reddit and the community to make use of the content as they did previously. 

This would avoid a situation whereby Redditors would remove old content -- and more importantly, make Redditors feel comfortable posting *new* content to the site. 

### Revenue Sharing

For content creators who want to make their content available to AI products, Reddit should also sweeten the deal by sharing revenue back to those creators. Pricing around this is likely to be complex, as it is not clear what types of data the <abbr title="Large language models">LLMs</abbr> find to be valuable. The conversation about this may help give Reddit and its userbase some insight into what kinds of content are most desirable and valuable.

Reddit's CEO says that Reddit is "a home for authentic conversation" and that there's "a lot of stuff on the site that you’d only ever say in therapy, or A.A., or never at all" - it would be interesting to know whether that is the stuff the <abbr title="Large language models">LLMs</abbr> are interested in,	 or whether they are more interested in open ended questions that conversational AIs seem to struggle with - subjective evaluations like the best restaurants in an area, or whether someone's new dress fits them well. 

Either way, it ought to strike people as unfair that the only people getting paid for AI are the people who have rapaciously stolen the building blocks that make it valuable from people who remain uncompensated for the very labor that is predicted to [precipitate job losses](https://www.bloomberg.com/news/articles/2023-05-01/ibm-to-pause-hiring-for-back-office-jobs-that-ai-could-kill#xj4y7vzkg).

Will Reddit pay? I'm not optimistic. While Reddit has made some paltry gestures to its moderator community, it has not evinced that it is interested in paying back the millions of dollars in value that it captures from them - in a task that is time-consuming and can be emotionally taxing. 

If Reddit doesn't pay, and doesn't add new options to allow people to opt out of having to contribute to <abbr title="Large language models">LLMs</abbr>, people can (and should) stop posting and commenting. While I'm sure Reddit management will call foul and say that nothing has changed, it is obvious that things have changed. 

Not only has Reddit user's content been taken to power AI products, Reddit has taken steps to recapture the value generated by the AI products. Reddit used to pay lip service to the idea that content creators are masters of their data, but their actions today don't even bother to do that. 

Their latest update says:

>As Reddit continues to grow, providing updates and clarity helps developers and researchers align their work with our guiding principles and community values. We’re committed to strengthening trust with redditors and driving long-term value for developers who use our platform. 

-- [An Update Regarding Reddit’s API](https://www.reddit.com/r/reddit/comments/12qwagm/an_update_regarding_reddits_api/)

There is nothing there for the people generating the content that makes Reddit so valuable - just value extraction for the developers who take advantage of it. 

Is it time to leave Reddit? It just might be. 

Without a renegotiation of the terms by which Reddit users have long contributed to the platform, users may feel that they are being taken advantage of. The deal has shifted, and it now feels like there is a real power imbalance at play. Like with moderators, Reddit is now *taking advantage* of content creators who post and comment on the site. 

I don't think it is likely that Reddit will pay people for their <abbr title="Large language model">LLM</abbr> contributions, as they already don't pay for *any* content on the site - unlike YouTube (for example). I also don't think that people who are posting on Reddit for free today are even motivated by money. If they were, they would spend their time writing on platforms like Medium and Substack. I think that people who post on Reddit want to *share* with a community. The sharing is with *people*, though - not with machines - and certainly not with machines that can then be used to create new writings that are a mimesis of genuine sharing.

Reddit has an easy escape valve though. Just:

* ensure that deleted content doesn't appear in <abbr title="Large language models">LLMs</abbr>
* provide users with an option to control whether their content appears in <abbr title="Large language models">LLMs</abbr>

Barring that, users can go to other platforms. Perhaps people can even go back to a decentralized web, publishing on their own blogs (like this one!), or on forums that place stronger restrictions on machines slurping up their data. 

If <abbr title="Large language models">LLMs</abbr> are going to make writing worthless, humans can at least make AI companies work harder for it. Go out and find our writing on the wider web, rather than a neatly packaged bundle on Reddit. Or, barring that, at least pay us for the privilege.

---

Feel free to give me feedback on this post on [Hacker News](https://news.ycombinator.com/item?id=35803445). You can also message me on [Mastodon](https://mastodon.social/@yoasif).