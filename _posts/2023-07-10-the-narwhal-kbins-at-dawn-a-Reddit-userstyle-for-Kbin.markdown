---
layout: post
title:  "The Narwhal Kbins at Dawn: A Reddit UserStyle for Kbin"
date:   2023-07-10 02:13:00 -0400
categories: writing
tags: Reddit Protest Kbin userstyle
---

Since the Reddit protests began, many people have been looking at their options for joining new communities. I quickly [decided]({% post_url 2023-06-12-whats-going-on-with-reddit-firefox-whats-next %} "What's Going on with r/Firefox? Reddit? What's Next") to quickly throw support to Kbin, since most newcomers seemed to prefer it. It is often easier to [improve something people like](https://mastodon.social/@yoasif/110669457588723474), rather than to recreate an entirely new product from scratch.

So I've been using Kbin, along with scripts like [kbin enhancement script](https://greasyfork.org/en/scripts/468612-kbin-enhancement-script) and various styles (with varying issues). I finally got annoyed with the one I was using -- the developer uses dark modes, and I generally don't -- and decided to make my own. 

The theme is called "The Narwhal Kbins at Dawn" -- you can thank u/Jordan117 for the name and [meme reference](https://knowyourmeme.com/memes/the-narwhal-bacons-at-midnight "The Narwhal Bacons at Midnight").

***

{:toc}
* toc

### Screenshots

No one is going to try out a userstyle without knowing what it looks like. Here are some screenshots. Sorry, most of my browsing still happens on laptops, so that is where I have been testing.

#### Home page

<p>
	<figure>
	<picture>
	  <source media="(prefers-color-scheme: light)" type="image/webp" srcset="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/light/home-styled.webp,
	          {{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/light/home-styled-2x.webp 2x">
	  <source media="(prefers-color-scheme: dark)" type="image/webp" srcset="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/dark/home-styled.webp,
	          {{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/dark/home-styled-2x.webp 2x">
	  <source media="(prefers-color-scheme: light)" type="image/png" srcset="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/light/home-styled.png,
	  		  {{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/light/home-styled-2x.png 2x">
	  <source media="(prefers-color-scheme: dark)" type="image/png" srcset="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/dark/home-styled.png,
	  		  {{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/dark/home-styled-2x.png 2x">
	  <img src="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/dark/home-styled.png" srcset="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/light/home-styled-2x.png 2x" alt="Screenshot of the home page of a Kbin instance using a lot of the old Reddit colors and styling"/>
	  <figcaption>The front page of a Kbin instance</figcaption>
	</picture>
</figure>
</p>

#### Compact home page

<p>
	<figure>
	<picture>
	  <source media="(prefers-color-scheme: light)" type="image/webp" srcset="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/light/home-styled-compact.webp,
	          {{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/light/home-styled-compact-2x.webp 2x">
	  <source media="(prefers-color-scheme: dark)" type="image/webp" srcset="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/dark/home-styled-compact.webp,
	          {{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/dark/home-styled-compact-2x.webp 2x">
	  <source media="(prefers-color-scheme: light)" type="image/png" srcset="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/light/home-styled-compact.png,
	  		  {{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/light/home-styled-compact-2x.png 2x">
	  <source media="(prefers-color-scheme: dark)" type="image/png" srcset="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/dark/home-styled-compact.png,
	  		  {{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/dark/home-styled-compact-2x.png 2x">
	  <img src="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/dark/home-styled-compact.png" srcset="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/light/home-styled-compact-2x.png 2x" alt="Screenshot of the home page of a Kbin instance using a lot of the old Reddit colors and styling, and the compact view"/>
	  <figcaption>The front page of a Kbin instance when using the compact view option</figcaption>
	</picture>
</figure>
</p>

#### Posts

<p>
	<figure>
	<picture>
	  <source media="(prefers-color-scheme: light)" type="image/webp" srcset="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/light/post-styled.webp,
	          {{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/light/post-styled-2x.webp 2x">
	  <source media="(prefers-color-scheme: dark)" type="image/webp" srcset="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/dark/post-styled.webp,
	          {{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/dark/post-styled-2x.webp 2x">
	  <source media="(prefers-color-scheme: light)" type="image/png" srcset="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/light/post-styled.png,
	  		  {{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/light/post-styled-2x.png 2x">
	  <source media="(prefers-color-scheme: dark)" type="image/png" srcset="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/dark/post-styled.png,
	  		  {{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/dark/post-styled-2x.png 2x">
	  <img src="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/dark/post-styled.png" srcset="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/light/post-styled-2x.png 2x" alt="Screenshot of a post on a Kbin instance using a lot of the old Reddit colors and styling"/>
	  <figcaption>Posts on Kbin instances look like Reddit too</figcaption>
	</picture>
</figure>
</p>

#### Compact posts

<p>
	<figure>
	<picture>
	  <source media="(prefers-color-scheme: light)" type="image/webp" srcset="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/light/post-styled-compact.webp,
	          {{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/light/post-styled-compact-2x.webp 2x">
	  <source media="(prefers-color-scheme: dark)" type="image/webp" srcset="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/dark/post-styled-compact.webp,
	          {{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/dark/post-styled-compact-2x.webp 2x">
	  <source media="(prefers-color-scheme: light)" type="image/png" srcset="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/light/post-styled-compact.png,
	  		  {{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/light/post-styled-compact-2x.png 2x">
	  <source media="(prefers-color-scheme: dark)" type="image/png" srcset="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/dark/post-styled-compact.png,
	  		  {{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/dark/post-styled-compact-2x.png 2x">
	  <img src="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/dark/post-styled-compact.png" srcset="{{site.url}}/assets/images/userstyles/the-narwhal-kbins-at-dawn/1.0/light/post-styled-compact-2x.png 2x" alt="Screenshot of a post on a Kbin instance using a lot of the old Reddit colors and styling, and the compact view"/>
	  <figcaption>Posts on Kbin instances <i>really</i> look like Reddit when compact is enabled</figcaption>
	</picture>
</figure>
</p>

### Features

* Light and Dark modes
* Inspired by both Old and New Reddit
* Works on most popular Kbin instances
* Supports the compact view
* Support for kbin enhancement script
* Works on mobile
* Compatible with blackjack and hookers[^1]

[^1]: Not included.

## Installation

The theme is easy to install. 

1. Install a userstyle manager. Most people use [Stylus](https://addons.mozilla.org/firefox/addon/styl-us/) - it is [open source and vetted by Mozilla](https://support.mozilla.org/kb/add-on-badges), and it runs on Firefox for Android (and is [part of my collection]({% post_url 2022-01-26-most-wanted-add-ons-firefox-android-part-1 %}#setup)).
2. Navigate to the [theme](#) and click or tap "Install".
3. Install optional extras like [kbin enhancement script](https://greasyfork.org/en/scripts/468612-kbin-enhancement-script) and a [font](https://userstyles.world/style/10836/rockoflf-bold-for-kbin) that looks like the Reddit font. 
4. You're done! Take a break and browse some Kbin!

## Contributing

You can send me pull requests or report issues at the [source code repository](https://github.com/yoasif/the-narwhal-kbins-at-dawn) for this style.

---

{% include donate.html %} Feel free to give me feedback on this post on [Kbin](#). You can also message me on [Mastodon](https://mastodon.social/@yoasif).
