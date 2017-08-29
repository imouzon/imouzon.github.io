name: inverse
layout: true
class: center, middle, inverse
---
# STAT 430: Lecture 3 
## Using Probability
### Reviewing and Reframing
.footnote[Course page: [imouzon.github.io/stat430](https://imouzon.github.io/stat430)]
---
# A Quick Rundown
## Measurement, Probability, Kolmogorov
---
name: recap
layout: false
.left-column[
  ## Recap
  ### Sets and Functions
  ### Measurements
]
.right-column[
## Quick Rundown
**Sets and Functions**
-  We talked about sets, the common notation for them, and how to go about proving that sets were eqaul
-  We revisited the definition of functions: that they are mappings from one set to another set that obey special rules

**Measurements**

We did an illustration of what it means to measure something in the mathematical sense:
-  We described a tool that can measure simple things exactly (the SVMT)
-  We then discussed how measuring more complicated things with the tool is possible _if we look at the limits of over-measurements an under-measurements_
-  If the largest under-measurement and the smallest over-measurement we can find agree, we call the more complicated object _measurable_ by our tool.
-  The measure of the complicated object is the value at which the over- and under-measurements met
]
---
layout: false
.left-column[
  ## Recap
  ### Sets and Functions
  ### Measurements
]
.right-column[
## Quick Rundown (cont)

**Measurements**

Notationally, we say that 
-  $\mu$ is our tool for directly measuring simple objects

-  $\mathbf{A}$ is a complicated object that is not clearly measurable by $\mu$

-  $M\_\*$ is the smallest over-measurement of a complicated object

-  $m^{\*}$ is the largest under-measurement of a complicated object

-  if $m^{\*} = M\_{\*}$ then we say that (i) $\mathbf{A}$ is $\mu$-measurable and (ii) $\mu(\mathbf{A}) = m^{\*} = M\_{\*}$
]
---
layout: false
.left-column[
  ## Recap
  ### Sets and Functions
  ### Measurements
]
.right-column[
## Quick Rundown (cont)

**Example: Integration with measurements**

Let's consider the [Jordan Measure](http://mathworld.wolfram.com/JordanMeasure.html)

$f(x)$ be a bounded, nonnegative function on the interval $[a,b]$

Consider the set $M = \\{(x,y) : x \in [a,b], y \in [0, f(x)]\\}$.

Call $S$ the area of the area of a rectangle defined by $[0,S] \times [0,max(f(x))]$
]

???
Jordan Measure**

-  Let $M$ be a bounded set in the plane
-  A finite union of rectangles covers $M$ if every point in $M$ is in the union
-  The "outer Jordan Measure" of $M$ is the _greatest lower bound (glb)_ of the coverings of $M$
---
layout: false
.left-column[
  ## Recap
  ### Sets and Functions
  ### Measurements
  ### Probability
]
.right-column[
## Quick Rundown (cont)

**Probability**

Probabilites are just special types of measurements. For a specific sample space $\Omega$ we define $\mathcal{F}$ to be all the events (or subsets of $\Omega$) that are _measurable_ by $P$. In order to ensure that this system is well-defined, the measure $P$ must follow these rules:

**Properties of $\mathcal{F}$**

$\mathcal{F}$ is a set whose elements are subsets of $\Omega$
1. $\emptyset \in \mathcal{F}$
2. for any subset $A$ of $\Omega$ if $A \in \mathcal{F}$ then $A^c \in \mathcal{F}$
3. if $A_1, A_2, \ldots \in \mathcal{F}$ then $A_1 \cup A_2 \cup \ldots \in \mathcal{F}$.

**Properties on $P$**

$P: \mathcal{F} \rightarrow [0,1]$ is a function such that:
1. $P(\emptyset) = 0$ and $P(\Omega) = 1$
1. if $A_1, A_2, ...$ are pairwise disjoint sets in $\mathca{F}$ then $P(A_1 \cup A_2 \cup \ldots) = P(A_1) + P(A_2) + \ldots$

]
---
layout: false
.left-column[
  ## Recap
  ### Sets and Functions
  ### Measurements
  ### Probability
]
.right-column[
## Sample spaces

**Probability**

Probabilites are just special types of measurements. For a specific sample space $\Omega$ we define $\mathcal{F}$ to be all the events (or subsets of $\Omega$) that are _measurable_ by $P$. In order to ensure that this system is well-defined, the measure $P$ must follow these rules:

**Properties of $\mathcal{F}$**

$\mathcal{F}$ is a set whose elements are subsets of $\Omega$
1. $\emptyset \in \mathcal{F}$
2. for any subset $A$ of $\Omega$ if $A \in \mathcal{F}$ then $A^c \in \mathcal{F}$
3. if $A_1, A_2, \ldots \in \mathcal{F}$ then $A_1 \cup A_2 \cup \ldots \in \mathcal{F}$.

**Properties on $P$**

$P: \mathcal{F} \rightarrow [0,1]$ is a function such that:
1. $P(\emptyset) = 0$ and $P(\Omega) = 1$
1. if $A_1, A_2, ...$ are pairwise disjoint sets in $\mathcal{F}$ then $P(A_1 \cup A_2 \cup \ldots) = P(A_1) + P(A_2) + \ldots$

]
???
Notice that there is no requirement for F or P in this case - Omega doesn't determine their form
---
layout: true
class: center, middle, inverse
---
# Continuing Probability
## Assigning Measures
## Samples spaces and Probability Measurements
---
layout: false
.left-column[
  ## Assigning Measures
  ### Coin toss/die roll
]
.right-column[
## Samples spaces and assigning probabilities
**Scenario** 

A person flips a fair coin and at the same time rolls a fair die
]
---
layout: false
.left-column[
  ## Assigning Measures
  ### Coin toss/die roll
  ### Random variables
]
.right-column[
## Samples spaces and assigning probabilities
**Scenario** 

A research team roll a fair red die and a fair blue die. They record the number of dots facing up on the red die as $X$ and the number of die facing up on the blue die as $Y$. Further, they define the total number of dots facing up as $Z$

Describe the probability system created for $X$, $Y$, and $Z$

]
---
layout: true
class: center, middle, inverse
---
# Continuing Probability
## Additional Properties
---
layout: false
.left-column[
  ## Assigning Measures
  ## Properties of Probability
  ## Conditional Probability
]
.right-column[
## Conditional probability

Suppose we have a complicated experiment with many possible steps, and the the ultimate outcome depends on each of these steps (for example, when rolling two die, the sum of the die depends on both the roll of the first and the roll of the second die).

Now consider that we know the result of one of the steps - what happens to the probability?

For instance, suppose that in the last example we know that $Y = 2$. What happens to the probability that $Z = 7$?
]
---
layout: false
.left-column[
  ## Assigning Measures
  ## Properties of Probability
  ## Conditional Probability
]
.right-column[
## Conditional probability

Conditional probability is the probability of seeing an outcome given additional information while staying consistent with the original probability values.

Suppose that there are two events, $A$ and $B$. Then, if $P(A) \ne 0$, the conditional probability of $B$ given that $A$ is known to have occurred is
\\[
P(B|A) = \dfrac{P(A \cap B)}{P(A)}
\\]

Suppose we have a complicated experiment with many possible steps, and the the ultimate outcome depends on each of these steps (for example, when rolling two die, the sum of the die depends on both the roll of the first and the roll of the second die).

Now consider that we know the result of one of the steps - what happens to the probability?

For instance, suppose that in the last example we know that $Y = 2$. What happens to the probability that $Z = 7$?
]
---
layout: false
.left-column[
  ## Assigning Measures
  ## Properties of Probability
  ## Conditional Probability
  ## Independence 
]
.right-column[
## Independence

One of the most important concepts related to conditional probability is **independence**. 

If events are independent, then the probability of an outcome $B$ occurring does not change based on knowing that $A$ has occurred.

To write it mathematically,

\\[
P(B | A) = \dfrac{P(A \cup B)}{P(A)} = P(B)
\\]

which we can rearrange to get:
\\[
P(A \cup B) = P(A) \cdot P(B)
\\]
]
---
layout: false
.left-column[
  ## Assigning Measures
  ## Properties of Probability
  ## Conditional Probability
  ## Independence 
  ### Example 1
  ### Example 2
]
.right-column[
## Independence

**System Reliability**

Consider two systems, each composed of four independent operating parts. 

In system A, the components are arranged in serial

In system B, the components are arranged in parallel.

Suppose the parts fail with probability $0.1$. 

What is the probability that System A fails?

What about System B?
]
---
layout: false
.left-column[
  ## Assigning Measures
  ## Properties of Probability
  ## Conditional Probability
  ## Independence 
  ### Example 1
  ### Example 2
]
.right-column[
## Independence

**Detecting and Disabling Rockets**
]
---
layout: false
.left-column[
  ## Assigning Measures
  ## Properties of Probability
  ## Conditional Probability
  ## Independence 
  ### Example 1
  ### Example 2
]
.right-column[
## Independence

**Balls in an Urn**
]
---
layout: false
.left-column[
  ## Assigning Measures
  ## Properties of Probability
  ## Conditional Probability
  ## Independence 
  ## Bayes Rule
]
.right-column[
## Bayes Rule

]
