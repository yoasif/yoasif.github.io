---
layout: post
title:  "How can I set a manually installed browser as the default on Debian-based distributions like Ubuntu and Mint?"
date:   2019-02-05 10:21:34 UTC
categories: social comments
tags: browsers linux debian ubuntu mint
external-url: https://www.reddit.com/r/firefox/comments/ancrgu/set_firefox_developer_as_default_in_gnulinux/efscqfe/
image: 

---

>Hi
>
>I am trying to set my Firefox developer as default in GNU/Linux, But I am stuck. Firefox Dev didn't shows up in `sudo update-alternatives --config x-www-browser`. In some app I have set them manually, but it's painful to set to every app, since they read the default value in my system. I don't use desktop environment so `.desktop` didn't work for me.
>
>Anyone successfully add firefox Dev as default using `sudo update-alternatives --config x-www-browser` ?
>
>Thanks.

This may be helpful for you: <https://askubuntu.com/a/965417>

Mirrored below:

> I have qutebrowser installed to ~/.local/bin which is on my $PATH. I had put the full path to the executable, meaning I had to run
>
> `sudo update-alternatives --install /usr/bin/x-www-browser x-www-browser $HOME/.local/bin/qutebrowser 200`
>
>instead of using qutebrowser only as second-to-last argument (because update-alternatives complained about the path not being absolute) then
>
> `update-alternatives --config x-www-browser`

---

{% include donate-social.html %} You can also message me on [Mastodon](https://mastodon.social/@yoasif).