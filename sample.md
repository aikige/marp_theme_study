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
