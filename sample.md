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
