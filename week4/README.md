# Week 4 (ish)

## Project 1

This is a successful project -- I like how you have a consistent Processing background between pages, and how you make some of your HTML transparent to let the artwork show through. If you make your menu a bit smaller, I think that would also help show off the artwork.

**Tips**

- Read [this guide to website color theory](http://webdesign.tutsplus.com/tutorials/6-beginner-safety-first-color-guidelines-for-the-web--cms-21462).
- The menu can probably be quite a bit smaller and still serve the same purpose.
- Use a consistent font. [Google fonts](https://www.google.com/fonts) also has many nice ones. For example, Open Sans is a classic standard for web design.

Some interesting questions:

- Do you want the Processing art to interact with the HTML in any way? (I'm thinking about [this](http://funktion.fm/#contact) site.)

## What's next

Feel free to use this site as a template for trying out different Processing backgrounds. Especially if you make your CSS grayscale, you could use this exact same HTML/CSS and only change the Processing code to try different ideas.

If you'd like more guided work, another option is breeze through a few chapters in your textbook. A lot of it will be review (which could be good anyway!) but you could skip over any parts that are boring. There are many concepts, like use of variables, loops, conditions, which you cannot review enough times. And, the second half of the book, about Classes, will be great practice.

## Circular Motion

There are a lot of thorough tutorials covering circular motion, such as Daniel Shiffman's [here](https://www.youtube.com/watch?v=qMq-zd6hguc&list=PLRqwX-V7Uu6bR4BcLjHHTopXItSjRA7yG&index=1) and [here](https://www.youtube.com/watch?v=znOBmOrtz_M&list=PLRqwX-V7Uu6bR4BcLjHHTopXItSjRA7yG&index=2). You are more than welcome to follow along with these, but he covers a lot of math that I believe you don't necessarily need to know to use `sine` and `cos`!

#### A Practical Guide to `sin` and `cos`

When we need to animate an object in processing, let's say from the left side of the screen to the right side, we usually do something like this:

```
float counter = 0;

void draw() {
  counter = counter + 1;
  rect( counter, 0, 10, 10 );
}
```

What does this do? It creates a variable `counter`, and uses that variable as the x coordinate of a shape. During each draw cycle, counter is increased by 1. This means that each time `draw` happens (60 times per second), the shape will be drawn slightly farther to the right. 

This motion is **linear**. The shape moves with a constant speed, because the counter is increasing by 1 each time.




![Image](sinecosine.png)
