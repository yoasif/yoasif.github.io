---
layout: page
title: Useful Customizations for Firefox
permalink: /firefox/wiki/useful-customizations/index.html
category_name: firefox-docs
exclude: true

---

{% include breadcrumbs.html %}

There are a lot of ways to customize Firefox -- we try to collect some of the best ones here. 

## Tips for people migrating from other browsers

### Profiles

Chrome has a profile feature that is integrated into the browser chrome. Firefox offers a similar feature (it is literally older than Chrome itself), but the easiest way to get to it is inside a page. 

To use this, open ```about:profiles``` in Firefox - here, you can create and launch additional profiles. Not the best integration, but it exists. There is an [open bug](https://bugzilla.mozilla.org/show_bug.cgi?id=1542189) that you can watch to improve the UX around this in Firefox.  

### Tab Previews / Cycling through tabs in recently used order 

By default, Firefox shows a tab preview and cycles through tabs in recently used order when using Ctrl+Tab. This looks like task switchers in Windows and macOS, but is not the same as prior Firefox behavior, or other browsers. If you don't like this feature, it is easy to disable. 

1. Click the menu button (☰) and choose Preferences.
2. Select the General panel.
3. Uncheck *Ctrl+Tab cycles through tabs in recently used order*

If you like the default behavior, but want to sometimes use the old behavior, you can use **Ctrl+Page Down** and **Ctrl+Page Up** instead. 

### Opening bookmarks in new tabs

You may prefer other browsers' behavior of opening bookmarks in new tabs. You can do the same thing in Firefox:

Set ```browser.tabs.loadBookmarksInTabs``` to **true** in ```about:config``` 

### Show bookmarks in a tab

Some other browsers show bookmarks in a tab, instead of a sidebar or new window. You can do this in Firefox by opening ```chrome://browser/content/places/places.xhtml``` in a new tab. You can also bookmark this page for easy access.

### Don't close the window when closing the last tab.

Some other browsers do not close the window you are in when you close the last tab. You can replicate this in Firefox by setting ```browser.tabs.closeWindowWithLastTab``` to **false** in ```about:config``` 

### Smaller tabs

Some other browsers let tabs get really tiny. Firefox doesn't do that by default, but you *can* make Firefox tabs narrower. Edit ```browser.tabs.tabMinWidth``` to a smaller number, as low as **50**.

## Tips for everyone else

### Choose what color scheme (light or dark) Firefox chooses for web pages

By default, Firefox uses your theme colors to decide what color scheme it asks for web pages to be rendered in. You can configure this behavior and [choose the color scheme](https://support.mozilla.org/kb/change-web-appearance-settings-firefox) you would like to use for those websites. 

To access these settings, follow the steps below:

1. Click the Firefox menu.
2. Select Settings.
3.     Go to the General panel on the left.
4.     Scroll down to Language and Appearance.
5.     Select the color scheme you want to use for the websites you visit. 

### Compact density (make toolbars smaller)

If you prefer a smaller toolbar UI, or you are on a lower resolution display, you may want to update make Firefox's toolbars smaller using the unsupported [compact mode density](https://support.mozilla.org/kb/compact-mode-workaround-firefox) option. 

1.   Type **about:config** in the address bar and press Enter.
2.    A warning page may appear. Click Accept the Risk and Continue to go to the about:config page.
3.    Find the `browser.compactmode.show` preference.
4.    Switch the toggle to **true** and then close the tab.
5.    Click on the menu button to open the menu panel.
6.    Click More tools.
7.    Choose Customize toolbar….
8.    At the bottom of the panel, click Density.
9.    Choose Compact (not supported) from the menu options.
10.    Click Done. 
 
## Advanced settings tweaking with about:config

`about:config` is a page you can access in Firefox that allows you to view and edit a huge variety of settings Firefox uses. This index includes every single user preference and a whole lot more, including experimental works-in-progress and even a batch of very powerful settings uplifted from the Tor Browser, a fork of Firefox.

#### How to use about:config

1. Enter `about:config` into the address bar and press enter.

2. Accept the risks.

3. Use the search bar at the top to find the setting you want. Spaces before or after will break the search.

4. Double click on the setting you want to change. This toggles true/false settings, and opens a dialog allowing you to edit others.

Things to note:

* The warning is true. You can do a lot of damage to your browser by messing with the wrong settings here.

* **Bold entries** are modified from the default values, either by you or by the browser. You can reset a setting to default by right-clicking and selecting 'reset'.

* Spaces at any point in the search breaks it. Be careful when copy/pasting to not include one at the beginning or ending, and always use periods/full stops between words.



| Description | Preference | Value |
|--|--|--|
| Disable autocomplete in the address bar. This will remove suggestions from your history and bookmarks, along with search suggestions. | **browser.urlbar.autocomplete.enabled** | `false`
| Disable [Pocket integration](https://support.mozilla.org/kb/what-pocket). | **extensions.pocket.enabled** | `false`
| Disable [Firefox accounts integration](https://www.mozilla.org/firefox/accounts/). | **identity.fxaccounts.enabled** | `false`
| Disable [Reader mode](https://support.mozilla.org/kb/firefox-reader-view-clutter-free-web-pages). | **reader.parse-on-load.enabled** | `false`
| Disable [Firefox Screenshots](https://support.mozilla.org/kb/firefox-screenshots). | **extensions.screenshots.disabled** | `true`
| Disable [syncing your active theme](https://www.reddit.com/r/firefox/comments/ffu7y8/how_not_to_sync_themes/) across Firefox profiles or installs. | **services.sync.prefs.sync.extensions.activeThemeID** | `false`
| Disable video/audio autoplay entirely. The disable autoplay feature in Firefox has an escape hatch for media that is played after someone interacts with the page, since it tries to ensure that people don't think the page or browser is broken. | **media.autoplay.blocking_policy** | `2` (number)
| Show Firefox profiles as separate taskbar icons in Windows. | **taskbar.grouping.useprofile** | `true` (boolean)
| Load bookmarks in a new tab. | **browser.tabs.loadBookmarksInTabs** | `true`
| Load bookmarks in a new [*backgrounded* tab](https://www.reddit.com/r/firefox/comments/fbjxd5/open_new_tabs_from_firefoxs_bookmarks_and_history/). Requires *browser.tabs.loadBookmarksInTabs* to be set to `true` as well. | **browser.tabs.loadBookmarksInBackground** | `true`
| Always shows the Picture in Picture toggle. Firefox shows the Picture in Picture toggle on videos longer than 45 seconds. | **media.videocontrols.picture-in-picture.video-toggle.always-show** | `true`
| Disable text to speech in reader mode. | **narrate.enabled** | `false`
| Choose a container when opening a new tab by clicking the new tab button. | **privacy.userContext.newTabContainerOnLeftClick.enabled** | `true`
| Reduce motion in the Firefox UI. | **ui.prefersReducedMotion** | `1` (number)
| Disable DRM installation prompt. Useful if you don't want DRM support in Firefox. | **media.gmp-widevinecdm.visible** | `false`
| Use backspace to go back. | **browser.backspace_action** | `0`
| Disable ["moments page" full page post-upgrade notification](https://firefox-source-docs.mozilla.org/browser/components/newtab/content-src/asrouter/docs/first-run.html#upgrade-dialog). | **browser.startup.upgradeDialog.enabled** | `false`
| Use a different search engine in private browsing. | **browser.search.separatePrivateDefault.ui.enabled** | `true`
| Disable opening the download panel automatically after download completion. | **browser.download.alwaysOpenPanel** | `false`
| Use the native OS print dialog. | **print.prefer_system_dialog** | `true`

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
