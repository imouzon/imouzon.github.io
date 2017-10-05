name: inverse
layout: true
class: center, middle, inverse
---
# STAT 430: Lecture 13
# Joint Distributions
.footnote[Course page: [imouzon.github.io/stat430](https://imouzon.github.io/stat430)]
---
layout: true
class: center, middle, inverse
---
# What is a Function of a Random Variable?
## A Function of Functions? 
## A Function of Variables?
---
layout:false
.left-column[
## Joint Distributions
### General
]
## Two or More Random Variables

Random variables are functions from a sample space to the real numbers: 
\\[
X : \Omega \rightarrow \mathbb{R}
\\]
the way we describe the likelihood that a random variable takes a certain value is through the random variables distribution, which we can describe using it's CDF:
\\[
F\_X(x) = P(X \le x)
\\]
when we have more than two random variables at work, for instance $X$ and $Y$ we can talk about they're behavior separately:
\\[
X : \Omega \rightarrow \mathbb{R}
Y : \Omega \rightarrow \mathbb{R}
\\]
or **jointly**
]
---
layout:false
.left-column[
## Joint Distributions
### General
]
## Two or More Random Variables
If we are more interested in how they behavior simultaneously (or **jointly**), we are talking about a pair of outcomes - this means we are now talking about a **point** in $\mathbb{R} \times \mathbb{R}$.
\\[
(X,Y) : \Omega \times \Omega \rightarrow \mathbb{R} \times \mathbb{R}
\\]
And we can describe the simultaneous behavior of the two random variables using a **joint** distribution, which can be defined by (for instance) the **joint cumulative distribution function**:
\\[
F\_{XY}(x,y) = P(X \le x, Y \le y)
\\]
]
---
layout:false
.left-column[
## Joint Distributions
### General
]
## Two or More Random Variables
If we are more interested in how they behavior simultaneously (or **jointly**), we are talking about a pair of outcomes - this means we are now talking about a **point** in $\mathbb{R} \times \mathbb{R}$.
\\[
(X,Y) : \Omega \times \Omega \rightarrow \mathbb{R} \times \mathbb{R}
\\]
And we can describe the simultaneous behavior of the two random variables using a **joint** distribution, which can be defined by (for instance) the **joint cumulative distribution function**:
\\[
F\_{XY}(x,y) = P(X \le x, Y \le y)
\\]
]
---
layout:false
.left-column[
## Joint Distributions
### General
]
## Illustration: Joint CDF and Rectangles
---
layout:false
.left-column[
## Joint Distributions
### General
]
## Illustration: Joint CDF and Rectangles
---
layout: true
class: center, middle, inverse
---
# Joint Distributions and Discrete Random Variables
## Ideas and Notation
---
layout:false
.left-column[
## Basics
## Discrete Case
]
### Joint Discrete Random Variables
For two discrete random variables we have a **joint probability mass function**:
\\[
p(x, y) = P(X = x, Y = y)
\\]
You may recall from previous chapters that this can be written as:
\\[
p(x, y) = P(X = x, Y = y) = P(X = x | Y = y) P(Y = y)
\\]
or
\\[
p(x, y) = P(X = x, Y = y) = P(Y = y | X = x) P(X = x)
\\]
This is the whole secret to moving up from single random variables
---
layout:false
.left-column[
## Basics
## Discrete Case
]
### Joint Discrete Random Variables
For two discrete random variables we have a **joint probability mass function**:
\\[
p(x, y) = P(X = x, Y = y)
\\]
You may recall from previous chapters that this can be written as:
\\[
p(x, y) = P(X = x, Y = y) = P(X = x | Y = y) P(Y = y)
\\]
or
\\[
p(x, y) = P(X = x, Y = y) = P(Y = y | X = x) P(X = x)
\\]
This is the whole secret to moving up from single random variables
---
layout:false
.left-column[
## Basics
### Random Variables
]
### Example: Flip a coin
Suppose I flip a coin three times and let $X$ be the number of heads and $Y$ be the number of tails
---
layout:false
.left-column[
## Basics
## Discrete Case
]
### Example: **Multi**nomial Distributions
A Special discrete distribution

*Scenario*: In a binomial experiment, there are $n$ independent iterations of an experiment and the probability of success is $p$. That is, we have two possible outcomes. 
But what if we have three possible outcomes? 

Suppose that we have exactly three outcomes: Outcome A, Outcome B and Outcome C with probability of success $p\_A$, $p\_B$, and $p\_C$ 
---
layout:false
.left-column[
## Basics
## Discrete Case
## Continuous Case
]
### Illustration: 
With continous random variables, we now have two dimensions at play:
---
layout:false
.left-column[
## Basics
## Discrete Case
## Continuous Case
]
### Joint Density Functions

The joint cdf and pdf are connected in a similar way as the single variable case:
\\[
F\_{X}(x) = P(X \le x) = \int\_{-\infty}^{x} f\_X(x) dx
\\]
and
\\[
F\_{Y}(y) = P(Y \le y) = \int\_{-\infty}^{y} f\_Y(y) dy
\\]
But jointly:
\\[
F\_{XY}(x,y) = P(X \le x, Y \le y) = \int \int\_{A} f\_{XY}(x,y) dx dy
\\]
---
layout:false
.left-column[
## Basics
## Discrete Case
## Continuous Case
]
### Joint Density Functions

The joint cdf and pdf are connected in a similar way as the single variable case:
\\[
F\_{X}(x) = P(X \le x) = \int\_{-\infty}^{x} f\_X(x) dx
\\]
and
\\[
F\_{Y}(y) = P(Y \le y) = \int\_{-\infty}^{y} f\_Y(y) dy
\\]
But jointly:
\\[
F\_{XY}(x,y) = P(X \le x, Y \le y) = \int \int\_{A} f\_{XY}(x,y) dx dy
\\]
---
layout:false
.left-column[
## Basics
## Discrete Case
## Continuous Case
]
### Example: Joint Exponential
Suppose you have two pieces of equipment with two different failure times...
