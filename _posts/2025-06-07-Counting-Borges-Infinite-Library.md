---
layout: post
title: "Counting Borges' Infinite Library"
date: 2025-06-07
tags: reading, math
draft: true
math: katex
---
Jorge Luis Borges' *Ficciones* contains many wonderful and cleverly imaginative short stories. Among the most famous is *The Library of Babel*, where he describes the universe as a seemingly infinite library made up of hexagonal floors. From the floor the narrator oversees, he can see floors going up and down indefinitely, with a staircase allowing travel to other floors. Four of the walls on each floor are filled with books, each book is **410 pages long**, each page with 40 lines, each line with **80 letters** taken out of an alphabet of **25 possible characters**. We're gonna work with the assumption that each book is unique. The question running through the story is: ***is the library actually infinite***?

The library in fact *isn't* infinite, and I'm going to attempt and derive the number of books.

## Combinations

Before we find out the possible number of unique books in the library, let's start with a simple example. Suppose we have only two letters "A" and "B".
For a sequence (or *string*) of length 1, we have two possible combinations: A and B. For a string of length 2, the outcomes climb to 4: AA, BB, AB, and BA. In fact, the number of combinations of letters follows a pattern:

|Length|Combinations|
|:----:|:----:|
|1|2|
|2|4|
|3|8|
|4|16|
|5|32|

Following this pattern, the number of combinations will then be the number of choices we have for each letter or symbol (e.g. 2 in this example), raised to the power of the string length.
For a sequence of length 100, we would have $2^{100}$ possible combinations.

We're given that there are 25 possible characters, so for each character we have 25 possible choices, meaning our answer will be $25^{x}$ for some $x$.
Now, $x$ will be the length of the string, or the number of characters in the book. 
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
