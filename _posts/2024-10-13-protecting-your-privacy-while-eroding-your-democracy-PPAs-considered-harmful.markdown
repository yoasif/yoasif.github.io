---
layout: post
title:  "Protecting Your Privacy While Eroding Your Democracy: Apple&rsquo;s and Mozilla&rsquo;s PPAs (Privacy Preserving Ad Attribution) Considered Harmful"
date:   2024-10-13 01:37:00 -0400
categories: writing
tags: Firefox advertising
---

The last few weeks have been interesting if you follow Firefox news. [Mark Surman](https://blog.mozilla.org/en/mozilla/digital-advertising-privacy/) (President, Mozilla Foundation) and [Laura Chambers](https://blog.mozilla.org/en/mozilla/improving-online-advertising/) (CEO, Mozilla Corporation) wrote posts saying that “Mozilla is going to be more active in digital advertising”. Predictably, there are a rash of articles and commentary about this – Mozilla being a punching bag online for its supposed adherents seems inevitable nowadays.

This is not a post about that. Instead, those events led me to try to think a bit more deeply about the <abbr title="Privacy-Preserving [Ad] Attribution">PPA</abbr> technologies that [Apple](https://webkit.org/blog/8943/privacy-preserving-ad-click-attribution-for-the-web/) and [Mozilla](https://blog.mozilla.org/netpolicy/2024/08/22/ppa-update/) have variously built and proposed in service of improving privacy in browsers – and what it means for the web generally.

---


These browser vendors have produced browser-based <abbr title="Privacy-Preserving [Ad] Attribution">PPA</abbr> (Privacy-Preserving [Ad] Attribution) technologies that attempt to establish a world where “advertising online happens in a way that respects all of us, and where commercial and public interests are in balance”.[^1] Unfortunately, after studying each proposal, I predict they will inadvertently lend themselves to further incentivize the publication and spread of low-quality information (including misinformation), polluting the information landscape and threatening democracies worldwide.

{:toc}
* toc

## Background

The individual proposals[^2] [^3] that browser vendors have designed are a response to the way that attribution reporting is currently done on the web. Traditionally on the web, attribution requires individualized tracking of users, to connect ad placement impressions and interactions with outcomes. Privacy advocates argue that individual tracking of users is not privacy-respecting, so browser vendors have proposed building features into browsers to aggregate advertising metrics without identifying individuals.

### Attribution

First – let’s define what is commonly referred to as “attribution” in digital advertising and marketing. [Attribution](https://en.wikipedia.org/wiki/Attribution_(marketing)) refers to the identification of an action or actions that someone took that ended in a desired outcome. Marketers may then assign value to each of those events. 

An example that reflects a real-world experience may be instructive: One fine day, you are browsing a news site, and you see an ad for a Coach wallet. You click the ad and buy the wallet. What might at first appear to be a simple action is, in the background, the start of a cavalcade of digital wizardry to qualify you as a customer and track your engagement with the advertisement.

Let’s break down how this works behind the scenes:

#### Current Ad-Tech

1. You visit a news site. The publisher of the site has embedded code that lets a third-party ad network (e.g., Google AdSense, PubMatic) put a **cookie** in your browser data ([cookies](https://en.wikipedia.org/wiki/HTTP_cookie) are small amounts of arbitrary data that sites can access the next time you visit them). The ad network places a **unique identifier** into the cookie that allows it to [uniquely identify](https://youtu.be/VqeX8S9ldbU?si=6r2U7KdHTLGZtgJE&t=83) your browser the next time your browser encounters the ad network again. 
2. While browsing the news site, you see an ad for a Coach wallet. The ad network has identified your browser with a unique identifier via the cookie stored in your browser data, and it shows you an ad (an **impression** event). It then sends a message back to the ad server to record that a browser with your unique id was served the Coach ad.
3. You click on the ad, which takes you to Coach’s site. Coach has helpfully *also* embedded the third-party ad network code on its site, so the ad network is able to re-identify you by reading the cookie it placed on your browser data when you first visited the news site.
4. After browsing Coach’s site, you decide to buy the wallet. After you check out, the ad network sends a message back to their ad server to record your purchase as a **conversion** event (you bought the wallet after interacting with their ad).
5. The ad network **attributes** the sale (the conversion event) to the ad you clicked on, because the cookie that was placed during your visit to the news site tracked your browser via the unique identifier across the news site to Coach’s site.

Privacy advocates will note that ad networks can track browsers across multiple sites, and many can also track people across devices. Many can additionally identify people’s real-world identities.

#### The Proposed Alternative

I won’t attempt to condense pages of technical documentation from the vendor proposals into a few sentences – so I will instead collapse Apple’s and Mozilla’s proposals into a scenario analogous to what exists on the web today. Refer to the technical details at your liesure.[^2] [^3]

1. You visit a news site. The publisher of the site has embedded code that lets a third-party ad network put impression events into your browser data.
2. While browsing the news site, you see an ad for the Coach wallet. The ad network stores an **impression** event in your browser data.
3. You click on the ad, which takes you to Coach’s site. Coach has helpfully also embedded the third-party ad network code on its site.
4. After browsing Coach’s site, you decide to buy the wallet. After you check out, the ad network stores a **conversion** event in your browser data.
5. Your browser aggregates the impression and conversion events for your browsing history, adds some noise, then sends the aggregates to a trusted third party. Importantly, no identifiers that uniquely identify your browser are sent along.
6. The ad network **attributes** impressions and conversions in aggregate to the sites where the impression events occurred.

### Comparison & Takeaways
Let’s compare the existing approach and the new proposals to better understand where they diverge:

|  | Current Ad-Tech | Browser-Based Proposals |
|---|---|---|
| Tracking Mechanism | Third-party cookies, cross-site tracking | Aggregated, event-level tracking in browsers |
| User Identification | Tracks individual users across websites | Does not identify individual users |
| User Privacy | Low: cookies track browsers across sites, browsers can be matched to real world identities | High: browsers cannot be identified individually |
| Granularity of Attribution | High: user-level, precise attribution | Low: aggregated data per site, attribution cannot be mapped to single events |
| Ad Attribution Accuracy | Accurate: event level data is available to publishers and advertisers; data can be modeled for predictive analytics | Estimated via aggregated, anonymized data |
| Data Portability | High: user data can be easily shared across ad networks and reused | Low: aggregated data has limited potential for reuse |

## Analysis
We now have an idea of what two of the major browser vendors are proposing as an alternative to the current ad-tech ecosystem. There is no doubt that from an individual perspective, privacy will be massively improved. It is also worth noting that both [Safari](https://webkit.org/blog/9521/intelligent-tracking-prevention-2-3/) and [Firefox](https://support.mozilla.org/en-US/kb/enhanced-tracking-protection-firefox-desktop) default to behaviors that these proposals emulate; limiting insights obtained from third-party and ad network cookie data about individual users.

Browser vendors are also [working to standardize](https://github.com/patcg/private-measurement/issues/9) these technologies so that they are available cross-browser. 

If standardized, I believe that the net effect of browser-based attribution will be to massively increase the supply of sites “acceptable” to advertisers, degrading the overall quality of the web, by enabling profitable business models for low quality sites.

Mozilla’s documentarians implicitly recognize this, writing that:

>The value that an advertiser gains from attribution is enormous. Attribution can be the difference between an advertising-dependent business surviving or failing.

and that

>Making advertising better makes it possible for more sites to function using the support that advertising provides.

Mozilla is telling us that it is worth trying to solve this problem in a way that is less invasive so that people can continue to access websites that are ad-supported. 

The proposals are being presented while the industry is experiencing a sea-change in content production via AI. These technologies taken in concert both lower the cost of production of content based sites and enables nascent publishers to generate previously inaccessible revenues, *expanding* the number of ad-supported sites that people can visit.

An increased supply of sites isn’t necessarily an unvarnished good, however. 

### A (Supply) Lurch Right

Content farms and spam sites have been a part of the web for as long as web advertising has existed. These sites try to capture ad revenues from people visiting their sites by delivering cheaply produced, low quality content. Search engine relevancy algorithms like PageRank have worked to make these sites less valuable, by directing less web traffic to them. Automated relevancy algorithms have worked to limit how valuable these sites can become and constrained their supply – since they are not very valuable, they do not bear increased investment.

The advent of cheap (or free) AI is working to change that calculus. Popular tech news sites like CNET have “quietly” begun [publishing articles generated entirely by AI](https://futurism.com/the-byte/cnet-publishing-articles-by-ai). While that decision [backfired](https://www.cbsnews.com/sanfrancisco/news/cnets-decision-to-write-stories-with-ai-backfires/), AI content has [quickly become pervasive on Facebook](https://archive.ph/2JNKK) – a site with 2.11 billion daily active users.

As [Jason Koebler](https://mastodon.social/@jasonkoebler) writes:

>The platform has become something worse than bots talking to bots. It is bots talking to bots, bots talking to bots at the direction of humans, humans talking to humans, humans talking to bots, humans arguing about a fake thing made by a bot, humans talking to no one without knowing it, hijacked human accounts turned into bots, humans worried that the other humans they’re talking to are bots, hybrid human/bot accounts, the end of a shared reality, and, at the center of all of this: One of the most valuable companies on the planet enabling this shitshow because its human executives and shareholders have too much money riding on the mass adoption of a reality-breaking technology to do anything about it. 

This is content that did not exist previously, that would have been too *expensive* to exist previously. 

That explosion of cheap and free content marks a change in the information economy, as Mark Zuckerberg (CEO of Meta, Facebook’s parent company) [points out](https://www.theverge.com/24253481/meta-ceo-mark-zuckerberg-ar-glasses-orion-ray-bans-ai-decoder-interview):

>I think individual creators or publishers tend to overestimate the value of their specific content in the grand scheme of this.

In conjunction with this shift of supply of content [to the right](https://www.economicsonline.co.uk/competitive_markets/shifts_in_supply.html/), relevancy engines are consuming and resurfacing the cheap AI-generated content, polluting our information ecosystem.
An assumption built into the browser-based <abbr title="Privacy-Preserving [Ad] Attribution">PPA</abbr> proposals is that “advertising is a key commercial engine of the internet, and the most efficient way to ensure the majority of content remains free and accessible to as many people as possible.” [^4]

With the advent of AI, it is not clear to me that “the majority of content” remaining accessible is an aspiration worth holding onto – the majority of content will be *bad*.

### Lowering the Barrier to Entry for Smaller, Lower-Quality Publishers

In the past, content farms and spam sites were fairly easy to detect, and they could be ranked lower in relevancy algorithms, and were less likely to be shared on social media. That is quickly changing – researchers at the University of Maryland found that [no publicly available AI detectors are sufficiently reliable in practical scenarios](https://www.trails.umd.edu/news/detecting-ai-may-be-impossible-thats-a-big-problem-for-teachers), saying that “They have a very high false-positive rate, and can be pretty easily evaded… I think we should just get used to the fact that we won’t be able to reliably tell if a document is either written by AI — or partially written by AI, or edited by AI — or by humans.”

Low-quality publishers can generate more content at a lower cost with AI, crowding out higher quality content that costs more to produce. At the same time, the *perceived* quality of this content has risen, making it harder for audiences to tell the difference.

Worse yet, browser-based measurement proposals exacerbate the growing problem of an increasingly low-quality information landscape. They prioritize performance metrics that offer a higher return on investment, while obscuring important factors -- such as the quality of information and audience -- that are harder to quantify.

### How Budgets Migrate From Good Sites to Bad

As I studied the proposals, I came across [Don Marti](https://federate.social/@dmarti)’s posts on [PETs](https://blog.zgp.org/pet-projects-or-privacy/) (his term for “privacy-enhancing technologies”), and quickly realized that some of his thoughts might be hard to follow to those who aren’t well-versed in advertising technologies.

He says that “PETs don’t fix revenue issues for ad-supported sites. The fundamental good ad/bad site problems and bad ad/good site problems are still there. PETs make it safer and easier for an advertiser to run ads on sites they don’t trust, so they help crappy infringing or AI-generated sites compete with legit ones in the same ways that third-party cookies do,” [^5] and that “when the same measurement system covers both harmful and win-win ad placements, it creates incentives for advertisers to chase the best possible metrics while creating the least possible value for the user. In a sustainable system, the user, or some party that the user trusts to provide an ad-supported resource, would be a data gatekeeper to keep data from leaking into the negative-sum corners of the Internet.” [^6]

There’s a lot to unpack here, so I’ll go step by step, connecting the dots.

Marti is essentially making an argument for *quality*, and saying that a sustainable system is one that enriches users, publishers and advertisers. 

#### A Performance Marketing Campaign

It is instructive to walk through an example advertising campaign to understand how an advertiser’s tactics might change. 
As the browser-based proposals focus on *attribution*, it is simplest for us to focus on a performance marketing campaign.

| **Campaign Name** | McDonald’s Celebrity Meal Autumn 2024 |
| **Date Range** | October 1 – October 31 |
| **Budget** | $1,000,000 |
| **Audience Segments** | Fast Food Enthusiasts

McDonald’s is coming out with a [new celebrity meal](https://archive.ph/twdWB) to drive sales to younger consumers.

##### The Current Advertising Landscape

We’re interested in the web for our example campaign, so we’re ignoring the social platforms. My campaign manager is [trafficking](https://www.publift.com/blog/ad-trafficking) the campaign in a [DSP](https://en.wikipedia.org/wiki/Demand-side_platform).

We are running the campaign on a CPM cost basis – this is the “cost per mille” or cost per thousand impressions. While there are other buy type options like CPA (cost per action), the publishers I am running my ads on prefer a CPM cost basis.

I plan to run my ads in locations at most 5 miles from a McDonald’s (targeting postal codes), and I will layer in an audience segment of “Fast Food Enthusiasts” to help me get a better ROI. I’m adding a frequency cap of 5 per day and a total of 15 per week, so that I don’t overspend my budget on active browsers. My plan is to allow the DSP to set a bid price automatically, not exceeding a $10 CPM. The DSP offers an option to restrict my campaign to the top 250 vetted sites in their network, so I do that in order to ensure that my ads appear on “good” sites.

My goal for the campaign is for people to click through to the McDonald’s website and to order the new celebrity meal, for delivery or pick-up.

Additionally, I plan to optimize my CPA to be as low as possible, by taking advantage of campaign reporting in my DSP.
 
###### Optimization

After the campaign runs for a day, I run a report and compute my cost per conversion by site. I find that the cost per conversion is higher for more popular sites. Intuitively, this makes sense. On a popular site with many active users, I have more competition for the ad slot, so I start off by paying more per impression – unless people on those sites were more inclined to be *hungry*, the context where the ad was served doesn’t change the likelihood that someone is going to purchase the meal after seeing the ads.

At this point, to back into a lower CPA for purchases of the celebrity meal, I lower my target CPM to $7, because I saw in my reporting that I was achieving that price on a number of sites that my ads ended up running on.

The next few weeks go well, and I am under budget – I have spent through only 65% of my budget after 3 weeks. I decide that since the campaign has gone so well, I will try to expand my audience pool in the last week, to try to get better value, and to understand customer availability on the sites I can advertise on.

I do this by:

* Lowering my target CPM to $5
* Expanding my site list to the top 500 sites

What does this accomplish?

**Lowering my target CPM to $5**: By lowering the target CPM, I am hoping to achieve a lower effective CPA for my campaign. 
   
**Expanding my site list to the top 500 sites**: Expanding my site list allows me to expand my reach; while this exposes my brand message to less “premium” sites, I may still be able to find users that are both in the postal codes I am interested in, and are part of the “Fast Food Enthusiasts” audience segment.

During the last week, I am pleased to find that the DSP has managed to spend through the rest of my budget, and the average CPM for the last week of the campaign was $3.59, with similar conversion rates as the prior weeks (when my campaign was restricted to “premium” publishers only).

It is worth comparing this to the same campaign run using the browser-based proposals. 

##### The Browser-Based <abbr title="Privacy-Preserving [Ad] Attribution">PPA</abbr> Proposals

Browser-Based attribution technologies limit the number of levers available to advertising operations managers to optimize campaigns.

In my previous campaign, I was able to modify my campaign tactics to take advantage of market dynamics. While I was able to target an audience segment in my previous example, browser-based attribution systems encourage ad-tech systems to get away from tracking individual users, so we aren’t able to target users by audience.

Postal code targeting will still be available, as this is generally reliant on GeoIP databases or services that map IP ranges to locations.

The only levers available to me on the open market are price, location (via postal code targeting), device type, and site.

##### The Differences

In my traditional ad-tech campaign, I am able to easily select from audience segments that initially boosts my performance – I am showing ads to people that have previously expressed interest in fast food – to the point that the audience segment provider has further categorized them as “enthusiasts”. If the McDonald’s celebrity meal features a celebrity that is gender-coded in their fan-base, I could have restricted my campaign to run only for browsers where we expect that the user is the gender we are interested in. The same goes for age group – if the fandom is younger, we can restrict our campaign to be shown to younger audiences.

Beyond that, the lack of the kind of audience data that traditional ad-tech has gotten used to disallows marketing techniques that are both readily available today, and would continue to be available on sites or platforms where tracking occurs by the first-party.

For example: **retargeting** and **remarketing**.

In the existing ad-tech ecosystem, audience data is a commodity that is bought and sold. The audience segment that I applied to the example campaign earlier likely has a fee attached; you are paying a fee to pre-identify users that are likely to be amenable to your marketing message. McDonald’s is paying so that it has to do less discovery to find those people most interested in fast food.

But paying a data broker for audience data isn’t the only way to access an audience.

The classic ways that advertisers try to save on paying for audience data are ones that prioritize ownership of brand data. 

###### First-Party Data

The first of these examples is first-party data. In my example campaign, my goal was to get consumers to purchase a celebrity meal. When people go through the checkout process on their online device, McDonald’s (the first-party) is able to uniquely identify the person (via their name, email address, phone, etc.) along with the browser they are using. This data can be used in a future campaign – for a new celebrity meal, or for a new campaign entirely.

One observes that this data is even more valuable than the data that data brokers may be selling McDonald’s – we have already managed to identify people who have purchased a product from us – the people in a fast-food enthusiast segment I buy off the shelf may include enthusiasts of Taco Bell, KFC and Subway – they might be interested in celebrity burgers, but they may not be.

This focus on first-party data also helps to explain why every fast-food vendor wants us to install their app. It not only provides an easy way for consumers to provide the brand with valuable first-party data (and money!), it is also a marketing channel in itself. (Yes, I have received notification ads from Uber encouraging me to use Uber Eats to get McDonald’s delivered 😫. I hope you haven’t.)

In the existing ad-tech ecosystem, McDonald’s can take the audience data of the people who bought a celebrity meal and *remarket* to them at a later date – that is, they don’t have to pay a data broker for that “Fast Food Enthusiasts” audience segment – they can use their own first-party data for targeting in a new campaign.

Marketers can be even more creative than in my previous example. If I were willing to spend on a more speculative investment, I could have *removed* the audience targeting for fast food enthusiasts. By removing targeting, I am saving paying a data broker, and I am also opening up my advertising message to a wider audience. Here, I can bid for impressions at a lower rate and hope to find people who want a celebrity meal that may not have been in the audience segment the data broker sold me. Once they have purchased a meal, I now have their data.

I’m increasing my marketing effectiveness, and the brand is seeing increased profits.

This is also a technique impossible to accomplish with the browser-based proposals we’re discussing. Even if I know who bought a McDonald’s celebrity meal recently, I can’t find those people again on the wider web – we have virtually anonymized audiences

###### Second-Party Data

An advertiser may use second-party data to *remarket* to an audience. An example of this is that after the celebrity meal campaign ends, I can follow up on a new campaign to people who *interacted* with my ad but did not purchase. Here, I can offer coupons for the celebrity meal, or for a similar product.

This allows advertisers a second use for the investment they have made in their initial campaign. A key point to recognize here is the value of the data that is generated by the campaign – data that is not accessible when using browser-based attribution tracking.

###### The Platforms

You may not have the McDonald’s app installed, but are you on social media?

Social media is a massive destination for all ages, and advertisers are increasingly flocking to it as well. Advertisers are attracted to the social platforms for a number of reasons: the audiences are there (massive reach across populations), they are generally “brand safe” environments (although this is changing), and they boast identification of both real-world identities and profiles.

This means that instead of trying to find your audiences on the wider web, you have a one-stop shop to advertise to virtually any audience – and these audiences have helpfully identified themselves – they tell us their interests, the things they buy, their friends, and often their real names. On Facebook, *everyone* [knows you are a dog](https://en.wikipedia.org/wiki/On_the_Internet,_nobody_knows_you%27re_a_dog) (because you posted multiple galleries of yourself).

Even if you aren’t using your real name on the social platforms – are you using an email address that identifies your real-world identity (how about your phone number?)? Chances are, the platform knows who you are – and they are letting advertisers “know” too.

As this kind of identification and tracking doesn’t rely on the web platform via third-party cookies and funky JavaScript on publisher sites, browsers can do nothing about blocking it. When advertising on the platforms, users have no way of hiding who they are (if they are logged in), so advertisers can be more confident about the audiences that they are advertising to.

---

Marti’s point is that PETs help to nullify the differences between sites – if an advertiser gets better performance from a cheaper site, *ceteris paribus* the advertiser will want to pay the lower amount.

#### Why Pay More?

Why does it matter to an advertiser whether a site is good or bad? Why should they pay more to show a marketing message to the same person in a different place?

There is research that shows that ads perform “better” on better sites – [Comscore found](https://www.comscore.com/Insights/Presentations-and-Whitepapers/2016/The-Halo-Effect-How-Advertising-on-Premium-Publishers-Drives-Higher-Ad-Effectiveness) that “premium publisher sites had an average of 67% higher brand lift”. Studies have even found that ads seen on high-quality sites were [shown to be](https://integralads.com/uk/insider/halo-effect-study/) 74% more likable and demonstrated 20% higher engagement.

Given that information, advertisers generally try to run “brand” campaigns on higher quality sites, because they feel that the publisher’s quality halo will rub off on the advertiser's brand but may be more willing to advertise on lower quality sites when they have an explicit call to action that they can “optimize” toward.

Advertisers aren’t paying more out of the goodness of their hearts, or because they want to fund the quality content being produced on the sites they are advertising on – it is the *perception* of quality and the associated halo effect that they are after.

Unfortunately, this means that in an agent-based world, everyone will try to get a discount – either by running a “brand” campaign on a site that *appears* to be high quality but isn’t (like an AI-generated site with subtle misinformation throughout), or by searching for “performance” on sites that are edgier, less “brand-safe”.

The current system isn’t necessarily one that is healthy -- advertising revenue for US newspapers has declined steadily. In 2020, circulation revenue surpassed advertising revenue for the first time since 1956 (the first year where data was available), while nearly half (48%) of revenue came from online advertising, up from 19% in 2012.[^7]

News use across online platforms is fragmenting, with only 22% identifying news websites or apps as their main source of online news – that’s down 10 percentage points on 2018.[^8]

The news business [is grim](https://archive.ph/TZvQ9), with newspapers shedding reporters, and with the US losing [one-third of its newspapers and two-thirds of its newspaper journalists](https://ny1.com/nyc/all-boroughs/news/2023/11/16/local-news-outlet-decline-report) since 2005.

If advertisers aren’t paying for quality, what *are* they paying for?

In today’s world, the abundance of data generated from running campaigns is part of what advertisers are paying for. It makes intuitive sense – the data is collected by an ad server, it is valuable, so the advertiser wants it.

Tomorrow, in a world where that data isn’t generated by running campaigns on browser-based attribution, I strongly suspect that CPMs will go down across the board for websites where proprietary data isn’t in use. We all know that data is valuable; the loss of it will result in a loss of value. I do not believe that advertisers will continue to pay existing rates – advertisers will feel a loss of value and will respond by paying less.

Advertisers’ search for value won’t stop at demanding lower prices in exchange for less data.

The [optimization](#optimization) process we went through is a search for value. The levers that the advertiser modifies in their DSP platform of choice in response to campaign data is a profit maximization process – get the most impressions, clicks, conversions for the least amount of money.

How does an advertiser do this in the world of browser-based attribution?

It seems to me that the only thing an advertiser can do to modify their campaign performance is the site list. On the web, advertisers no longer have access to features that help advertisers distinguish between audiences – just the site. 
This isn’t anything new, of course – contextual relevancy is exactly how the earliest web advertisements worked – if you are a car company, it makes sense to advertise on *cars.com*. Unfortunately, this only works on a few sites (or site sections) that are organized by topic. The number of impressions available to advertisers are limited on a single site, so advertisers are unlikely to be able to run a campaign solely on contextually relevant domains (and sections).

This means that advertisers will search to reach consumers by adding additional sites to their campaign.

Why will this happen?

I don’t think that this will cause an immediate change on brand campaigns, as a goal for those campaigns is often to be seen alongside high-quality publisher brands.

It seems more likely that the loss of retargeting and remarketing capabilities will push advertisers lower down the quality axis of their site list in search for value.

Ultimately, this means more investment into lower quality sites, all while sites are seeing downward price movement (due to the loss of audience data), greater supply (due to AI) and job loss for content production (exacerbated by AI).
I posit that a greater investment into low-quality sites will work to help crowd out good information and threaten democracy. 

### The Information Landscape

As Yuval Noah Harari [points out](https://www.facebook.com/thedailyshow/videos/is-having-more-information-a-good-thing/1238639067527890/), having more information isn’t necessarily a good thing: "It’s basically like thinking that more food is always good for you… There is a limit to how much food the body needs, and in a similar way, there is a limit to how much food for the mind the mind needs – which is information. And the same way that there is so much junk food out there, there is also so much junk information out there – we basically need to go on an information diet.”

People may also be [more convinced by disinformation generated by AI](https://www.technologyreview.com/2023/06/28/1075683/humans-may-be-more-likely-to-believe-disinformation-generated-by-ai/), with researchers saying that “The fact that AI-generated disinformation is not only cheaper and faster, but also more effective, gives me nightmares.”

Thinkers across the political spectrum recognize that democracies require a reliable flow of information,[^9] [^10] while academics recognize that [misinformation has already damaged democracies](https://www.sciencedirect.com/science/article/pii/S2352250X23001562).

Even if discounting the effect of AI-generated content, the information landscape is not one that is conducive to rewarding quality content. X (formerly Twitter) performs no fact checking on its platform, and X Premium [incentivizes people to spread misinformation](https://www.poynter.org/fact-checking/2024/how-elon-musk-twitter-takeover-accelerated-misinformation/) by allowing authors to monetize their posts. Newschecker managing editor Ruby Dhingra says that “That incentivizes people to write things that might not necessarily be true or that might create controversy.”

While top advertisers have either [paused campaigns](https://www.cnn.com/2023/11/22/tech/brands-pausing-ads-x-elon-musk-crisis/index.html) or [left the platform](https://www.cnn.com/2024/09/05/business/advertisers-x-withdrawal/index.html), media buyers [observe](https://www.campaignlive.com/article/we-cant-brands-ever-returning-agency-leaders-advertising-x/1885851) that the platform is filled with “cheap inventory”, with advertisers benefiting from cheaper CPMs and the “astronomical” reach of the platform.

The advertisers [taking their place](https://www.reddit.com/r/Twitter/comments/1896e5u/comment/kbppcak/) are the kinds of brands we expect to see more often in a performance marketing context: “various crypto scams, shopping sites no one has ever heard of, Temu.”

We are watching the corrosive effects of a low-quality information landscape occurring in real-time. After moderation efforts to combat disinformation on X were discontinued, low-quality information exploded, causing inventory quality to decline, followed by an observation that the platform is now a place where ad buyers can get good value.

Continued advertising investment into X incentivizes the production of low-quality, low-cost content, especially content that is misleading or polarizing, to capture revenues.

Browser-Based attribution helps to bring this content onto the wider web.

### The Platforms Leak Onto the Web

Currently, social media platforms like Facebook, YouTube, Twitter offer easy ways to publish content or syndicate to content published elsewhere. The platforms are where people are, and the recommendation algorithms provide audiences a way to discover your content and even to monetize it.

The web is harder to get started on – you need to buy a domain name, set up a CMS, create content – and then you need to figure out monetization. Social platforms get rid of most of that friction, letting creators focus on creating.

At the same time that the supply curve of content shifts right, browser-based attribution comes onto the scene, obviating the differences between sites in a performance context, enabling discounts to be found along the long-tail of low-quality content.
While browser-based attribution technologies did not create low-quality information or the means to produce it, it helps make this content more valuable by making it more easily monetizable.

Similarly to how the platforms reduced barriers to entry for creators to monetization, browser-based attribution helps to create a market for low-quality content – as Twitter morphed into X and became a lower quality information environment, the audiences got cheaper, so advertisers took advantage of the value. As I have demonstrated, browser-based attribution technologies create incentives to disinvest in higher quality content in search of value.

As advertisers continue to search for value, low-cost publishers will crop up (or become more professionalized), aiding advertisers’ search for both reach and value. 

One can even imagine content farms focusing on specific hot-button topics, attracting highly engaged audiences with just a modicum of moderation to ensure that the content is minimally brand safe – a bar X cannot clear – it stands to reason that a sites like that will see increased interest from advertisers if performance is there.

At present, the worst of the (mainstream) web is hidden behind the platform walls – browser-based attribution technologies make it more attractive to go independent, thereby bringing more of it out of the shadows. Increasing the accessibility of this type of content isn’t a desirable outcome – whereas policy makers and commentators may bemoan the lack of moderation on platforms like X, most people likely don’t desire censorship on the web.

## Engaging on Vision

Decades after inventing the current online advertising industry with JavaScript and third-party cookies, browser vendors continue to grapple with the privacy consequences of what they had wrought.

The solutions they have proposed *do* improve privacy from an individual perspective, and from that axis alone, they are winners. However, I don’t believe that that is the only outcome worth considering – if an unintended consequence of a more private online advertising ecosystem are less democratic societies, the costs outweigh the benefits, and it is not worth doing.

In regarding the proposals and the more recent notes from Mozilla leadership on a theory for improving online advertising, I agree that further improvements in this area will require engagement from multiple areas – perhaps cross browser, and certainly from a policy perspective. It is worth noting that as a longstanding non-profit, Mozilla brings some bona fides to the table that other vendors may not.

While I don’t have specific recommendations, I recall that a decade ago, [Valve hired Greek economist Yanis Varoufakis to apply economic insights to in-game economies](https://reason.com/2014/05/07/a-multiplayer-game-environment/). 
It is unclear if that kind of system level, econometric thinking was in use in developing either proposal, as public communications are focused on privacy considerations and technical design – without commentary on the effects we expect to see across the landscape.

It doesn’t surprise me that Apple has not commented on what they expect to happen on the web. In their ecosystem, the web is both an amenity and [competition](https://www.investopedia.com/apples-court-ordered-changes-to-app-store-preserve-its-cut-of-sales-revenue-8430905) – the web being an inferior platform compared to their own is a *selling point* for their own platforms.

I think that attempting to understand the ways that these concepts may play out is a worthwhile one, and I would argue that from a policy perspective, politicians and citizens deserve some inquiry into how proposals play out.

I also believe that tech companies are well-positioned to help us study the effects of their proposals via [agent-based models](https://en.wikipedia.org/wiki/Agent-based_model), to help us understand how changes in software, policy, and markets will change the economics of online media and advertising. As opposed to the limited utility currently offered by AI (even as [power use expands](https://www.goldmansachs.com/insights/articles/AI-poised-to-drive-160-increase-in-power-demand)), agent-based models could be used to help tech companies, publishers, advertisers, policy makers and commentators better understand how proposals may play out.

That isn’t how technology companies have worked in the past, but as computational efficiencies make modeling more accessible, industry and policy makers could use these technologies to create a framework to assist with discussion and decision making.

Technology companies have been "[moving fast and breaking things](https://www.wired.com/2012/02/zuck-letter/)" for years. It may be worth slowing down before we break something *really* important.

[^1]: Mark Surman. "[A free and open internet shouldn’t come at the expense of privacy.](https://blog.mozilla.org/en/mozilla/digital-advertising-privacy/)" Mozilla Blog, October 3, 2024.
[^2]: John Wilander. "[Privacy-Preserving Ad Click Attribution for the Web.](https://webkit.org/blog/8943/privacy-preserving-ad-click-attribution-for-the-web/)" WebKit Blog, March 3, 2022.
[^3]: Udbhav Tiwari. "[Privacy-Preserving Attribution: Testing for a New Era of Privacy in Digital Advertising](https://blog.mozilla.org/netpolicy/2024/08/22/ppa-update/)" Mozilla Net Policy Blog, August 22, 2024.
[^4]: Laura Chambers. "[Improving online advertising through product and infrastructure](https://blog.mozilla.org/en/mozilla/improving-online-advertising/)" Mozilla Blog, October 25, 2022.
[^5]: Don Marti. "[Stop doing privacy-enhancing technologies.](https://blog.zgp.org/stop-doing-privacy-enhancing-technologies/)" ZGP Blog, September 22, 2024.
[^6]: Don Marti. "[PET projects or real privacy?](https://blog.zgp.org/pet-projects-or-privacy/)" ZGP Blog, July 13, 2024.
[^7]: Michael Lipka, Elisa Shearer. "[Audiences are declining for traditional news media in the U.S. – with some exceptions](https://www.pewresearch.org/short-reads/2023/11/28/audiences-are-declining-for-traditional-news-media-in-the-us-with-some-exceptions/)" Pew Research Center, November 28, 2023.
[^8]: Nic Newman with Richard Fletcher, Craig T. Robertson, Amy Ross Arguedas, and Rasmus Kleis Nielsen. "[Reuters Institute Digital News Report 2024](https://reutersinstitute.politics.ox.ac.uk/sites/default/files/2024-06/RISJ_DNR_2024_Digital_v10%20lr.pdf)" Reuters Institute for the Study of Journalism.
[^9]: Eric Rosenbach, Katherine Mansted. "[Can Democracy Survive in the Information Age?](https://www.belfercenter.org/publication/can-democracy-survive-information-age)" Belfer Center for Science and International Affairs, Harvard Kennedy School.
[^10]: William McKenzie. "[Disinformation: Democracies Require a Reliable Flow of Information](https://www.bushcenter.org/publications/disinformation-democracies-require-a-reliable-flow-of-information)" George W. Bush Institute.

---

{% include donate.html %} You can also message me on [Mastodon](https://mastodon.social/@yoasif).

---