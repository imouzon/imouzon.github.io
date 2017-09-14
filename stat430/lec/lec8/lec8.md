name: inverse
layout: true
class: center, middle, inverse
---
# STAT 430: Lecture 8
# More Discrete Random Variables
## Continuing Chapter 2
.footnote[Course page: [imouzon.github.io/stat430](https://imouzon.github.io/stat430)]
---
layout:false
.left-column[
## Discrete Random Variables
### Binomial Random Variables
]
.right-column[
### A Sequence of Bernoulli Experiments
Suppose that we don't just have a single Bernoulli expirement, but instead have a sequence of $n$ _independent_ Bernoulli experiments and are interested in the _total_ number of successful outcomes.

**Example**
We roll a fair six-sided die 5 times and record a success if we observer a 6.

-  What is the sample space for $\Omega$?

-  If we define $X_1, X_2, \ldots, X_5$ as a Bernoulli random variables for each single experiment, what is the "sample space" related to the vector $(X_1, X_2, \ldots, X_5)$?

-  If we define $Y$ as the total number of successful outcomes, what is the "sample space" for $Y$?

-  How can we write the probability function for $Y$?

]
---
layout:false
.left-column[
## Discrete Random Variables
### Binomial Random Variables
]
.right-column[
### Binomial Random Variables

_def:_ **Binomial Random Variable**
>  Suppose that $n$ experiments, or trials, are performed and that 
>  1. The trials have two possible outcomes ("success" and "failure")
>  2. Each trial has the same probability of success, $p$, and
>  3. The trials are independent of each other
>  Then the random variable defined as the sum of the number of successful experiments is a Binomial Random Variable and we say that it follows a Binomial Distribution

]
---
layout:false
.left-column[
## Discrete Random Variables
### Binomial Random Variables
]
.right-column[
### Binomial Random Variables

_Motivation_:

If I try this experiment $n$ times, how do I figure out how many outcomes will be what I want?

_Statement_:

Let $X$ be the number of successful outcomes observed by repeating $n$ independent Bernoulli experiments, each with probability of success $p$.

_Notation_:
\\[
X \sim \text{Binom}(n, p)
\\]

_pmf_: 

The probability of seeing $k$ successful outcomes is given using
\\[
p(k) = \binom{n}{k} p^k (1 - p)^{n-k}, k = 0, 1, 2, \ldots, n
\\]
]
---
layout:false
.left-column[
## Discrete Random Variables
### Binomial Random Variables
]
.right-column[
### Binomial Random Variables

_Cumulative Probability_:

\\[
P(X \le k) = p(0) + p(1) + \ldots + p(k), k = 0, 1, 2, \ldots, n
\\]

_Expectation_:
\\[
\mu = n \cdot p
\\]

_Variance_:
\\[
\sigma^2 = n \cdot p \cdot (1 - p)
\\]

]
---
name: inverse
layout: true
class: center, middle, inverse
---
# Discrete Random Variables
## Geometric Random Variables
---
layout:false
.left-column[
## Discrete Random Variables
### Binomial Random Variables
### Geometric Random Variables
]
.right-column[
### Geometric Random Variables

_Motivation_:

How many times do I have to repeat this experiment until the outcome is what I want it to be?

_Statement_:

Let $X$ be the trial upon which the first successful outcome is observed in a sequence of independent Bernoulli experiments, each with probability of success $p$.

_Notation_:
\\[
X \sim \text{Geometric}(p)
\\]

_pmf_: 

The probability of seeing the first successful outcome on trial $k$
\\[
p(k) = p (1 - p)^{k-1}, k = 1, 2, \ldots
\\]
]
---
layout:false
.left-column[
## Discrete Random Variables
### Binomial Random Variables
### Geometric Random Variables
]
.right-column[
### Geometric Random Variables

_Cumulative Probability_:

\\[
P(X \le k) = p(1) + p(2) + \ldots + p(k), k = 1, 2, \ldots
\\]

_Expectation_:
\\[
\mu = \dfrac{1}{p}
\\]

_Variance_:
\\[
\sigma^2 = \dfrac{1 - p}{p^2}
\\]

]
---
# Discrete Random Variables
## Geometric Random Variables
---
layout:false
.left-column[
## Discrete Random Variables
### Binomial Random Variables
### Geometric Random Variables
### Poisson Random Variables
]
.right-column[
### Geometric Random Variables

_Motivation_:

What if I have an almost infinite number of independent Bernoulli trials and a very small probability of success?

_Notation_:
\\[
X \sim \text{Poisson}(p)
\\]

_pmf_: 

The probability of seeing $k$ successes is:
\\[
p(k) = \dfrac{\lambda^k}{k!} e^{-\lambda}
\\]
]
---
layout:false
.left-column[
## Discrete Random Variables
### Binomial Random Variables
### Geometric Random Variables
### Poisson Random Variables
]
.right-column[
### Geometric Random Variables

_Cumulative Probability_:

\\[
P(X \le k) = p(0) + p(1) + p(2) + \ldots + p(k), k = 0, 1, 2, \ldots
\\]

_Expectation_:
\\[
\mu = \lambda
\\]

_Variance_:
\\[
\sigma^2 = \lambda
\\]

]
