---
layout: post
title:  "Mozilla&rsquo;s New Terms of Use are out of step with Firefox&rsquo;s Direct Competition"
date:   2025-02-26 17:42 -0500
categories: posts
tags: firefox
external-url: 
image: /assets/images/social-previews/firefox.png

---
On Wednesday, [Mozilla introduced legal updates to users of Firefox](https://blog.mozilla.org/en/products/firefox/firefox-news/firefox-terms-of-use/), and something feels off. I read, and re-read the new [Terms of Use](https://www.mozilla.org/en-US/about/legal/terms/firefox/) and while much of it reads like standard boilerplate from any tech company, there's a new section that is unexpected:

> When you upload or input information through Firefox, you hereby grant us a nonexclusive, royalty-free, worldwide license to use that information to help you navigate, experience, and interact with online content as you indicate with your use of Firefox.

The community [has](https://mstdn.io/@jomo/114072136787385688) [also](https://infosec.exchange/@mttaggart/114071999359445580) [zeroed](https://www.reddit.com/r/firefox/comments/1iyuvjf/introducing_a_terms_of_use_and_updated_privacy/meyb9e9/) in on this phrase, with contributors [asking directly](https://discourse.mozilla.org/t/why-does-mozilla-now-require-a-nonexclusive-royalty-free-worldwide-license-when-entering-information-in-firefox/140700) [what up with that?](https://www.youtube.com/watch?v=sqpnRyfz_aY)

While I'm not going to ponder about *why* Mozilla wants this royalty-free license to my intellectual property, I immediately wondered whether using Microsoft Word also needed this kind of license grant -- since it is *processing my words*.

I was quickly [informed](https://www.microsoft.com/en-US/servicesagreement) by a chatroom interlocutor that:

>To the extent necessary to provide the Services to you and others, to protect you and the Services, and to improve Microsoft products and services, you grant to Microsoft a worldwide and royalty-free intellectual property license to use Your Content, for example, to make copies of, retain, transmit, reformat, display, and distribute via communication tools Your Content on the Services.

which seems excessive. However, this copy is part of a section called "Your Content" where Microsoft explicitly disclaims ownership of your content:

> Many of our Services allow you to create, store or share Your Content or receive material from others. **We don’t claim ownership of Your Content.** Your Content remains yours and you are responsible for it.

If that gives you the ick, or you simply want to avoid the [ads coming to Office](https://beebom.com/microsoft-free-ad-supported-office-quietly-launched/), you may want to try [LibreOffice](https://www.libreoffice.org/) - which doesn't seem to have a terms of service. Just local, open source software.

Ultimately, Microsoft specifically disclaims ownership of your content - something Mozilla does not do.

Is Mozilla an outlier here? Is this as weird as it seems? Mozilla has a [browser comparison page](https://www.mozilla.org/en-US/firefox/browsers/compare/), so we can use those as a basis for comparison - let's look at the data!

| Browser  |  Uploaded or input information grants software vendor a nonexclusive, royalty-free, worldwide license |  Notes |
|---|---|---|
| [Mozilla Firefox](https://www.mozilla.org/en-US/about/legal/terms/firefox/)  | Yes  |    |
| [Google Chrome](https://policies.google.com/terms?hl=en-US)  |  Yes | Google grants itself a worldwide, non-exclusive, royalty-free license to "host, reproduce, distribute, communicate, and use your content" and to "modify and create derivative works based on your content" for the "limited purpose" of "operating and improving the services" including "using automated systems and algorithms to analyze your content to customize our services for you, such as providing recommendations and personalized search results, content, and ads". They also retain the right to use "content you’ve shared publicly to promote" their service, such as reviews, and to develop new technologies and services. You also grant these rights to sublicensees. Unsurprisingly, Google grants itself very expansive access to your intellectual property. |
| [Microsoft Edge](https://www.microsoft.com/en-US/servicesagreement)  | Partial  | Microsoft grants itself a "worldwide and royalty-free intellectual property license to use Your Content, for example, to make copies of, retain, transmit, reformat, display, and distribute via communication tools Your Content on the Services" while explicitly disclaiming ownership of your content.  |
| [Apple Safari](https://www.apple.com/legal/privacy/data/en/safari/)  | ❌  | No reference to user generated intellectual property. Apple says that they retain "personal data only for so long as necessary to fulfill the purposes for which it was collected".  |
| [Brave](https://brave.com/terms-of-use/)  | ❌  | No language about intellectual property licenses of user generated content.  |
| [Opera](https://www.opera.com/legal/terms)  |  ❌ |  No language about intellectual property licenses of user generated content |

It would be remiss to not mention that these changes come at the heels of a [leadership shakeup](https://blog.mozilla.org/en/mozilla/mozilla-leadership-growth-planning-updates/) at Mozilla, with the exit of its longtime [lizard wrangler, Mitchell Baker](https://www.politico.com/story/2014/10/getting-there-mozilla-foundations-mitchell-baker-111479) and a new focus on "[privacy-respecting advertising]({% post_url 2023-05-03-with-its-API-update-reddit-should-start-paying-its-users %})" and "trustworthy, open source AI".

The initial version of this post concluded that other browser vendors don't grant themselves the same rights to users' intellectual property that Mozilla's new Terms does. Upon further review and discussion, I realize that the exceptions that Google grants itself for usage of people's content are large enough to drive a truck through - they are expansive. In particular, using people's intellectual property to serve ads based on that content is exactly the kind of usage that people are creeped out by. 

There is something different here, though. Although Google's ToS is expansive, Mozilla's is more expansive still. As Google notes, "some of our services are designed to let you upload, submit, store, send, receive, or share your content. You have no obligation to provide any content to our services and you’re free to choose the content that you want to provide. If you choose to upload or share content, please make sure you have the necessary rights to do so and that the content is lawful." Google grants itself the expansive rights only when users upload or share content to its online services. Mozilla goes beyond this by not limiting the scope of what is covered to what is uploaded to Mozilla services, but more expansively to all "information" input "through" Firefox - that is every website, including ones on your local area network!

Lastly, I think the non-existence of a copyright license grant in the other competing browsers presents a valuable counterexample to claims that users of software programs must explicitly grant copying rights to any software that interacts with user data. Clearly, if the license grant isn't present in the Terms users aren't automatically granting *expansive* rights like those granted to Google simply by using it!

## Feedback

I received some valuable feedback to this post, so I have further thoughts. At the outset, I'll note that I am not a lawyer.

### This is a prudent change - it prevents lawsuits

I got feedback that while the new verbiage might not be quite *necessary*, it clarifies and prevents people and businesses from trying to sue Mozilla for using the software as designed. An example of this might be someone suing Mozilla for uploading a file that they dragged onto Firefox, transmitting the file to a third party website.

It is not clear to me why Mozilla needs a license grant to protect itself from this lawsuit - the software worked as designed, and Mozilla having a license to the data doesn't indemnify it from transmitting the data to the wrong place - if anything, the indemnification clause does that:

>You agree to indemnify and hold Mozilla and its affiliates harmless for any liability or claim from your use of Firefox, to the extent permitted by applicable law.

Lacking a transferable, sub-licensable agreement means that Mozilla can't escape liability for sending the file to the "wrong" site by granting the "wrong" site the license to the information. The lawsuits that I have come up with in my thought exercises don't seem coherent to me. It is hard for me to imagine a lawsuit that would be prevented by this phrase.

### This is how software works, the ToS just reflects it

Another response I've gotten is that computers need to copy data and transform it in order to do valuable things with your data. Thus, Mozilla needs these rights in order to correctly describe how software is working in the background.

This feels ahistorical, like an inversion of how we have always thought about copyright.

Did writing a story in [MacWrite](https://en.wikipedia.org/wiki/MacWrite) give Claris rights to your story?

Remember that to display, edit, transform (underline, italicize, fonts) the documents you write in MacWrite *necessarily* requires copying your document data from disk to memory to cpu to memory to display -- lots of copying. Did Claris need the rights to your copyright to allow you to edit your documents in its software?

I think that we know that it isn't the case that Claris needed (or had) a legal right to your intellectual property in order to "use" your data in order to let you edit your story.

If that example feels esoteric - since we're talking about copies, how about copy machines?

If I walk up to a copy machine manufactured by Konica Minolta and copy a proprietary document, am I instantaneously granting Konica Minolta a license to "use" the copy? We know that many industrial copiers have [hard drives in them](https://www.ftc.gov/business-guidance/resources/digital-copier-data-security-guide-businesses) - does that mean the next time the disk goes back to Konica Minolta for warranty service, they get to use the documents to train algorithms to more accurately copy those types of documents?

I don't think that is the case -- clearly this is a *new* right being assigned. We do not assume that mere usage of a copier grants the copier company the right to use your data outside of of what is required to make the copy. We don't even need the company involved at all! Indeed, I would expect that a responsible company would either destroy hard drives with customer data on them, or to securely wipe them before reuse.

In a more modern software example, guidance on the [GPL specifically clarifies that using open source software to create non-free software](https://www.gnu.org/licenses/gpl-faq.en.html#CanIUseGPLToolsForNF) is allowed - there is no assumption that using open source software to produce documents similarly grants the rights holders of the software in use rights to your creative work. Artworks created in Inkscape aren't free to be used by the developers of Inkskape. Clearly, users of open source software aren't automatically granting developers rights to their work. Why is Firefox different?

---

{% include donate-social.html %} You can [message me](https://mastodon.social/@yoasif) or follow [this blog](https://mastodon.social/@quippdblog) on Mastodon.
