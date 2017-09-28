name: inverse
layout: true
class: center, middle, inverse
---
# STAT 430: Lecture 12
# Functions of a Random Variable
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
## Basics
### Random Variables
]
## Random Variables Are Already Functions

When we talk about random variables, we are talking about a function that takes observations from the samples space, $\Omega$, to the reals, $\mathbb{R}$. 

\\[
X : \Omega \rightarrow \mathbb{R}
\\]

_illustration_:
---
layout:false
.left-column[
## Basics
### Random Variables
]
### Functions of Random Variables
So when we define a function that takes values of the random variable to some other real value, the ultimate result is a composite function that takes values from $\Omega$ to the reals:
\\[
X : \Omega \rightarrow \mathbb{R}
\\]
\\[
g: \mathbb{R} \rightarrow \mathbb{R}
\\]
which means
\\[
g \circ X: \Omega \rightarrow \mathbb{R}
\\]

_illustration_:
---
layout:false
.left-column[
## Basics
### Random Variables
]
### Functions of Random Variables
This means that $g \circ X$ (aka, $g(X)$) is also a random variable

So "functions of random variables are random variables" - essentially, by taking a function of a random variable we can define _new_ random variables.

For instance if we say $X$ is a random variable, $g(X)$ is some nice function, and $Y = (g \cdot X)(\omega)$ then we can write $Y: \Omega \rightarrow \mathbb{R}$.

_illustration_:

---
layout:false
.left-column[
## Basics
### Random Variables
### New Distributions
]
### New Random Variables With New Distributions
**Example 1**

If $U \sim U(0,1)$ and 
\\[
h(U) = \mathbb{I}\_{\\{u \in \mathbb{R} : u > 0.2\\}}(U)
\\]
where
\\[
\mathbb{I}\_A(x) = \begin{cases}
1 & x \in A \\\\
0 & x \notin A
\end{cases}
\\]
is an indicator function

then $h(U)$ will be a Bernoulli random variable with $p=0.8$. 
---
layout:false
.left-column[
## Basics
### Random Variables
### New Distributions
]
## Finding the Distribution of the \(g(X)\)
So if $X$ is random variable then $Y = g(X)$ is a random variable. But that means we might want to think about the distribution of $Y$. How can we figure that out?

Let's start by thinking about the **cumulative distribution function** of $X$, $F\_X(x) = P(X \le x)$ and with a random variable $Y$ created by the simple function $g(X) = a + b \cdot X.$ 
---
layout:false
.left-column[
## Basics
### Random Variables
### New Distributions
]
### Finding the Distribution of the \(g(X)\)
Since $Y = g(X)$ is a random variable, it will also have a cdf which we might call $F_Y(y) = P(Y \le y)$. Then we can write:

\\[
\begin{align}
F\_Y(y) &= P(Y \le y) \\\\
        &= P(a X + b \le y) \\\\
        &= P\left(X \le \dfrac{y - b}{a} \right) \\\\
        &= F\_X\left(\dfrac{y - b}{a} \right) \\\\
\end{align}
\\]
and since $\frac{d}{dx} F\_X(x) = f_X(x)$ we can write 
\\[
\begin{align}
f_Y(y) &= \frac{d}{dy} F\_Y(y) \\\\
       &= \frac{d}{dy} F\_X\left(\dfrac{y - b}{a} \right) \\\\
       &= f\_X\left(\dfrac{y - b}{a} \right) \frac{1}{a}\\\\
\end{align}
\\]
---
layout:false
.left-column[
## Basics
### Random Variables
### New Distributions
]
### Finding the Distribution of the \(g(X)\)
This process doesn't require much: in fact, the key step was taking the inverse of $Y = g(X)$. We can write this process generally as:

**Proposition B**

Let X be a continuous random variable and let with density $f_X(x)$ and let $Y = g(X)$ where $g$ is differentiable and strictly monotonic wherever $f(x) > 0$. Then $Y$ has the density 
\\[
f_Y(y) = f_X\left(g^{-1}(y)\right) \left| \frac{d}{dy} g^{-1}(y) \right| 
\\]
---
layout:false
.left-column[
## Basics
### Random Variables
### New Distributions
]
.right-column[
### New Random Variables With New Distributions
### Example 2 
If $Z \sim N(0,1)$ (i.e., $Z$ is a standard normal random variable) then for any $a$ and any $b > 0$ we can say that $g(Z) = a + b X$ will be $N(a, b^2)$.

]
---
layout:false
.left-column[
## Basics
### Random Variables
### New Distributions
]
.right-column[
### New Random Variables With New Distributions
### Example 3
Suppose that $X$ is any random variable. What is the distribution of $Y = F\_x(x)$?

]
---
layout:false
.left-column[
## Basics
### Random Variables
### New Distributions
]
.right-column[
### New Random Variables With New Distributions
### Example 4 
If $X \sim \exp(\lambda)$ and $c$ is any positive constant, then what is the distribution of $Y = c \cdot X$?

]
---
layout:false
.left-column[
## Basics
### Random Variables
### New Distributions
]
.right-column[
### New Random Variables With New Distributions
### Example 5
If $Z \sim N(0,1)$ (i.e., $Z$ is a standard normal random variable) then what is the distribution of $Y = Z^2$?

]
---
layout:false
.left-column[
## Basics
### Random Variables
### New Distributions
]
.right-column[
### New Random Variables With New Distributions
### Example 6 
If $X \sim \exp(\lambda)$ and $c$ is any positive constant, then what is the distribution of $Y = c \cdot X$?

]
