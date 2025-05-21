---
layout: post
title:  "Enterprise Policies for Firefox Customization: A Beginner’s Guide"
date:   2025-05-18 6:33 -0500
categories: writing
tags: firefox
external-url: 
image: /assets/images/social-previews/firefox.png
redirect_from: 

---

**TL;DR**: If you want to customize Firefox using Enterprise Polices, you can create customized policies via the handy [Enterprise Policy Generator](https://addons.mozilla.org/en-US/firefox/addon/enterprise-policy-generator/). You can also browse a [collection of policies I created](#policies), available for [download](https://github.com/yoasif/awesome-firefox-policies/).

You can also watch a video.

<p>
<figure>
	<a href="https://www.youtube.com/watch?v=LNV23ByLKMk">
	<picture>
	  <source type="image/png" srcset="{{site.url}}/assets/images/thumbnails/enterprise-policies.png,
	  								   {{site.url}}/assets/images/thumbnails/enterprise-policies-2x.png 2x">
	  <img src="{{site.url}}/assets/images/thumbnails/enterprise-policies.png" srcset="{{site.url}}/assets/images/thumbnails/enterprise-policies-2x.png 2x" alt="A picture of a YouTube video"/>
	  <figcaption>Enterprise Policies for Firefox Customization: A Beginner’s Guide to policies.json</figcaption>
	</picture>
	</a>
</figure>
</p>

---

{:toc}
* toc

## Background

I have posted various Firefox [setup]({% post_url 2021-07-26-firefox-privacy-stop-hardening-love-strict-etp %}) [guides]({% post_url 2022-10-01-firefox-switch-a-guide-for-beginners %}), and while they are easy to follow, it would be a lot simpler for you to download a file to get my preferred setup. 

That's the premise behind [user.js](https://kb.mozillazine.org/User.js_file) overrides like Arkenfox and Betterfox.

`user.js` is a way to override Firefox preferences, but it can be [annoying to troubleshoot](https://support.mozilla.org/en-US/kb/how-to-fix-preferences-wont-save#w_user-js-file-overriding-firefox-settings) and is not the preferred method for managing Firefox configurations centrally. For that, we look to [Enterprise Policies](https://support.mozilla.org/en-US/kb/enforcing-policies-firefox-enterprise) for Firefox.

Since Mozilla actively supports it, there are some niceties built into Firefox that make enterprise policies easier to troubleshoot, like the <kbd>about:policies</kbd> page, and the notification that appears in the settings page when policies are active.

<p>
	<figure>
	<picture>
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox/managed-firefox.png,
	  		  {{site.url}}/assets/images/firefox/managed-firefox-2x.png 2x">
	  <img src="{{site.url}}/assets/images/firefox/managed-firefox.png" srcset="{{site.url}}/assets/images/firefox/managed-firefox-2x.png 2x" alt="Screenshot of Firefox preferences UI cropped to a notice that the browser is being managed by your organization"/>
	  <figcaption>Your browser is being managed by your organization - a notice in Firefox</figcaption>
	</picture>
</figure>
</p>

While I had planned a tutorial on enterprise policies in Firefox for years, mostly as a response to `user.js` projects, I never got around to writing it up, as it is fiddlier than pointing and clicking on buttons in Firefox -- too much work for not a lot of gain. 

Beyond that, it is a bit weird to want or need to *manage* your tools in the way an enterprise would - that feels almost like willingly putting on a straitjacket - why would I want to restrict myself in this way?

For the geeky among us, people curate, store and deploy their [dotfiles](https://dotfiles.github.io/) in order to preserve settings - especially complex ones -- people on a *nix shell may manage custom `.bashrc` or `.aliases` files, and Git users likely have a custom `.gitconfig` that they'd rather not recreate across installs.

Still, that isn't something *I* as an end user had a whole lot of interest in for Firefox - I run the Nightly release channel, and I *like* playing with the new bits and bobs - my inclination isn't to "manage" Firefox, it is to explore it as a living project.

Still, I wanted to post something to enable people who are currently using dodgy `user.js` files and [forks without security teams](https://blog.mozilla.org/security/2025/05/17/firefox-security-response-to-pwn2own-2025/) to use the mainline version of Firefox, just tweaked in known safe ways.

I [support Firefox]({% post_url 2025-05-07-firefox-forever %}), so people suffering from subpar experiences on the web that reflect poorly on the browser (because they are using dodgy `user.js` overrides) is a problem that we should try to solve.

If you want to manage your Firefox settings (or just want a pre-configured setup), read on. 

## Building your own policies

For this tutorial, I'm focusing on managing Firefox using <kbd>policies.json</kbd>, as they are portable across all OSes that Firefox supports.

You can refer to the documentation for the [policy templates](https://mozilla.github.io/policy-templates/) to build your [policies file](https://support.mozilla.org/en-US/kb/customizing-firefox-using-policiesjson).

If you prefer a point and click method to customize your settings, you can instead try [Enterprise Policy Generator](https://addons.mozilla.org/en-US/firefox/addon/enterprise-policy-generator/), an *excellent* extension that lists policy settings, allows you to customize them, and lets you export a ready-to-use `policies.json` file.

<p>
	<figure>
	<picture>
	  <source type="image/png" srcset="{{site.url}}/assets/images/firefox/EnterprisePolicyGenerator.png,
	  		  {{site.url}}/assets/images/firefox/EnterprisePolicyGenerator-2x.png 2x">
	  <img src="{{site.url}}/assets/images/firefox/EnterprisePolicyGenerator.png" srcset="{{site.url}}/assets/images/firefox/EnterprisePolicyGenerator-2x.png 2x" alt="Screenshot of Enterprise Policy Generator"/>
	  <figcaption>Enterprise Policy Generator</figcaption>
	</picture>
</figure>
</p>

If you'd rather download a file to get an optimized setup, read on.

## My recommended policies

I went through the options available in the *Enterprise Policy Generator* extension, and pored through Mozilla's documentation, along with lists of tweaks (like on [r/firefox]({% link firefox/wiki/useful-customizations.markdown %})), and ended up with three personas. 

1. I wanted to create a setup for my friends and family, for people who want something that *just works*. These are people that may be using Chrome or Edge today. Firefox is already more user focused than those browsers - my setup just tweaks it a bit more. This is the "Home" persona. 

2. If you are interested in privacy or more technical features, I created policies for an "Enthusiast" persona. This might feel similar to something like Brave.

3. If you *really* into privacy, you can instead choose my "Amnesiac" persona - this one sets up Firefox to not delete cookies on browser restart, and enables some additional privacy features. If you are interested in browsers like LibreWolf, this setup will get you most of what you want, without a lot of the downside.

The table below shows how the policies are setup.

Each of the policies have two variations - the default "relaxed" version and the "enforcing" one. In the relaxed setup, most of what I have configured can be changed if you don't share my preferences. The relaxed versions are what I would want to use - I don't want to feel like I am in a straitjacket. The enforcing versions - which are indicated by a 🔒 in the filename and in the locked preference (shown below) make it impossible to modify the preference. This is useful when you would rather not accidentally change a setting - or if you simply want to ensure that it remains locked. 

Obviously, not every setting will be one you will agree with, so feel free to [fork them](https://github.com/yoasif/awesome-firefox-policies/).

<style>

.download-button {
    position: relative; 
    display: flex;
    align-items: center; 
    background: linear-gradient(189deg, #eeffcc 0%, #aff32a 100%);
    padding: 20px 40px; 
    border-radius: 10px; /* Rounded corners */
    border: 2px solid #d2e6a0; /* Slightly darker border color */
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3)
    transition: border 0.3s ease; 
}

.text {
    display: flex;
    flex-direction: column;
    text-decoration: none;

}

#wrapper a {text-decoration:none;}


.text p {
    margin: 2px 0 0; 
    color: #09700b;
    font-size: 1em;
    font-family: serif;
	width: 124px;
}
.download-button:hover {
    border: 2px solid #7bbd3f; 
}


.text h1 {
    margin: 0;
    font-size: 2em;
    color: #cf1f00;
        font-family: sans-serif;
        font-weight: 600;
}



#wrapper {
    display: flex;
    justify-content: center;
    align-items: center;
}
</style>

<table id="policies">
   <tr>
      <th>Home</th>
      <th>Enthusiast</th>
      <th>Amnesiac</th>
   </tr>
   <tr style="vertical-align:baseline;">
      <td>
         <h5>Privacy and Security</h5>
         <ul>
            <li>enabled <a href="https://www.quippd.com/writing/2021/07/26/firefox-privacy-stop-hardening-love-strict-etp.html#containers">Containers</a></li>
            <li>Tracking Protection: blocking cryptominers and fingerprinters</li>
            <li>enabled the <a href="https://www.quippd.com/writing/2021/07/26/firefox-privacy-stop-hardening-love-strict-etp.html#add-a-separate-search-bar-to-your-toolbar">search bar</a></li>
            <li>🔒 do not show <a href="https://www.quippd.com/writing/2021/07/26/firefox-privacy-stop-hardening-love-strict-etp.html#disable-search-suggestions">search suggestions</a> in the address bar</li>
            <li>🔒 enabled <a href="https://support.mozilla.org/en-US/kb/firefox-dns-over-https">DNS over HTTPS</a> over <a href="https://quad9.net">Quad9</a></li>
            <li>🔒 enabled <a href="https://support.mozilla.org/en-US/kb/global-privacy-control">Global Privacy Control</a></li>
            <li>🔒 disabled <a href="https://support.mozilla.org/en-US/kb/privacy-preserving-attribution#w_how-can-i-disable-ppa">Privacy-Preserving Attribution</a></li>
            <li>block new requests for access to VR devices</li>
            <li>install Firefox updates in the background</li>
            <li>🔒 preinstalled <a href="https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/">uBlock Origin</a></li>
         </ul>
      </td>
      <td>
         <h5>Privacy and Security</h5>
         <ul>
            <li>enabled <a href="https://www.quippd.com/writing/2021/07/26/firefox-privacy-stop-hardening-love-strict-etp.html#containers">Containers</a></li>
            <li>Tracking Protection: <strong>Strict</strong></li>
            <li>enabled the <a href="https://www.quippd.com/writing/2021/07/26/firefox-privacy-stop-hardening-love-strict-etp.html#add-a-separate-search-bar-to-your-toolbar">search bar</a></li>
            <li>🔒 do not show <a href="https://www.quippd.com/writing/2021/07/26/firefox-privacy-stop-hardening-love-strict-etp.html#disable-search-suggestions">search suggestions</a> in the address bar</li>
            <li>🔒 enabled <a href="https://support.mozilla.org/en-US/kb/global-privacy-control">Global Privacy Control</a></li>
            <li>🔒 disabled <a href="https://support.mozilla.org/en-US/kb/privacy-preserving-attribution#w_how-can-i-disable-ppa">Privacy-Preserving Attribution</a></li>
            <li>block new requests for access to VR devices</li>
            <li>install Firefox updates in the background</li>
            <li>partition third party cookies, reject cookies for known trackers</li>
            <li>disable automatic extension updates</li>
            <li>🔒 disabled DRM</li>
         </ul>
      </td>
      <td>
      
      
      <h5>Privacy and Security</h5>
         <ul>
            <li>enabled <a href="https://www.quippd.com/writing/2021/07/26/firefox-privacy-stop-hardening-love-strict-etp.html#containers">Containers</a></li>
            <li>Tracking Protection: <strong>Strict</strong></li>
            <li>enabled the <a href="https://www.quippd.com/writing/2021/07/26/firefox-privacy-stop-hardening-love-strict-etp.html#add-a-separate-search-bar-to-your-toolbar">search bar</a></li>
            <li>🔒 do not show <a href="https://www.quippd.com/writing/2021/07/26/firefox-privacy-stop-hardening-love-strict-etp.html#disable-search-suggestions">search suggestions</a> in the address bar</li>
            <li>🔒 enabled <a href="https://support.mozilla.org/en-US/kb/global-privacy-control">Global Privacy Control</a></li>
            <li>🔒 disabled <a href="https://support.mozilla.org/en-US/kb/privacy-preserving-attribution#w_how-can-i-disable-ppa">Privacy-Preserving Attribution</a></li>
            <li>block new requests for access to VR devices</li>
            <li>install Firefox updates in the background</li>
            <li>partition third party cookies, reject cookies for known trackers</li>
            <li>disable automatic extension updates</li>
            <li>🔒 disabled DRM</li>
            <li>🔒 cookies are <a href="https://www.quippd.com/writing/2021/07/26/firefox-privacy-stop-hardening-love-strict-etp.html#delete-cookies-when-closing-firefox">deleted when closing Firefox</a></li>
         </ul>
      
      </td>
   </tr>
   <tr style="vertical-align:baseline;">
      <td>
         <h5>Fixed Annoyances</h5>
         <ul>
            <li>🔒 disabled search box, sponsored content on New Tab page</li>
            <li>🔒 disabled <a href="https://support.mozilla.org/en-US/kb/use-google-trending-search-firefox-address-bar">trending searches</a></li>
            <li>removed recent searches from address bar search results</li>
            <li>add new tabs after current tab (instead of at end)</li>
            <li>always show scrollbars (Linux)</li>
            <li>show compact density option</li>
            <li>don't check to see if Firefox is the default browser</li>
         </ul>
      </td>
      <td>
         <h5>Fixed Annoyances</h5>
         <ul>
            <li>🔒 disabled search box, sponsored content on New Tab page</li>
            <li>🔒 disabled <a href="https://support.mozilla.org/en-US/kb/use-google-trending-search-firefox-address-bar">trending searches</a></li>
            <li>🔒 removed recent searches from address bar search results</li>
            <li>add new tabs after current tab (instead of at end)</li>
            <li>always show scrollbars (Linux)</li>
            <li>show compact density option</li>
            <li>don't check to see if Firefox is the default browser</li>
         </ul>
      </td>
      <td>
      
      <h5>Fixed Annoyances</h5>
         <ul>
            <li>🔒 disabled search box, sponsored content on New Tab page</li>
            <li>🔒 disabled <a href="https://support.mozilla.org/en-US/kb/use-google-trending-search-firefox-address-bar">trending searches</a></li>
            <li>🔒 removed recent searches from address bar search results</li>
            <li>add new tabs after current tab (instead of at end)</li>
            <li>always show scrollbars (Linux)</li>
            <li>show compact density option</li>
            <li>don't check to see if Firefox is the default browser</li>
         </ul>
      
      
      </td>
   </tr>
   <tr style="vertical-align:baseline;">
      <td>
         <h5>Miscellaneous</h5>
         <ul>
            <li>enable openh264 for WebRTC</li>
            <li>enable DRM</li>
            <li>restore last session on startup</li>
         </ul>
      </td>
      <td>
         <h5>Miscellaneous</h5>
         <ul>
            <li>enable openh264 for WebRTC</li>
            <li>restore last session on startup</li>
            <li>disabled <a href="https://support.mozilla.org/en-US/kb/disable-or-re-enable-pocket-for-firefox">Pocket integration</a></li>
            <li>preinstalled extension for <a href="https://addons.mozilla.org/en-US/firefox/addon/feed-preview">RSS support</a></li>
            <li>enabled compact UI density</li>
            <li>disabled smooth scrolling</li>
            <li>enabled "View Image Info" context menu item</li>
            <li>load contextual searches in a background tab</li>
         </ul>
      </td>
      <td>
      
      <h5>Miscellaneous</h5>
         <ul>
            <li>enable openh264 for WebRTC</li>
            <li>restore last session on startup</li>
            <li>disabled <a href="https://support.mozilla.org/en-US/kb/disable-or-re-enable-pocket-for-firefox">Pocket integration</a></li>
            <li>preinstalled extension for <a href="https://addons.mozilla.org/en-US/firefox/addon/feed-preview">RSS support</a></li>
            <li>enabled compact UI density</li>
            <li>disabled smooth scrolling</li>
            <li>enabled "View Image Info" context menu item</li>
            <li>load contextual searches in a background tab</li>
         </ul>
      
      </td>
   </tr>
</table>

<div id="wrapper">
<a href="https://github.com/yoasif/awesome-firefox-policies/">
    <div class="download-button">
        <div class="text">
            <h1>⬇️ policies.json</h1>
        </div>
    </div>
    </a>
    </div>

## Getting the policies installed

Now that you have the policies, how do you install them? 

Here's Mozilla's [documentation](https://support.mozilla.org/en-US/kb/customizing-firefox-using-policiesjson):

> To implement this policy support, a `policies.json` file needs to be created. 
>
>On Windows, create a directory called distribution where the EXE is located and place the file there. 
>
>On Mac, the file goes into `Firefox.app/Contents/Resources/distribution`. 
>
>On Linux, the file goes into `firefox/distribution`, where Firefox is the installation directory for Firefox, which varies by distribution - or you can specify system-wide policy by placing the file in `/etc/firefox/policies`.

---

Please feel free to reach out with any feedback, and I'd love to hear about how you are using these policies - drop me a message!

---

{% include donate-social.html %} You can [message me](https://mastodon.social/@yoasif) or follow [this blog](https://mastodon.social/@quippdblog) on Mastodon.
