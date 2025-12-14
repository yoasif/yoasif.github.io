---
layout: page
title: How to report memory usage issues in Firefox
permalink: /firefox/wiki/support/troubleshooting/common-problems/how-to-report-memory-usage-issues-firefox.html
category_name: firefox-docs
exclude: true

---

{% include breadcrumbs.html %}

### How to report memory usage issues in Firefox

If Firefox is using an unexpected amount of RAM, report a bug by following the steps below:

1. Open <kbd>about:memory?verbose</kbd> in a new tab.
2. Click *Measure and save...*
3. Attach the memory report to a [new bug](https://bugzilla.mozilla.org/enter_bug.cgi?product=Core&component=Memory%20Allocator)
4. Paste your <kbd>about:support</kbd> info (Click *Copy text to clipboard*) to your bug.

If you are experiencing a bug, the best way to ensure that something can be done about your bug is to report it in Bugzilla. This might seem a little bit intimidating for somebody who is new to bug reporting, but [Mozillians are really nice](http://dblohm7.ca/blog/2014/08/14/diffusion-of-responsibility/)!

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
