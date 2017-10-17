name: inverse
layout: true
class: center, middle, inverse
---
### STAT 430: Lecture 15
## Multiple Random Variables
### Bayesian Inference
### Functions of Jointly Distributed Random Variables

.footnote[Course page: [imouzon.github.io/stat430](https://imouzon.github.io/stat430)]
---
layout: true
class: center, middle, inverse
---
# Quick Recap
## Joint Distributions
## Multiple Continuous RVs
---
layout:false
.left-column[
## Recap
### Joint Notation
]
.right-column[
### Joint Probability
Suppose that $X, Y, Z$ are random variables. 

### Discrete Case
**joint probability mass function**:
\\[
p\_{XY}(x, y) = P(X = x, Y=y)
\\]
**marginal probability mass function** for $X$:
\\[
p\_{X}(x) = P(X = x)
\\]
**Conditional probability mass function** for $X\_i$ given $X\_j = x\_j$:
\\[
p\_{X|Y}(x|y) = P(X = x | Y = y) = \dfrac{P(X = x, Y = y)}{P(Y = y)} = \dfrac{p\_{XY}(x, y)}{p\_{Y}(y)}
\\]
]
---
layout:false
.left-column[
## Recap
### Joint Notation
]
.right-column[
### Joint Probability
Suppose that $X, Y, Z$ are random variables. 

### Continuous Case
**joint probability density function**:
\\[
f\_{XY}(x, y) \rightarrow  P(X \in A, Y \in B) = \int\_{B} \int\_{A} f\_{XY}(x, y) dx dy
\\]
**marginal probability density function** for $X$:
\\[
f\_{X}(x) \rightarrow P(a \le X \le b) = \int\_{a}^{b} f\_X(x) dx
\\]
**Conditional probability density function** for $X$ given $Y = y$:
\\[
f\_{X|Y}(x|y) = \dfrac{f\_{XY}(x, y)}{f\_{Y}(y)}
\\]
]
---
layout:false
.left-column[
## Recap
### Bayesian Inference
]
.right-column[
### Bayesian Analysis Main Idea
Use a distribution to describe prior beliefs about the parameters (for example, $\theta$)

In this way, we are observing results _given_ $\theta$ and can unwind the joint distribution of the observed results and $\theta$ to give us a distribution of $\theta$ _given_ our observed results

### Bayesian Inference Example
Suppose that we want to check if a coin is fair. We flip it $n$ times and count the number of heads that appear. In this case, if we know the probability of heads is $\theta$ then we can write that
\\[
p\_X(x) = \dbinom{n}{x} \theta^{x} \left( 1 - \theta \right)^{n - x}, x = 0, 1, \ldots, n
\\]
Obviously, if we flip the coin 100 times and never get heads, we have evidence that suggests that $\theta$ is _not_ 0.5. But how do we describe what $\theta$ is?

]
---
layout:false
.left-column[
### Bayesian Inference
]
.right-column[
### Bayesian Inference

Since $\theta$ is the probability of success, it must be between 0 and 1. We can use the Beta distribution to describe a probability that matches our _a priori_ belief about the coins fairness. The good news is that this distribution is very flexible:

]
---
layout:false
.left-column[
### Bayesian Inference
### $Z = g(X,Y)$
]
.right-column[
### Functions of Multiple Random Variables

**Special Cases** 

Suppose that $X$ and $Y$ are both random variables with joint distribution given by $f\_{XY}(x,y)$. Then if

1. $Z = X + Y$ then \\[f\_Z(z) = \int\_{-\infty}^{\infty} f\_X(x) f\_Y(z - x) dx\\]
1. $Z = X/Y$ then \\[f\_Z(z) = \int\_{-\infty}^{\infty} f\_{XY}(x, xz) dx \\]

]
---
layout:false
.left-column[
### Bayesian Inference
### $Z = g(X,Y)$
]
.right-column[
### Functions of Multiple Random Variables

Example:
Suppose that $X$ and $Y$ are independent exponential random variables with the same rate parameter $\lambda$. Find the distribution of $T = X + Y$, $W = X - Y$, and $Z = \min(X,Y)$.
]
