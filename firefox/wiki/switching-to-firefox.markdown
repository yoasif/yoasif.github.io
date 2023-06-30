---
layout: page
title: Switching to Firefox
permalink: /firefox/wiki/switching-to-firefox/index.html
category_name: firefox-docs
exclude: true

---

{% include breadcrumbs.html %}

# Switching to Firefox

Welcome to Social Firefox help on switching to Firefox!

## Download Firefox

### Which version should I download?

See our [release channel]({% link firefox/wiki/release-channels.markdown %}) guide to help make a decision. We recommend using [Firefox Sync](https://support.mozilla.org/kb/how-do-i-set-sync-my-computer) to keep your browsers in sync (especially with your mobile devices, if you have one).

### Switching from Chrome

The simplest way to switch from Chrome is to [import settings from Chrome](https://support.mozilla.org/kb/switching-chrome-firefox). Keep Chrome installed so that Firefox detects it when starting up for the first time. Unfortunately, [password import from Linux is not yet working](https://bugzilla.mozilla.org/show_bug.cgi?id=589589), so you will need to [migrate passwords manually](#importing-passwords) if you are on Linux. 

If you already have Firefox installed, you may not see the import settings dialog on startup. Follow the [import settings](https://support.mozilla.org/kb/import-bookmarks-data-another-browser) steps instead.

### If you already have Firefox installed

If you already have Firefox installed but haven't used it in a long time, it is a good idea to reset Firefox's settings (keeping your passwords, bookmarks, logins, and history) to bring Firefox back to 100% performance. To reset Firefox's settings, [refresh Firefox](https://support.mozilla.org/kb/refresh-firefox-reset-add-ons-and-settings). The easiest way to do this is to click the blue **Refresh Firefox** icon on the linked page.

## Why Switch?

This wiki cannot hope to cover the various reasons you may want to switch to Firefox. We'll try to cover a couple, though. 

### Mozilla does good (for the web)

A lot of this is taken from [a comment](https://www.reddit.com/r/firefox/comments/9syuw1/what_are_the_unique_selling_points_of_firefox_to/e8sjte7/) by /u/callahad.

Mozilla...

* ... created and runs [MDN](https://developer.mozilla.org/), the standard reference documentation for Web technology
* ... invented [Rust](https://www.rust-lang.org/), an entirely new programming language to build faster and safer software (and it's not just for Mozilla, Rust is in production everywhere—if you use Dropbox or Visual Studio Code, you're relying on Rust)
* ... started [Let's Encrypt](https://letsencrypt.org/)
* ... are gathering a [public corpus of voice recordings](https://voice.mozilla.org/) and a [training a speech-to-text engine](https://research.mozilla.org/machine-learning/) to ensure that voice recognition works for everyone around the world
* ... are [liberating IoT devices](https://blog.mozilla.org/blog/2018/02/06/announcing-project-things-open-framework-connecting-devices-web/) from proprietary apps and protocols to ensure the future of connected devices looks more like the open web
* ... created a completely [free network geolocation database](https://location.services.mozilla.com/), so you don't have to rely on Apple or Google to know where you are
* ... [actively supports the Tor project](https://wiki.mozilla.org/Security/Fusion) and are merging Tor's patches into mainline Firefox
* ... has given [millions of dollars in grants](https://www.mozilla.org/en-US/moss/) to support open source software throughout the world

And they have done it all in the open, for the benefit of the public, under open source licenses.

If you care about the Web as a public commons, then you care that it's built on open and interoperable standards. And that's currently under threat of dominance by Google. The only way to avoid a monoculture is to actively choose independent browsers: Firefox or Safari.

And if you believe incentives matter, that someone should be building a browser without a profit motive—to keep everyone else honest, if nothing else—then there's [only one real choice](https://robert.ocallahan.org/2014/08/choose-firefox-now-or-later-you-wont.html).

In brief, **all modern browsers are good enough, but only one browser does good**.

### Firefox has good defaults

* Firefox Sync is encrypted with zero knowledge encryption, so Mozilla [never sees your passwords, history or other private data](https://hacks.mozilla.org/2018/11/firefox-sync-privacy/). Period. You can even run your own [sync server](https://github.com/mozilla-services/syncserver). 
* Firefox has platform native font rendering on Windows
* You get [privacy by default](https://www.mozilla.org/firefox/privacy/products/).
* Firefox blocks CPU burning cryptominers by default

### Firefox exclusive features

#### WebRequest

Mozilla will [maintain support for blocking WebRequest in MV3](https://blog.mozilla.org/addons/2022/05/18/manifest-v3-in-firefox-recap-next-steps/), allowing the best and most powerful ad blocking extensions (like uBlock Origin) to continue working without hindrance. As uBlock Origin *already* [works best on Firefox](https://github.com/gorhill/uBlock/wiki/uBlock-Origin-works-best-on-Firefox), you get the best ad blocker on the best platform for it. Beware of imitators - built in blockers on other browsers may claim to work as well as uBlock Origin, but lack features like procedural filtering that can foil the best in class anti-adblock scripts. 

#### [Extensions on Firefox for Android](https://support.mozilla.org/kb/find-and-install-add-ons-firefox-android)

Unlike other mainstream browsers on Android, Firefox for Android lets you choose from a list of recommended [extensions](https://addons.mozilla.org/android/search/?promoted=recommended&sort=random&type=extension).

#### [Multiple Picture-in-Picture](https://www.mozilla.org/firefox/features/picture-in-picture/)

[Multi-PiP](https://blog.mozilla.org/en/products/firefox/latest-firefox-release-includes-multiple-picture-in-picture-and-total-cookie-protection/) allows multiple videos to play at the same time. Use it to watch multiple sports streams or keep an eye on some cute animals.

#### [Containers](https://addons.mozilla.org/firefox/addon/multi-account-containers/)

[Containers](https://addons.mozilla.org/firefox/addon/multi-account-containers/) are a Firefox feature that let you separate your tabs without having to clear your history, log in and out, or use multiple browsers. You can create containers to separate your banking sites from your shopping sites, help you login to the same site with different logins, or keep every site separate for every other site so that no cross site tracking can happen. Mozilla has a [list of ideas](https://support.mozilla.org/kb/containers#w_what-you-can-do-with-multi-account-containers) on how you can use containers, and they have even created a [Facebook container](https://addons.mozilla.org/firefox/addon/facebook-container/) to separate Facebook from the rest of the web. 

Containers are a Firefox exclusive feature and lets you drastically increase your privacy on the web. If you want to login to three reddit accounts in the same window, you can. If you want to keep Google separate from Facebook, or Facebook away from everything else, you can. 

If you want every site to open in its own container and automatically destroy the container as soon as you close the tab, you can do that too. 

**Container Add-ons**

* [Multi-Account Containers](https://addons.mozilla.org/firefox/addon/multi-account-containers/)
* [Facebook Container](https://addons.mozilla.org/firefox/addon/facebook-container/)
* [Temporary Containers](https://addons.mozilla.org/firefox/addon/temporary-containers/)

#### [Send Tabs to other devices](https://support.mozilla.org/kb/send-tab-firefox-desktop-other-devices)

Firefox's Send Tab feature [lets you send pages to and from your computer, iPhone or iPad, so you can continue browsing wherever you are](https://www.youtube.com/watch?v=CM40b14i41M). You will no longer have to text or email yourself links. 

## Importing Passwords

### To Bitwarden

[Bitwarden](https://addons.mozilla.org/firefox/addon/bitwarden-password-manager/) is a free, open source password manager that runs in major browsers (including Chrome and Firefox). It also has desktop and mobile clients. Using Bitwarden means that you don't ever have to migrate passwords again, since your passwords are not locked into a single browser. 

LastPass, you ask? We don't recommend it. We have seen it cause massive slowdown issues in Firefox, and in contrast, Bitwarden has no such issues. 

#### Opera, Chrome, other Chromium based browsers

You can import Opera, Chrome, other Chromium based browsers passwords using the guide over at [Bitwarden help](https://help.bitwarden.com/article/import-from-chrome/). 

### To Firefox Lockwise

[Firefox Lockwise](https://www.mozilla.org/firefox/lockwise/) is the native password manager of Firefox. It has mobile apps for iOS and Android, but does not offer support for other browsers or an password export feature.

#### From a Chromium based browser

1. Navigate to `about:logins` in the Firefox URL bar
2. Click on the three dots on the top right corner of the page and then `Import Passwords...`
3. Select your browser (select Chromium if you use any browser based on Chromium: Chrome, Opera, Brave, Vivaldi etc.)
4. Select the data you would like to import (Saved Passwords)

#### From a CSV

One of the moderators here (/u/kickass_turing) has generously worked to bring CSV login import to Firefox. You can do this by:

1. Navigate to `about:config` in the Firefox URL bar
2. Search for `signon.management.page.fileImport.enabled` and ensure it is **true**
3. Navigate to `about:logins`
4. Click on the three dots on the top right corner of the page and then `Import from a File...`
5. Select your file and follow the instructions

## Exporting Bookmarks

### Opera

Opera makes it easy to export bookmarks.

Simply go to ```opera://bookmarks``` and click on the **Import/Export...** menu on the left side of the screen. Select the *Export bookmarks* option and save the file.

## Importing Bookmarks

Visit the Firefox help page for [importing bookmarks from an HTML file](https://support.mozilla.org/en-US/kb/import-bookmarks-html-file). 

## Differences from features you may be used to

Visit our useful customizations page for [tips for people migrating from other browsers]({% link firefox/wiki/useful-customizations.markdown %}#tips-for-people-migrating-from-other-browsers).


## Add-ons to replace features you may be used to

Visit the [recommended add-ons page]({% link firefox/wiki/recommended-extensions.markdown %}) for a list of add-ons that replace features you may be used to in competing browsers. 

## Troubleshooting

Visit the main [troubleshooting page]({% link firefox/wiki/troubleshooting.markdown %}) on this wiki for troubleshooting ideas.

{% include edit-on-GitHub.html %}

<!--
Set the front matter:
title = your page title and link name in the navigation
permalink = the url for the page, i.e. example.com/my-awesome-category
category_name = the name of the cateogry you want to use to group posts, you'll need to use the same name on post pages
Save this page in the root directory.
Use the same name for the filename as the permalink, i.e.
permalink: /my-awesome-category/
filename: my-awesome-category.html
-->
