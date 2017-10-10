name: inverse
layout: true
class: center, middle, inverse
---
### STAT 430: Lecture 14
# Joint Distributions
## Continuous Case and Conditional Probability

.footnote[Course page: [imouzon.github.io/stat430](https://imouzon.github.io/stat430)]
---
layout: true
class: center, middle, inverse
---
# Quick Recap
## Multiple Discrete RVs
## Multiple Continuous RVs
---
layout:false
.left-column[
## Recap
### Joint Discrete
]
.right-column[
### Joint Probability (Discrete Case)
Suppose that $X\_1, X\_2, \ldots, X\_n$ are discrete random variables. 

If all of the $X\_i$s are discrete, then the probability of them taking certain values ($x\_1, x\_2, \ldots, x\_n$) can be described using the **joint probability mass function**:
\\[
P(X\_1 = x\_1, X\_2 = x\_2, \ldots, X\_n = x\_n) = p(x\_1, x\_2, \ldots, x\_n)
\\]

Since this describes a probability, the values of the pmf are always positive and the total over all possible values of $X\_1, X\_2, \ldots, X\_n$ is 1, i.e.,
\\[
\sum\_{\text{all }x\_1} \sum\_{\text{all }x\_2} \sum\_{\text{all }x\_3} \ldots \sum\_{\text{all }x\_n} P(X\_1 = x\_1, X\_2 = x\_2, \ldots, X\_n = x\_n) = 1
\\]
]
---
layout:false
.left-column[
## Recap
### Joint Discrete
]
.right-column[
### Joint Probability (Discrete Case)

Suppose we instead just have two random variables and name them $X$ and $Y$

**Common Notation**

Previously used $p(x)$ as the mass function for a single random variable - now we adjust that so that we write $p\_{X}(x)$ for the pmf of the RV $X$ and $p\_{Y}(y)$ as the pmf for the RV $Y$. When we discuss the simultaneous behavior of $X$ and $Y$ we use the notation $p_{XY}(x, y)$ to keep the notation consistent.

**Quick Examples**

If $X$ and $Y$ are random variables, then 

-  $P(X = 3) = p\_{X}(3)$ is the probability that $X$ takes the value 3
-  $P(Y = 2) = p\_{Y}(2)$ is the probability that $Y$ takes the value 2
-  $P(X = 3, Y=2) = p\_{XY}(3,2)$ is the probability that $X$ takes the value 3 and $Y$ takes the value 2 at the _simultaneously_
]
---
layout:false
.left-column[
## Recap
### Joint Discrete
]
.right-column[
### Joint Probability (Discrete Case)

Still keeping the idea that we instead have two random variables and name them $X$ and $Y$

### Terminology
If we know the simultaneous pmf as the _joint pmf_ then we might need a special way to refer to the pmf of just one of the random variables. We use the term _marginal pmf_ to refer to the pmf of the single random variables.

### Quick Example
If $X$ and $Y$ are random variables, then 

-  $p\_{X}(x)$ is the marginal pmf for $X$
-  $p\_{Y}(y)$ is the marginal pmf for $Y$
-  $p\_{XY}(x,y)$ is the joint pmf for $X$ and $Y$
]
---
layout:false
.left-column[
## Recap
### Joint Discrete
]
.right-column[
### Joint Probability (Discrete Case)
Still keeping the idea that we instead have two random variables and name them $X$ and $Y$.

**Joint to Marginal**

If we know the joint pmf for $X$ and $Y$ then we can get the marginal for $X$ as:
\\[
\begin{align}
p\_{X}(x) &= P(X = x) \\\\
          &= P(X = x, Y = \text{anything}) \\\\
          &= \ldots + p\_{XY}(x, -1) + p\_{XY}(x, 0) + p\_{XY}(x, 1) + \ldots \\\\
          &= \sum\_{\text{all }y} p\_{XY}(x, y) 
\end{align}
\\]

**Quick Example** 

If $X$ and $Y$ are random variables, and $Y$ is Bernoulli then:
\\[
p\_{X}(x) = p\_{XY}(x, 0) + p\_{XY}(x,1)
\\]
]
---
layout:false
.left-column[
## Recap
### Joint Discrete
### Joint Continuous
]
.right-column[
### Joint Probability (Continuous Case)
Suppose that $X\_1, X\_2, \ldots, X\_n$ are continuous random variables. 

If all of the $X\_i$s are continuous, then the probability of them taking certain values inside of the ranges $a\_1 \le X\_1 \le b\_1, a\_2 \le X\_2 \le b\_2, \ldots, a\_n \le X\_n \le b\_n$ can be described using the **joint probability density function**:
\\[
\begin{align}
P(a\_1 &\le X\_1 \le b\_1,  a\_2 \le X\_2 \le b\_2, \ldots, a\_n \le X\_n \le b\_n)  \\\\
&= \int\_{a\_1}^{b\_1} \int\_{a\_2}^{b\_2} \ldots \int\_{a\_n}^{b\_n} f(x_1, x_2, \ldots, x_n) dx\_1 dx\_2 \ldots dx\_n
\end{align}
\\]

Since this describes a probability, the values of the joint pdf are always positive and the integral over all possible values of $X\_1, X\_2, \ldots, X\_n$ is 1, i.e.,
\\[
\int\_{-\infty}^{\infty} \int\_{-\infty}^{\infty} \ldots \int\_{-\infty}^{\infty} f(x\_1, x\_2, \ldots, x\_n) dx\_1 dx\_2 \ldots dx\_n = 1
\\]
]
---
layout:false
.left-column[
## Recap
### Joint Discrete
### Joint Continuous
]
.right-column[
### Joint Probability (Continuous Case)

Suppose we instead just have two continuous random variables and name them $X$ and $Y$

**Common Notation**
Previously used $f(x)$ as the mass function for a single random variable - now we adjust that so that we write $f\_{X}(x)$ for the pdf of the RV $X$ and $f\_{Y}(y)$ as the pdf for the RV $Y$. When we discuss the simultaneous behavior of $X$ and $Y$ we use the notation $f_{XY}(x, y)$ to keep the notation consistent.
]
---
layout:false
.left-column[
## Recap
### Joint Discrete
### Joint Continuous
]
.right-column[
### Joint Probability (Continuous Case)

Suppose we instead just have two continuous random variables and name them $X$ and $Y$

### Quick Example
If $X$ and $Y$ are random variables, then 

-  $P(X \le 3) = \int\_{-\infty}^3 f\_{X}(x) dx$ is the probability that $X$ takes a value less than 3
-  $P(0 \le Y \le 3) = \int\_{0}^2 f\_{Y}(y) dy$ is the probability that $Y$ takes a value between 0 and 2
-  $P(X \le 3, 0 \le Y \le 2) = \int\_{0}^{2} \int\_{-\infty}^3 f\_{XY}(x,y) dx dx$ is the probability that $X$ takes a value less than 3 and $Y$ takes a value between 0 and 2 _simultaneously_
]
---
layout:false
.left-column[
## Recap
### Joint Discrete
### Joint Continuous
]
.right-column[
### Joint Probability (Continuous Case)

Still keeping the idea that we instead have two continuous random variables and name them $X$ and $Y$

### Terminology
If we know the simultaneous pdf as the _joint pdf_ then we might need a special way to refer to the pdf of just one of the random variables. We use the term _marginal pdf_ to refer to the pdf of the single random variables.

### Quick Example
If $X$ and $Y$ are random variables, then 

-  $f\_{X}(x)$ is the marginal pdf for $X$
-  $f\_{Y}(y)$ is the marginal pdf for $Y$
-  $f\_{XY}(x,y)$ is the joint pdf for $X$ and $Y$
]
---
layout:false
.left-column[
## Recap
### Joint Discrete
### Joint Continuous
]
.right-column[
### Joint Probability (Continuous Case)

Still keeping the idea that we instead have two continuous random variables and name them $X$ and $Y$.

### Joint to Marginal
If we know the joint pdf for $X$ and $Y$ then we can get the marginal pdf for $X$ as:
\\[
f\_{X}(x) = \int\_{-\infty}^{\infty} f\_{XY}(x, y) dy 
\\]

### Quick Example
If $X$ and $Y$ are random variables, and $Y$ only takes values between 0 and 1 then:
\\[
f\_{X}(x) = \int\_{-\infty}^{\infty} f\_{XY}(x, y) dy = \int\_{0}^{1} f\_{XY}(x, y) dy
\\]
]
---
layout: true
class: center, middle, inverse
---
# More Detailed Examples
---
layout:false
.left-column[
## Recap
### Joint Discrete
### Joint Continuous
### Detailed Examples
]
.right-column[
### Joint Probability (Discrete Case)
Suppose that $X$ and $Y$ are both discrete random variables with joint pmf:
\\[
p\_{XY}(x,y) = \frac{5! 2!}{x! y! (5-x)! (2-y)!}
\\]
for $x = 0, 1, 2, 3, 4, 5$ and $y = 0, 1, 2$ and it is 0 everywhere else.
]
---
layout:false
.left-column[
## Recap
### Joint Discrete
### Joint Continuous
### Detailed Examples
]
.right-column[
### Joint Probability (Continuous Case)
Suppose that $X$ and $Y$ are both continuous random variables with joint pdf:
\\[
f\_{XY}(x,y) = \lambda^2 e^{-\lambda (x + y)}
\\]
for $x \ge 0$ and $y \ge 0$ and 0 everywhere else
]
---
layout:false
.left-column[
## Recap
## Independent RVs
### Checking
]
.right-column[
### Joint Probability (Continuous Case)
Two random variables are said to be independent if any of the following are true:

1.  $F\_{XY}(x,y) = F\_{X}(x) \cdot F\_{Y}(y)$

2.  $X$ and $Y$ are discrete 
    \\[p\_{XY}(x,y) = p\_{X}(x) \cdot p\_{Y}(y) \\]
2.  $X$ and $Y$ are discrete and there are two functions $h(x)$ and $g(y)$ so that
    \\[p\_{XY}(x,y) = g(x) \cdot h(y) \\]
2.  $X$ and $Y$ are continuous and
    \\[f\_{XY}(x,y) = f\_{X}(x) \cdot f\_{Y}(y)\\]
2.  $X$ and $Y$ are continuous and there are two functions $h(x)$ and $g(y)$ so that
    \\[f\_{XY}(x,y) = g(x) \cdot h(y)\\] 
]
---
layout: true
class: center, middle, inverse
---
# Examples: Checking Independence
---
layout:false
.left-column[
## Recap
## Independent RVs
### Checking
### Examples
]
.right-column[
### Joint Probability (Discrete Case)
Suppose that $X$ and $Y$ are both discrete random variables with joint pmf:
\\[
p\_{XY}(x,y) = \frac{5! 2!}{x! y! (5-x)! (2-y)!}
\\]
for $x = 0, 1, 2, 3, 4, 5$ and $y = 0, 1, 2$ and it is 0 everywhere else.
]
---
layout:false
.left-column[
## Recap
## Independent RVs
### Checking
### Examples
]
.right-column[
### Joint Probability (Continuous Case)
Suppose that $X$ and $Y$ are both continuous random variables with joint pdf:
\\[
f\_{XY}(x,y) = \lambda^2 e^{-\lambda (x + y)}
\\]
for $x \ge 0$ and $y \ge 0$ and 0 everywhere else
]
---
layout: true
class: center, middle, inverse
---
# Conditional Distributions
## When Random Variables are Not Independent
---
layout:false
.left-column[
## Recap
## Independent RVs
## Conditional Distributions
### Discrete
]
.right-column[
### Conditional Distributions (Discrete Case)
Suppose that $X$ and $Y$ are both discrete random variables with joint pmf $p\_{XY}(x, y)$ and marginal distributions given by $p\_{X}(x)$ and $p\_{Y}(y)$. 
Then the conditional distribution of $X$ given that $Y = y$ is:
\\[
p\_{X|Y}(x|y) = \dfrac{p\_{XY}(x,y)}{p\_{Y}(y)}
\\]
and the conditional distribution of $Y$ given that $X = x$ is:
\\[
p\_{Y|X}(y|x) = \dfrac{p\_{XY}(x,y)}{p\_{X}(x)}
\\]
Note that this means that 
\\[
p\_{XY}(x,y) = p\_{X|Y}(x|y) p\_Y(y) = p\_{Y|X}(y,x) p\_{X}(x)
\\]
]
---
layout:false
.left-column[
## Recap
## Independent RVs
## Conditional Distributions
### Discrete
### Continuous
]
.right-column[
### Conditional Distributions (Continuous Case)
Suppose that $X$ and $Y$ are both continuous random variables with joint pdf $f\_{XY}(x, y)$ and marginal distributions given by $f\_{X}(x)$ and $f\_{Y}(y)$. 
Then the conditional distribution of $X$ given that $Y = y$ is:
\\[
f\_{X|Y}(x|y) = \dfrac{f\_{XY}(x,y)}{f\_{Y}(y)}
\\]
and the conditional distribution of $Y$ given that $X = x$ is:
\\[
f\_{Y|X}(y|x) = \dfrac{f\_{XY}(x,y)}{f\_{X}(x)}
\\]
Note that this means that 
\\[
f\_{XY}(x,y) = f\_{X|Y}(x|y) f\_Y(y) = f\_{Y|X}(y,x) f\_{X}(x)
\\]
]
---
layout:false
.left-column[
## Recap
## Independent RVs
## Conditional Distributions
### Discrete
### Continuous
### Example
]
.right-column[
### Bayesian Inference
Suppose that we want to test if a coin is fair. We flip it $n$ times and count the number of heads that appear. In this case, if we know the probability of heads is $\theta$ then we can write that
\\[
P(X = x) = \dbinom{n}{x} \theta^{x} \left( 1 - \theta \right)^{n - x} 
\\]
Obviously, if we flip the coin 100 times and never get heads, we have evidence that suggests that $\theta$ is _not_ 0.5. But how do we describe what $\theta$ is?
]
