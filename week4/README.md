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

There are a lot of thorough tutorials covering circular motion, such as Daniel Shiffman's [here](https://www.youtube.com/watch?v=qMq-zd6hguc&list=PLRqwX-V7Uu6bR4BcLjHHTopXItSjRA7yG&index=1) and [here](https://www.youtube.com/watch?v=znOBmOrtz_M&list=PLRqwX-V7Uu6bR4BcLjHHTopXItSjRA7yG&index=2). You are more than welcome to follow along with these, but he covers a lot of math that I believe you don't necessarily need to know to use `sin` and `cos`!

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

So, what if you want to create circular motion? It turns out there is a very easy way to convert linear motion to circular motion usine `sin` and `cos`!

Some examples of using `sin`:

`sin( 0 )` equals `0`

`sin( PI * 0.5 )` equals `1`

`sin( PI * 1 )` equals `0`

`sin( PI * 1.5 )` equals `-1`

`sin( PI * 2 )` equals `0`

What is happening here? The numbers we put into `sin()`, which are `0`, `PI * 0.5`, `PI * 1`, `PI * 1.5`, etc, are increasing **linearly**. (Remember, PI is just a number: about 3.14. It is specifically related to the measument of a circle, which is why we are using it here.)

So, the input is increasing linearly. The output of `sin()` is **not increasing linearly**. It is acting **cyclically**! 

Check out the chart below. From left to right, you see the numbers that you enter into the `sin()` function, and up and down you can see the resulting value, which is **always between -1 and 1**.

![Image](https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Sine_cosine_one_period.svg/2000px-Sine_cosine_one_period.svg.png)

This chart also shows `cos`, or cosine, which acts the same way but is slightly displaced. 

#### So, to create circular animations...

Revisiting our original example of linear animation:

```
float counter = 0;

void draw() {
  counter = counter + 1;
  ellipse( counter, 0, 10, 10 );
}
```

Instead of using counter directly, **we should use counter as input into sin()** which will look like this:

```
float counter = 0;

void draw() {
  counter = counter + 1;
  
  float x = sin(counter);
  ellipse( x, 0, 10, 10 );
}
```

Cool!!!! We are getting somewhere! Even though you won't see it! : )

What is happening in the above code? Even though **counter** will count upwards linearly forever, `sin(counter)` will move cyclically between -1 and 1, as in the graph above.

Of course, moving between -1 and 1 pixels is not easy to see in Processing. So, let's multiply our circular motion by a little bit.

```
float counter = 0;

void draw() {
  counter = counter + 1;
  
  float x = sin(counter) * 50;
  ellipse( x, 0, 10, 10 );
}
```

Now you should see the shape moving cyclically left and right.

However, we are only controlling the x-axis of motion so far. To really create circular motion, we need to set the y axis using `cos`.

```
float counter = 0;

void draw() {
  counter = counter + 1;
  
  float x = sin(counter) * 50;
  float y = cos(counter) * 50;
  ellipse( x, y, 10, 10 );
}
```

We have motion!! 

Let's keep sprucing up this sketch. Right now you probably only see part of the motion, because the shape should be moving off-screen. Remember, `sin` and `cos` alternate between -1 and 1. We are multiplying the output by 50, so our shape is moving between -50 and 50 on the x axis, and -50 and 50 on the y axis.

Remember, it's all just numbers! If we want to move our whole animation to fit more nicely in our Processing window, maybe we want to **add 50** to each of our coordinates so that the animation happens between **0 and 100** instead of -50 and 50.

```
float counter = 0;

void draw() {
  counter = counter + 1;
  
  float x = sin(counter) * 50 + 50;
  float y = cos(counter) * 50 + 50;
  ellipse( x, y, 10, 10 );
}
```

**We have a circular animation!** If you become familiar with how this works, it becomes just as flexible and extraordinary as the rest of Processing. 

#### Remember...

`sin()` and `cos()` always output numbers between -1 and 1. Those become numbers that you can do whatever you want with, just like any other number in Processing!


