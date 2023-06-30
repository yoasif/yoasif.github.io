---
layout: page
title: Firefox Release Channels
permalink: /firefox/wiki/switching-to-firefox/release-channels/index.html
category_name: firefox-docs
exclude: true

---

{% include breadcrumbs.html %}

# Desktop

There are [five versions (release channels)](https://developer.mozilla.org/docs/Mozilla/Firefox#Firefox_channels) of Firefox available for people with various needs.

**[Release](https://getfirefox.com/)**: This version has the full testing from Mozilla, and is the best choice to avoid crashes and other issues. It's updated [around every 4 weeks for major releases](https://wiki.mozilla.org/Release_Management/Calendar).

**[Beta](https://www.mozilla.org/firefox/channel/desktop/#desktop-beta-download)**: If you are interested in seeing what's next, with minimal risk, Beta is the place to be. Firefox Beta builds are for Firefox enthusiasts to test what's destined to become the next released Firefox version. Beta **replaces** release, so you can't have both installed at once. 

**[Developer](https://www.mozilla.org/firefox/channel/desktop/#desktop-developer-download)**: If you are a web developer, or you just want to be a bit more on the bleeding edge than beta, then you want the Developer edition. This is basically the same as beta most of the time, but may have some additional features turned on, especially if they are developer focused.  

**[Nightly](https://www.mozilla.org/firefox/channel/desktop/#desktop-nightly-download)**: Nightly builds are the bleeding edge. Released twice daily, these builds are for Firefox developers or those who want to try out the very latest cutting edge features while they're still under active development.

**[Extended Support Release (ESR)](https://www.mozilla.org/firefox/enterprise/)**: This is the long-term support version of Firefox. It receives major updates [on average every 42 weeks](https://support.mozilla.org/kb/firefox-esr-release-cycle) with minor updates such as crash fixes, security fixes and policy updates as needed, but at least every six weeks. It is meant for use by organizations, mass deployments and users who prefer stability.


If you used...  | You want
---|---
Chrome | **[Firefox](https://getfirefox.com/)** 
Chrome Beta | **[Firefox Beta](https://www.mozilla.org/firefox/channel/desktop/#desktop-beta-download)**
Chrome Dev | **[Firefox Developer](https://www.mozilla.org/firefox/channel/desktop/#desktop-developer-download)**
Chrome Canary | **[Firefox Nightly](https://www.mozilla.org/firefox/channel/desktop/#desktop-nightly-download)**

# Mobile

Mozilla has a *lot* of different mobile browsers for different uses.

## iOS

On iOS, you have a few options: 

**[Firefox](https://itunes.apple.com/app/firefox-private-safe-browser/id989804926?mt=8)**: Firefox is a more traditional web browser than Focus. It has a built in dark mode, offers Firefox Sync support, and tracker blocking. Unlike the Android version, there is no support for add-ons. If you want your Firefox bookmarks on mobile, this is the version you want.

**[Firefox Beta](https://www.mozilla.org/firefox/channel/ios/)**: Test beta versions of Firefox for iOS via Apple’s TestFlight program.

**[Firefox Focus](https://itunes.apple.com/app/firefox-focus-privacy-browser/id1055677337?mt=8)**: Firefox Focus, also known as Firefox Klar in German-speaking countries, blocks trackers by default and doesn't save history, passwords and cookies. It doesn't offer tabbed browsing or Firefox Sync support. Since it doesn't save your history, it is a good browser if you want to do some online shopping or if you want to watch some videos you wouldn't want anyone else to know about.

## Android

On Android, you have more options, depending on your needs:

**[Firefox](https://play.google.com/store/apps/details?id=org.mozilla.firefox)**: This is the current version of Firefox on Android. It is a full featured web browser with the Gecko engine, built to be faster and more Android-native (using [GeckoView](https://mozilla.github.io/geckoview/)), with support for add-ons to extend the browser in many ways. Better customization and support for more extensions are coming in the future.

If you would rather [download an APK](https://github.com/mozilla-mobile/fenix/releases), you can do that too directly from GitHub Releases. Keep in mind that manually installed APKs do not auto-update.

**[Firefox Beta](https://play.google.com/store/apps/details?id=org.mozilla.firefox_beta)**: This is the next version of Firefox on Android. This browser is in beta, so [report any feedback or issues](https://github.com/mozilla-mobile/fenix/issues) you have.

**[Firefox Nightly](https://play.google.com/store/apps/details?id=org.mozilla.fenix)**: Nightly version of Firefox, released almost every day. Meant for developers or users who want to try latest and unstable features.

If you would rather [download an APK](https://firefox-ci-tc.services.mozilla.com/tasks/index/project.mobile.fenix.v2.nightly/latest), you can do that too directly from Firefox CI service. Keep in mind that manually installed APKs from CI do not auto-update and can be unstable.

**[Firefox Focus](https://play.google.com/store/apps/details?id=org.mozilla.focus)**: Firefox Focus, also known as Firefox Klar in German-speaking countries, blocks trackers by default and doesn't save history, passwords and cookies. It also doesn't have Firefox Sync support. Unlike in iOS, it offers tabbed browsing. Since it doesn't save your history, it is a good browser if you want to do some online shopping or if you want to watch some videos you wouldn't want anyone else to know about. It uses [GeckoView](https://mozilla.github.io/geckoview/).

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
