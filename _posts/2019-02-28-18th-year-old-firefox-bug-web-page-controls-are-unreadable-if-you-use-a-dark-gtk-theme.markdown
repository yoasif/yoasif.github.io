---
layout: post
title:  "18th year old Firefox bug: Web page controls are unreadable if you use a dark GTK theme"
date:   2019-02-28 22:40:55 UTC
categories: social comments
tags: firefox linux gtk
external-url: 
image: /assets/images/social-previews/firefox.png

---

> text box and text both black ..or both white so can't read
>
> [text in menus and boxes unreadable if using dark GTK theme](https://bugzilla.mozilla.org/show_bug.cgi?id=70315)
>
> this bug reported 18 years ago and still firefox don't want to solve it???!

It's more of a web bug than a Firefox bug. Firefox tries to fit in with your native GTK theme by giving you the dark input fields your GTK theme has.

Web developers set input box text colors but not background colors, which Firefox allows. Firefox displays the dark input field and the dark (overridden) text colors. Users get annoyed.

The issue is web developers assuming that input fields are always light colored, because they are using macOS or Windows, and until recently, neither had dark themes.

Use [Fix Dark Theme Input Boxes](https://addons.mozilla.org/en-US/firefox/addon/fix-dark-theme-input-boxes/) to override this.

> > It's more of a web bug than a Firefox bug.
>
> That may *technically* be true, but the bottom line is I've never had this problem with any other browser.

That is because other browsers don't bother to integrate with your GTK theme. Firefox gets burned here because it tries to be a good platform citizen. It is probably going to be "fixed" by [bug 1411425](https://bugzilla.mozilla.org/show_bug.cgi?id=1411425 "[meta] [gtk] [fission] Remove full-native theming for content (Linux NNT)") so whatever.

> i mean, you can put fixed in quotes if you want, but they are allowing people who don't follow web standards to break their websites with a dark theme. similarly, allowing people who don't follow security standards to compromise your desktop wouldn't make any sense.
>
> in any case, allowing the system theme to propagate theming to the website isn't part of w3c spec, so why the hell are they breaking websites because the desktop theme asks them to? fucking retarded.
>
> they have a browser that doesn't work in a sensible configuration without the user hacking it together. this has been a problem for years, and this specific bug is 2 years old.
>
> i'm still using the browser, and i've come up with workarounds for years. but they're fixing it without quotes because it deserves to be fixed without quotes.

I don't think that is standardized (in either direction). Unless you can point to the spec.

Native theming has been part of web browsers forever -- I know Safari had it, Netscape had it, Camino had it - even IE had it.

> your initial assertion was they were doing it to be a good platform citizen, and it's retarded to do something that allows a common platform choice to break the web, if you're a web browser.
>
> > Native theming has been part of web browsers forever -- I know Safari had it, Netscape had it, Camino had it - even IE had it.
>
> and to my knowledge, they didn't break the web because they didn't make stupid decisions and then ignore user complaints for a decade.

<q>your initial assertion was they were doing it to be a good platform citizen, and it's retarded to do something that allows a common platform choice to break the web, if you're a web browser.</q>

When sites don't override form widget styling, everything works fine. It is only when the website makes a change to widget styling and doesn't take into consideration that their assumption that controls are light colored may be incorrect that this becomes an issue. In the default state, everything works fine.

<q>and to my knowledge, they didn't break the web because they didn't make stupid decisions and then ignore user complaints for a decade.</q>

No other OSes have had native dark theming until very recently. It would be impossible for them to ignore user complaints for a decade if the users never complained because they never had access to dark themes in the first place.

> > When sites don't override form widget styling, everything works fine
>
> unless they set the font color. even then, that's a big if. considering that a pretty large majority of websites get fucked by this bug.
>
> the thing is, it's a feature in firefox, you just have to know about about:config, then know the specific key to enter, and then know what values will work for your system.
>
> the capability is in the fucking browser, and their solution was to just be a shitty web browser (in this regard) instead of adding a check box.

So you dropped the argument that the web has a standard spec for widget/control theming that is separate from OS styling?

> > So you dropped the argument that the web has a standard spec for widget/control theming that is separate from OS styling?
>
> no. since we both agreed that there is no spec that says OS style has to propagate into the web rendering engine, i don't understand what you're trying to argue about.

I'm not arguing about anything -- you seem to be the one with the chip on your shoulder.

So you agree that it is web authors that are breaking their own websites on minority OSes because they don't realize that browsers on those OSes may respect the users wishes that controls are themed according to their OS theme, right?

* This works fine for me: <https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Input>
* As does: <https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/button#Value>
* and this: <https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/checkbox>
* and this: <https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea>
* this too! <https://developer.mozilla.org/en-US/docs/Web/HTML/Element/select>

(yes, I am using a dark theme on Linux, and yes, all of those examples are themed appropriately.)

> > So you agree that it is web authors that are breaking their own websites on minority OSes because they don't realize that browsers on those OSes may respect the users wishes that controls are themed according to their OS theme, right?
>
> no. tons and tons of websites are broken because of a team effort between web designers not doing perfect theming and firefox not doing its job of rendering websites sanely. it has very little to do with the OS, because the OS simply passes information to the web browser.
>
> > you seem to be the one with the chip on your shoulder.
>
> i didn't refer to a bug fix as a bug "fix"

Native theming has been around forever. Clearly, you prefer that browsers not theme themselves based on the OS that they run on. In that case, you can change the preference.

I don't get the anger, personally.

I *prefer* native theming and will be disappointed when it goes away. Hopefully it *does* become a standard, so at least developer expectations can be met by user agents.

<q>i didn't refer to a bug fix as a bug "fix"</q>

Not sure why that bothers you. I *like* the current behavior, and I doubt there will be a way to override this when it arrives - you don't inject GTK back into web content after you have spent development resources into removing it, so I would see a regression. So it would feel like a "fix" to me.

---

{% include donate-social.html %} You can also message me on [Mastodon](https://mastodon.social/@yoasif).