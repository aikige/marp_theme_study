<!--
headingDivider: 2
paginate: true
-->

# TOP Page
<!-- _class: top -->

Logo is shown by background setting.

## Second Page

`inline code`

```
Code Block
```

## Split Background

![bg left:30% contain](image.png)

Markdown:

```
![bg left:30% contain](image.png)
```

## Split Background with Margin

![bg left:30% contain](image_margin_left.png)

Markdown:

```
![bg left:30% contain](image_margin_left.png)
```

`image_margin_left.png` contains 100px margin.

## Split Background: Multiple Images

![bg left:30% contain vertical](image_margin_left.png)
![bg contain](image2_margin_left.png)

Markdown:

```
![bg left:30% contain vertical](image_margin_left.png)
![bg contain](image2_margin_left.png)
```

## Split Background + CSS Margin
<!-- _class: right_bg_margin -->

![bg right:30% contain](image.png)

Markdown:

```
![bg right:30% contain](image.png)
```

CSS:

```
section[data-marpit-advanced-background-split="right"] figure {
	margin-right: 70px !important;
}
```

## Split Background + CSS Margin + Cover
<!-- _class: right_bg_margin -->
![bg right:30% cover](image.png)

Markdown:

```
![bg right:30% cover](image.png)
```
CSS:

```
section[data-marpit-advanced-background-split="right"] figure {
	margin-right: 70px !important;
}
```

## Split Background + Cover

![bg left:30% cover](image.png)

Markdown:

```
![bg left:30% cover](image.png)
```

## Simple Background Setting

![bg opacity:0.7 contain](image.png)

Markdown:

```
![bg opacity:0.7 contain](image.png)
```

## Place Page Number at Center of Footer & Add Border
<!-- _class: center_paging -->
CSS:
```
section::after {
	right: 30px; /* works as footer margin */
	width: calc(100% - 60px);
	text-align: center;
	border-top: solid black 1px;
	padding-top: 15px;
}
```

Let `section::after` span all pages.
Here, it's good idea to use [`calc()`](https://developer.mozilla.org/docs/Web/CSS/calc) feature of CSS.

## Adding Margin for Background to avoid Footers
<!-- _class: center_paging -->
![bg opacity:0.5](image.png)

Markdown:
```
![bg](image.png)
```
CSS:
```
section[data-marpit-advanced-background] figure {
	margin: 30px !important;
	margin-bottom: 78px !important;
}
```

## Adding Margin for Split Background to avoid Footers
<!-- _class: center_paging -->
![bg right](image.png)
![bg opacity:0.5](image.png)

Markdown:
```
![bg right](image1.png)
![bg](image2.png)
```
CSS:
```
section[data-marpit-advanced-background-split] figure {
	margin-top: 30px !important;
	margin-left: 0 !important;
	margin-right: 0 !important;
	margin-bottom: 78px !important;
}
section[data-marpit-advanced-background-split="right"] figure:last-child {
	margin-right: 30px !important;
}
```

## Adding Margin for Split Background to avoid Footers
<!-- _class: center_paging -->
![bg left](image.png)
![bg opacity:0.5](image.png)

```
section[data-marpit-advanced-background-split] figure {
	margin-top: 30px !important;
	margin-left: 0 !important;
	margin-right: 0 !important;
	margin-bottom: 78px !important;
}
section[data-marpit-advanced-background-split="left"] figure:first-child {
	margin-left: 30px !important;
}
```
