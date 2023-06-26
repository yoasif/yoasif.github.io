---
layout: page
title: Troubleshooting
permalink: /firefox/wiki/support/troubleshooting/index.html
category_name: firefox-docs
exclude: true

---

{% include breadcrumbs.html %}

Mozilla has a list of [basic troubleshooting](https://support.mozilla.org/kb/troubleshoot-and-diagnose-firefox-problems) steps. These can solve **almost every problem**. 

## Basic solutions

Try [clearing cookies and data](https://support.mozilla.org/kb/clear-cookies-and-site-data-firefox#w_clear-cookies-for-the-current-website) for a single site.

If you do not use any assistive technologies (such as screen readers, braille displays, narrators, etc), try [disabling accessibility services](https://support.mozilla.org/kb/accessibility-services#w_should-i-disable-firefox-accessibility-service).

If the problem is with a certain site, like you can't login, or certain functionality that used to work no longer works, try [clearing the site's data](https://support.mozilla.org/kb/clear-cookies-and-site-data-firefox#w_clear-cookies-for-the-current-website).

If no pages load at all, or take a long time to load, check your [connection settings](https://support.mozilla.org/en-US/kb/connection-settings-firefox) and try setting the **No Proxy** setting. If this works, your antivirus may be causing this issue. To fix this problem, disable or uninstall the antivirus, and the case should be resolved.

Try [troubleshoot mode](https://support.mozilla.org/kb/troubleshoot-and-diagnose-firefox-problems#w_3-restart-firefox-in-troubleshoot-mode). If it works in troubleshoot mode, it is likely a problem with an add-on.

[Reinstall Firefox](https://support.mozilla.org/kb/troubleshoot-and-diagnose-firefox-problems#w_4-reinstall-firefox) - sometimes Firefox itself can get corrupted or have a bad update. This generally doesn't do anything (mostly because this isn't the problem), but sometimes it does. Don't be discouraged if this doesn't work. 

## More advanced solutions

### Refreshing your profile

If troubleshoot mode and reinstalling Firefox doesn't work, you probably have a corrupt profile. This can be fixed by [refreshing Firefox](https://support.mozilla.org/kb/refresh-firefox-reset-add-ons-and-settings).  

[Refreshing Firefox](https://support.mozilla.org/kb/refresh-firefox-reset-add-ons-and-settings) creates a fresh new profile for you without losing your bookmarks, history, passwords, and so on. You **will lose your preferences and add-ons though**, so make sure to export your settings, if the extension offers it. This will fix most people's issues. If you are reading this from a comment on a post on reddit and you would prefer not to refresh your profile without trying other troubleshooting steps, feel free to skip this step. 

* You can [perform a complete backup of your profile](https://support.mozilla.org/en-US/kb/back-and-restore-information-firefox-profiles).
* Using [Firefox Sync](https://support.mozilla.org/kb/how-do-i-set-sync-my-computer) with multiple devices can restore your add-ons and some of your settings.

### New Profile

If all of the above doesn't work, you may have a very damaged profile. This is rare. You can try a brand [new profile](https://support.mozilla.org/kb/troubleshoot-and-diagnose-firefox-problems#w_6-create-a-new-firefox-profile) without any of your settings. 

* Using [Firefox Sync](https://support.mozilla.org/en-US/kb/how-do-i-set-sync-my-computer) with multiple devices can restore your add-ons and some of your settings.

# Common Problems

Visit the [common problems]({% link firefox/wiki/common-problems.markdown %}) page for help with common problems people may experience when using Firefox. 

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
