---
title: "Introduction to Self Supervised Learning"
date: 2022-09-01T11:09:12Z
mathjax: true
layout: post
tags: machine_learning, research, self-supervised
---

Self-supervised learning can sound like a real mouthful!
My family and friends have asked me many times what it is I actually do for 
my master's degree, and I always struggled to come up with a simple answer; 
an answer that really captures the idea without getting too technical.

In this post I would like to try to do just that.
We'll start by defining what *supervised* learning is, since *self*-supervised
learning tries to work around the main limitations of supervised learning.

## Machine Learning
First, it would be beneficial to know what we *mean* when we say machines "learn".
What is being learned exactly?
Machine learning is rooted in how humans learn, when we are given a new task, our first
guesses might be wildly inaccurate, yet with feedback we can quite quickly learn patterns
and approaches to a problem.

For example, let's say we have two types of objects, blue and orange. 
They are mostly different, but like in the image below, there might be some overlapping regions.
Could we find a line that best splits the two groups of dots, that has the fewest errors?
An error would be an orange dot that is in the blue region, and vice-versa.
If we are given a new dot, and we don't know if it's blue or orange, we want the highest chance of being correct.

![Binary Classificaiton](/assets/binary_classification.png "Can we find a line that best separates blue and orange dots?")

If we are given an entirely different set of blue and orange dots, our line will look different, it will reflect 
the best solution to *that* set of blue and orange dots.
The solution we find for this specific problem will work with similar blue and orange dots.
So, we have to "learn", or figure out by adjusting, the line that leads to the best result on our specific problem.
To learn in this case would mean to try and approximate the answer given our input data.

I mentioned "adjusting" to find an answer.
We first start with a random line, and measure how many points it gets wrong. 
This first guess is probably pretty terrible, so we maybe tweak the slope, move it around, etc...
Now, we might get fewer errors.
How to adjust the line involves calculating some equations to figure out how wrong we are, but the main idea
is that we can give ourselves an error, and we want the error to be as small as possible.

## Supervised Learning
You may have heard of computers "learning" how to recognize objects in images: tell cats apart from
dogs or identify people in images.
A more recent famous example of computers "learning" is [DALL$\cdot$E 2](https://openai.com/dall-e-2/), which can generate
multiple high-resolution images from a single text prompt.

![AI generated images](/assets/dalle2_example.png "A computer 'learned' what this prompt might look like.")

There's many uses of machine learning, for this post we'll focus on **image classification**, or trying to classify 
the image depending what's in the image.

A machine learning **model** is a program that takes some input, say an image, and makes a decision about that input (e.g. classification), 
similar to deciding if a dot is blue or orange in the example above.
Our model first has to learn the ins and outs of the different types of data -- what makes a dog a dog and a cat a cat?
To learn these patterns, we have to show our model a lot of images and slightly tweak its "settings" every time, and through 
some math (back-propagation), the model produces better and better guesses.

For example, our model predicts that an image has a cat.
We check the model's predictions with the "correct answer" or label, and based on the correctness of our guess decide how we should
adjust our model so it does better next time.
We use an algorithm to decide how our model should tweak the settings used in making decisions (a.k.a. **parameters**) when comparing our
model's output and the correct label.

What's wrong with this approach then?
Nothing inherently. 
However, notice that we mentioned the "correct answer", which we use to measure how our model is performing and deterimine how to adjust our model's parameters.
How do we get these? 
The data we use to train our model will usually come with a bunch of inputs and their labels already prepared.
Preparing labels for a dataset is usually a manual process, involving many man hours, since a human has to go through 
all the data and give the correct answer for the computer to use.
So some group will prepare a dataset, then many other people will use it to avoid the labelling costs.
Nowadays, where bigger datasets are preferred, labelling is too expensive for many applications.

## Self-Supervised Learning
**Self-supervised learning** tries to answer the question: *What if we could do the same things as in supervised learning
without the labels?*
However, instead of having the correct labels and comparing them to our model's guess, we have to come up with some
other **task** for our model to use in training.
Instead of comparing our model's output with the "answer key", we can define some other
metric, or other measures of how wrong our guesses are.

![simclr](/assets/simclr.png "If we change the same image in different ways to create two versions of it, we could tell our model that they should still be quite similar because they contain the same object.")
There are plenty of other ways of training a model without relying on labels.
A common approach is to take an image $x$, then produce two versions of the same image $\tilde{x}\_i$
and $\tilde{x}\_j$.
For example, we could alter the first image's colors and crop the second image, or rotate one image
and blur the other image.
The idea is to have our model process and view the two images as similar as possible; at the end of 
the day the *contents* of the image are the same, just presented in different ways.
This way even if an image is distorted in different ways, our model can still learn what 
patterns make up a dog or cat, a blue dot and an orange dot.
This is one way we can reduce or even remove the need for labels.

That's the main essence of self-supervised learning.
The practical use is when the data is too large or there are not enough resources to 
neatly label the data.

More recent models, especially larger models like DALL$\cdot$E 2 above, use some form of 
self-supervision because of the sheer size of the data they use to train.
Their model uses self-supervision to process the text prompt.
During training, they will take a sentence and remove some of the words.
The model is then asked to fill in the blank with the most likely word, taking in the
context of the sentence.
Self-supervision can be applied not only in vision, but also with text in different, but often
similar ways.
In recent years, self-supervised approaches have been proving their worth and sometimes surpassing
supervised models in image classification, so the future for self-supervision is bright.



## Conclusion
In this post, I tried to introduce the idea of self-supervision as simply as I could.
The field is currently seeing large adoption by major companies, the hope being that we can use
ever larger models which require ever larger datasets without labelling costs.


