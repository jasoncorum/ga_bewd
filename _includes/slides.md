![GeneralAssemb.ly](/img/icons/FEWD_Logo.png)

#FEWD - CSS Basics

###Dan Drinkard

<dan.drinkard@gmail.com> &bull; [@drinks](https://twitter.com/drinks)

---


##Agenda

- HTML Basics Review
- Images
- Intro To CSS
   - Link Tag
   - Colors
   - Fonts
- Linking To Other Pages & Hover effects
- Lab Time

---

![GeneralAssemb.ly](/img/icons/exercise_icon_md.png)

##HTML Basics Review - Layout Exercise

---

![GeneralAssemb.ly](/img/icons/exercise_icon_md.png)

##HTML Basics Review - What Tag Is It?

---

##HTML Basics - Images

- Images are placed using the ```<img>``` tag.

```<img src="img/imageName.jpg" alt="alternative text">```

--

##Html Basics - Images

The `img` tag requires a `src` attribute, which tells the browser where to find the image to be placed.

--

##Html Basics - Images

How would you write the src?

![](/img/unit_1/folder_structure.png)

- There are different approaches to specifying an image location

--

##Html Basics - Images

- Inside `webroot`, a relative path could be used:

`<img src="images/logo.png">`

--

##Html Basics - Images
Relative Path

![Parent Folder Structure](/img/unit_1/folder_structure_parentDirectory.png)

Note:

* Given this folder structure the same image would be `<img src="../images/logo.png">`
* Note that `..` means to go up a directory, and can be used repeatedly: `../..` would go up two directories.


--

##Html Basics - Images

Absolute Path

`<img src="/images/logo.png">`

Note:
Absolute URLs start with a `/`, so if we imagine that our `webroot` directory was stored on a server such that the `webroot/index.html` file is accessible at `http://example.com/index.html`, then placing the logo image could be done from any html page with: `<img src="/images/logo.png">`

The benefit here is that this same `src` path works on any html page, no matter what its location, so the same `img` tag can be used on both the `webroot/index.html` page and the `webroot/about/index.html` page.

--

## A 'Leading' slash

Means start from the webroot.

The downside is that the root of the project is not the webroot, the full path from it must be included each time regardless.

`<img src="/class01/cookierecipe/cookie.png" alt="For every. single. image.">`

--

##`<base>` Can help w/ this...

```html
<head>
  <base url="/path/where/images/are">
</head>
<body>
  <img src="myimage.png" alt="My Image!">
</body>
```

--

##...but `<base>`ically nobody uses it.

- POLS/POLA
- It's like lying to future You.

--

##Html Basics - Images

Full URL

```html
<img src="https://ga-core.s3.amazonaws.com/production/uploads/program/default_image/397/thumb_User-Experience-Sketching.jpg">
```

- Necessary when using an image on another site.
- More work for the browser when using images on your own site.

Note:
For linking to images, make sure that you have permission to use the image in this way. Even then, it is often better to host a copy of the same image, rather than link to another server, because it reduces dependency.

--

##Html Basics - Images

Protocol-relative URL

```html
<img src="//ga-core.s3.amazonaws.com/production/uploads/program/default_image/397/thumb_User-Experience-Sketching.jpg">
```

Note:

You may see this in widgets that you embed on your pages; don't worry, it's actually valid code.
Uses whichever protocol the user is browsing with. It's great when you don't know if the client is HTTP or HTTPS.

--

##Html Basics - Images

alt attribute

    <img src="puppy.jpg" alt="My cute puppy">

Note:

A piece of text to be used in lieu of the image when the image is unavailable, or if the browser can't display images.

Using `alt` attributes has the added benefit of giving search engines more linguistic context about the image as it is used on your page.

Reasons an image may not load:

*   There was a connection error, the browser didn't download the image.

*   The file was not found, perhaps because the image got moved elsewhere and the page wasn't updated yet to reflect the change.

*   The user is running a text-based browser such as an older phone with a WAP-style browser, or a non-graphical browser like lynx.

*   The user is using a screen reader because she has low vision, which will read the `alt` text aloud or present it through a braille reader.

---

##Html Basics - Images

There are three main image file formats:

--

##Image File Formats

####.png

- 8-bit transparency (256 shades of see-through)
- Complicated images can get kinda big

Note:
Supports transparency and semi-transparency, great for logos, icons, and repeating background tiles. Almost always preferable to a `gif`, unless semi-transparency is not needed, and the `gif` format is significantly smaller.


--

##Image File Formats


####.gif

- 1-bit transparency (only on or off)
- Color masks, blech
- It's 2014! use a PNG

--

##Image File Formats

####.jpeg

- No transparency
- Small with complicated images, great for photos!
- Generational Loss :(

Note:
No transparency, can be stored at different compression levels with varying amounts of "lossy-ness", typically the best format for photos. (Try to balance between photo quality and file size.)
Suffers from generational loss-each time you save it gets a little worse!

---

![GeneralAssemb.ly](/img/icons/code_along.png)

##'About Me' Page

---

##CSS

![](/img/unit_1/css_syntax.png)

---


##CSS

Where does CSS go?

- Inline
- In the `<head>`
- In a separate file


Note:
CSS should go in a separate file. We're going to start by placing them in the head for convenience and to learn the syntax. We'll show inline styles at the end, just to demonstrate.

--

##CSS
### Link Tag

Using a separate CSS file

It's best practice to put CSS in its own file and link to it from the `<head>`.

```<link rel="stylesheet" href="style.css">```

Note:
"The `link` tag needs two attributes: `rel="stylesheet"` and an `href` attribute.

The `href` attribute value works very similarly to linking to an image, or to another page.

---

##CSS Break Down

```css
p {
    color: red;
    font-weight: bold;
}
```

--

##CSS Break Down

This whole thing is called a **rule**.

The `p` is called a **selector**, and it's followed by a set of **declarations** in a **declaration block**.

Note:
This is all rather formal, nobody says 'declaration block'

--

##CSS Break Down

The **selector**, `p` in this case, specifies what parts of the HTML document should be styled by the declaration. This selector will style all `p` elements on the page.

--

##CSS Break Down

The **declaration block** here is:

```css
{
    color: red;
    font-weight: bold;
}
```

**Declarations** go inside curly braces.

--


##CSS Break Down

#### Declarations

This example has two declarations. Here's the first:

```css
color: red;
```

Note:
Every declaration is a **property** followed by a **value**, separated by a colon, ending in a semicolon.

In this declaration, we are setting the `color` **property** to the **value** `red`.

--


##CSS Break Down

Let's look at the second declaration:

```css
font-weight: bold;
```

Note:

What style **property** are we specifying here?

What **value** are we setting that **property** to?

Try writing a new set of styles for another element, like an `h1`.


--

##CSS Break Down

Why might we want to link to a separate CSS file?

Note:

Discuss as a class

---

## _Cascading_ Style Sheets

So what does cascading mean?

* Importance
* Specificity
* Inheritance

---

## Importance

```css
p { color: black; }
p { color: red; }
```

Note:
What color will paragraphs be?

--

<p style="color:red">Red!</p>

--

## Importance

```html
<a href="" style="color:black;">What color am I?</a>
<style>
    a { color: red; }
</style>
<link rel="stylesheet" href="example.css">
```

```css
/* in example.css */
a { color: blue; }
```

Note:
What color will links be?

--

<a href="#" style="color:black;">What color am I?</a>

--

## Order of importance

1. Inline styles
2. Embedded styles
3. Linked styles

---

## Specificity

```css
p { color: black; }
body p { color: green; }
#content p { color: pink; }
```
_Specificity_ determines which rule wins out among others of the same _importance_.

Calculating specificity is easy to do! But we'll touch on it later.
For now, just remember that selectors with IDs (the last one above) win most of the time.

Note:
Each one of the rules is applied to the page, but paragraphs can only have one color.

---

## Inheritance

Inheritance is the propagation of style from parent elements to their children (think: nested HTML tags)

--

## Inheritance

```html
<style>
    body { color: green }
</style>
<body>
    <p>
        This paragraph is green, inherited from
        the body tag's css rule
    </p>
</body>
```

---

More on [specificity and inheritance at Smashing Mag](http://coding.smashingmagazine.com/2010/04/07/css-specificity-and-inheritance/)

Note:
So we've talked about colors a lot, using words like red, green and black. How do we know what colors exist?

---

##Cascading Style Sheets (CSS)
###Colors

Colors can be specified in CSS in a variety of ways:

![](/img/unit_1/color.png)

Note:
- named keywords
- hex codes
- rgb
- rgba
- hsl
- hsla


---

##Color
###Named Color Keywords

These are used less frequently, but are handy for basic colors like `black` and `white`. There are actually quite a few named colors.

See [MSDN's reference](http://msdn.microsoft.com/en-us/library/ie/aa358802.aspx) for a full list.

---

##Color
###Hex Codes

![Hex Color explanation](/img/unit_1/hex_colors.png)

Note:
"Hex" values are so-called because they use hexadecimal, or base-16, to describe the color values for red, green, and blue. Each of the 3 color values is expressed by two hexadecimal digits, from `00` (no color) to `FF` (full color), and are written in the order red, green, then blue, after an initial `#` sign.

Hex values can be abbreviated to only 3 digits if each digits is doubled. So `#FFFFFF` (white) can be expressed more succinctly as `#FFF`, and `#000000` (black) can be expressed as `#000`. `#FA6198`, however, cannot be abbreviated without altering the color.

--

##Base-16? Whaaat...

### Base-10 (People numbers)
0, 1, 2, 3, 4, 5, 6, 7, 8, 9

### Base-16 (More of that 2^n math)
0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F

--

##Base-16

- Fits more information into less space
- (FF, FF, FF vs. 255, 255, 255)
- 256 distinct values per color, 3 colors.. 256^3 combinations
- ~16.7 million colors (we call this 24-bit color&mdash;2^24)
- Even more compact for 4,096 of them: #FFF, #AAA, #900...

---

##Color
###RGB Color Values

####```rgb(0,0,0)```

*   Just like the hex colors, but with base-10 numbers.


Note:
FF in base-16 is equivalent to 255 in base-10.

In RGB, `rgb(0,0,0)` is black, `rgb(255,255,255)` is white, `rgb(255,0,0)` is red, etc.

White-space is allowed *inside* the parentheses, so `rgb(255, 0, 0)` will do just as well.

---

##Color
###RGBa Colors


- RGBa works identically to RGB, expect that it takes a 4th value called the "alpha".
- This is a value between 0 and 1 which will be used to determine a color's opacity on the page

![](/img/unit_1/rgba_color.png)

Note:
0 is completely transparent, and 1 being solid. 0.5 or .5 is 50% opacity.

Thus, __rgba(0,0,0,.25)__ is black at 25% opacity and __rgba(255, 255, 255, 0.8)__ is white at 80% opacity.

The alpha value can be in decimal form but cannot use a percentage. When a decimal is used, the leading zero is optional.

---

##Color
###HSL Colors

####HSL

- Similar notation to RGB values, but specify colors using hue, saturation, and lightness.
- `hsl(359, 100%, 10%)`
- numbers are:
   - 'hue' (degrees on color wheel)
   - 'saturation' (percentage from gray to full)
   - 'lightness' (percentage from black to white)

Need to generate colors mathematically? This is your dude.

--

####HSLa

- As with RGBa, HSLa is exactly like HSL for the first 3 values, but takes a decimal 4th alpha-channel value.

- Even though HSL already uses percentages.
- Whatever.

Note:
**Hue** is expressed as a degree angle measure, with red being at 0, green at 120, and blue at 240. Note that the degree unit is implied, and that the angle wraps around, so 360 also refers to red, and -120 is the same as 240 (blue).

**Saturation** is expressed as a percentage, with 100% being a fully saturated color, and 0% being a shade of gray (no hue).

**Lightness** is also expressed as a percentage, 0% being black, and 100% being white. 50% lightness is the "normal" color range: anything above 50% gives a white tint, anything below 50% gives a black shade.

As an example, red is ```hsl(0, 100%, 50%)```, which is equivalent to ```#FF0000```.

Note that changing the opacity allows whatever colors are "behind" an element to shine through, which can alter the visible color significantly, especially at lower opacities.

---

##Color
###Review

So how do we express red in each scheme?

- keyword
- hex
- rgb
- hsl

--

##Color
### OMG Awesome Color Picker

<http://color.hailpixel.com/>

---

##CSS
###Fonts

'cuz Times is ugly.

--

##Font-family

- A 'stack' of typefaces to be tried, in order.
- Use quotes around font names with spaces or punctuation
- `font-family: 'Mrs. Eaves', Georgia, serif;`

--

## Font Family Names

- serif
- sans-serif
- monospace
- cursive
- fantasy

--

## Web-safe Fonts

- "Times New Roman", Times
- Georgia
- Helvetica, Arial
- Verdana
- Tahoma
- "Lucida Sans"
- "Courier New", Courier
- Trebuchet, "Trebuchet MS"
- Impact

--

## Please just no.

- "Comic Sans", "Comic Sans MS"
- Papyrus
- "Copperplate Gothic Bold"

--

## There are more that are probably ok

<http://cssfontstack.com>

---

##Font-size

- The size the type is rendered
- Measured in px, em, rem, ex, %, pt, pc, in, cm, mm
- Default size for body text is 16px

Note:

rem stands for 'root em'
--

## So Which to use?

- **For screen**: px, em/rem, %
- **For print**: pt, in, cm, %

## A note on ems

- Originally the width of an "M" (or em dash)
- ^^ Not the case with digital type, it's constant.
- Em-based metrics scale well with the browser's font size
- Inheritance gets weird!

--

<http://codepen.io/drinks/pen/urtif>

--

## REMs can mitigate EM weirdness

But only available in modern browsers (IE9+).

<http://snook.ca/archives/html_and_css/font-size-with-rem>

---

## Font-weight

- By Keyword: normal, bold, bolder, lighter
- By Number: 100, 200 ... 900
- Most fonts don't have all weights
- WTF.. bolder? lighter!?

Note:
Bolder and lighter refer to 'than the parent.' obvs the weight must exist or it will do nothing.

---

## Font-style

- normal, italic, oblique

Note:

Italic will use special characters if available, oblique will just skew. Don't use oblique.

---

## Font-variant

- normal, small-caps

---

## All together now!

```css
font: normal 300 16px/2 "Helvetica Neue", Helvetica, Arial, sans-serif;
```

- Whoa, what's that /2?

--

```css
line-height: 2
```

Can be unitless, or use px, em, whatever.

---


##CSS
###Review

*   CSS is all about applying _declarations_ to _selectors_ in _rules_.
*   The _cascade_ is a function of _importance_, _specificity_ and _inheritance_.
*   There are (at least) 16.7 million (256^3 or 2^24) colors supported by the web, and we can define them with _keyword_, _hex_, _RGB_, _RGBa_, _HSL_ or _HSLa_ schemes.
*   Fonts are defined in _stacks_ of _families_, and can be fine-tuned with size, weight, style, variant, line-height.

---

##HTML Links

--

## To other pages

- Pretty straightforward: just like images.

 `<a href="otherpage.html">Click me!</a>`
`<a href="../otherpage-in-parent-folder.html">Up a level</a>`
`<a href="http://google.com">A totally different site needs http://</a>`

--

## To spots on the current page

- Use the `id` attribute to define anchor spots:
- `<h2 id="about">About Me</h2>`
- Link it up with the hash:
- `<a href="#about">Jump to About</a>

--

## Make 'em hover 'n stuff

```css
a:hover {
    text-decoration: none;
    background: yellow;
    color: fuschia;
}
```

## :hover is a _pseudoclass_

- :hover
- :active
- :visited
- :link

note:
:link applies to links that have hrefs only; increases specificity - best to avoid.

---


![GeneralAssemb.ly](/img/icons/exercise_icon_md.png)
##Lab Time
*   Wendy G. Bites - Resume.
