---
layout: page
title: Common Problems
permalink: /firefox/wiki/support/troubleshooting/common-problems/index.html
category_name: firefox-docs
exclude: true

---

{% include breadcrumbs.html %}

There are a some commonly reported issues that people may have when using Firefox. This page exists to help you find solutions for them.

## Video playback issues (stuttering, video corruption, slowness)

Most video playback issues people experience on Firefox are due to old or buggy drivers. Sometimes, hardware acceleration is not enabled. Follow these steps to solve most video playback issues.

### Enable hardware acceleration 

1. Click the menu button (☰) and choose Settings.
2. Select the General panel.
3. Under Performance, make sure *Use recommended performance settings* is checked.
4. Click the Firefox menu (☰), then click Quit.
5. Start Firefox the way you normally do.

If that doesn't fix your issue, [update your graphics drivers](https://support.mozilla.org/en-US/kb/upgrade-graphics-drivers-use-hardware-acceleration). 

### Update drivers

**Note: Do not use Windows Update. Windows Update often has very old drivers.**

Visit the driver page for the GPU you have in your computer. If you have a dual GPU machine, download the latest drivers for both of the GPUs in your machine.

* [Intel](https://www.intel.com/content/www/us/en/support/detect.html)
* [Nvidia](https://www.nvidia.com/Download/index.aspx)
* [AMD](https://www.amd.com/support)

### Enable WebRender

If updated drivers don't help, you can try enabling WebRender, Firefox's [new rendering engine](https://hacks.mozilla.org/2017/10/the-whole-web-at-maximum-fps-how-webrender-gets-rid-of-jank/):

1. Navigate to ```about:config``` and accept the warning.
2. Search for ```gfx.webrender.all```
3. Toggle ```gfx.webrender.all``` to **true**
4. Restart Firefox

## Using too much memory

### Windows: Enable Automatic Page File sizing

We often see reports from people who are running out of memory, often due to low amounts of RAM in their machines. Windows has a built in way to extend the amount of virtual memory available to applications, but this setting may have been changed. Here, we show you how to set it to the recommended setup.

1. Open **Control Panel** through Windows Search. 
2. In *Control Panel* head to **System and Security**. 
3. Next open the **System** option. 
4. Click the **Advanced system settings** option from the left pane. A new window, *System Properties* will open. 
5. Click the **Advanced** tab.
6. Under the *Performance* section, click the **Settings** button.
7. Click the **Advanced** tab.
8. Under the *Virtual memory* section, click the **Change** button.
9. Ensure that the **Automatically manage paging files size for all drives** checkbox is *checked*.
10. Click **OK**

Your page file should now be set up correctly. 

### File a memory bug

If Firefox is using an unexpected amount of RAM, report a bug by following the steps below:

1. Open ```about:memory?verbose``` in a new tab.
2. Click *Measure and save...*
3. Attach the memory report to a [new bug](https://bugzilla.mozilla.org/enter_bug.cgi?product=Core&component=Memory%20Allocator)
4. Paste your ```about:support``` info (Click *Copy text to clipboard*) to your bug.

> [If you are experiencing a bug, the best way to ensure that something can be done about your bug is to report it in Bugzilla. This might seem a little bit intimidating for somebody who is new to bug reporting, but Mozillians are really nice!](http://dblohm7.ca/blog/2014/08/14/diffusion-of-responsibility/)

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
