---
layout: post
title: "Counting Borges' Infinite Library"
date: 2025-06-07
tags: reading, math
draft: true
math: katex
---
Can all knowledge imaginable be contained in books? Jorge Luis Borges' 1956 *Ficciones* contains many wonderful and imaginative short stories, steeped in mathematical language and themes. Among the most famous (and my personal favorite) is *The Library of Babel*, in which he envisions the universe as a giant library, made up of a series of hexagonal floors:

> The universe (which others call the Library) is composed of an indefinite, perhaps infinite number of hexagonal galleries...The Library is a sphere whose exact center is any hexagon and whose circumference is unattainable.

Essentially, each floor is a hexagon covered with bookshelves, connected to the floors above and below by a seemingly endless staircase. Each hexagon is identical to each other: the walls have bookcases, each containing **32 books**, each with **410 pages**, each page with **40 lines**, each line with approximately **80 letters** composed of an alphabet of **25 letters**.

Could the library be infinite? 

\**drum roll please*\*

No, it can't. In fact, it's brought up pretty early in the story:

> ...the librarian deduced that the Library is "total"...and that its bookshelves contain all possible combinations of the twenty-two orthographic symbols...that is, all that is able to be expressed, in every language.

However, can we calculate exactly how many books there are in the library?

## Combinations

Before we find out the possible number of unique books in the library, let's start with a simple example. Suppose our alphabet has only two letters: A and B.
For a sequence (or *string*) of length 1, we have two possible combinations: A and B. For a string of length 2, the outcomes climb to 4: AA, BB, AB, and BA, as there are two options for each position in the string. 

In fact, we can notice a pattern if we keep going:
|Length|Combinations|
|:----:|:----:|
|1|2|
|2|4|
|3|8|
|4|16|
|5|32|

Following this pattern, the number of combinations will then be the number of choices we have for each letter or symbol (e.g. 2 in this example), raised to the power of the string length.
So, for a sequence of length 100, we would have $2^{100}$ possible combinations.

We're given that there are 25 symbols in the alphabet, so for each position we have 25 possible choices instead of two, meaning our answer will be $25^{x}$ for some length $x$.
From the constraints given in the story there will be $410\times 40\times 80 = 1,312,000$ characters in the book, meaning each book in the library is a unique ordering of length $1,312,000$ of the $25$ original symbols.

Thus our answer is 

$$25^{1,312,000}$$

books. How big is this number? Well, the full number will contain 1,834,098 digits, whereas the number of atoms in the observable universe is estimated at *only* $10^{80}$.

## Narrative Consequences
So, the number of books in the library is finite, but large enough that it is functionally infinite. In the story, there are many rumors that spread about the kinds of books that exist. For instance, some speculate there's a book that contains the exact history of the universe, and a book that contains an exact description of each individual's life. The narrator describes wars and book burnings that take place, and how people go on journeys to other floors searching in vain for meaningful books. It must be really maddening to continuously come up against nonsense (since that is what most books will contain). 

In a sense then, the library *is* indeed infinite, since anything that we can imagine, or any concept, idea, sound, etc. that can be put into words *has* to appear somewhere in the library. But could there be something too long or complex that appears in the library? If a concept cannot be explained in a string of 1,312,000 characters, its "sequel" has to be found somewhere too.
For instance, if *War and Peace* does not fit into a single volume, at some location in the library the next 1,312,000 characters are found, and so on for all the characters in the book. Could there exist something not contained within the library's pages?

## Conclusion
Borges' story is a great example of how infinity is truly incomprehensible to us. [Entire books](https://en.wikipedia.org/wiki/The_Unimaginable_Mathematics_of_Borges'_Library_of_Babel) have been written analyzing the mathematics behind this story.
Just writing this post has given the author quite a headache, but this story has definitely lived rent free in his head for a while now.

As soon as I read the story earlier this year, it captivated my CS brain by reminding me of concepts from Discrete Mathematics and Formal Languages courses I had taken many years prior. Borges' ability to express such complicated ideas in just a couple pages is a testament to his abilities beyond literature. If you have made it this far, please please pick up a copy *Ficciones*, and let me know what you think!

Cheers~

## References
- The Unimaginable Mathematics of Borges' Library of Babel
- [This article](https://www.had2know.org/academics/compute-number-digits-exponents-calculator.html) on how to calculate the number of digits in a number. The formula is $D = \lfloor 1 + b\log a\rfloor$ for a number $a^b$.
- [https://www.livescience.com/how-many-atoms-in-universe.html](https://www.livescience.com/how-many-atoms-in-universe.html)
