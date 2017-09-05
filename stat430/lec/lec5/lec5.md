name: inverse
layout: true
class: center, middle, inverse
---
# STAT 430: Lecture 5
## Multi-Stage Experiments
### Conditional Probability, Independence, and Bayes Rule
.footnote[Course page: [imouzon.github.io/stat430](https://imouzon.github.io/stat430)]
---
## Quick Recap
### Counting Principles
---
layout:false
.left-column[
## Counting
### Summation Principal
]
.right-column[
###Summation Principal: 

**When steps of an experiment can be arranged in parallel**

If a mulit-step experiment can thought of as having a first step with $k$ possible outcomes and a second step that will have either $n_1, n_2, n_3, \ldots, \text{ or } n_k$ possible outcomes (depending on the first step), then the entire experiment will have
\\[
n_1 + n_2 + n_3 + \ldots + n_k
\\]
possible outcomes.

Illustration:

]
---
.left-column[
## Counting
### Summation Principal
### Multiplication Principal
]
.right-column[
###Multiplication Principal: 

**When the steps of experiment can be arranged in series**

If a mulit-step experiment can thought of as having a $k$ steps, with $n_1$ possible outcomes of the first step, $n_2$ possible outcomes of the second step, $\ldots$, and $n_k$ possible outcomes of the $k^{th}$ step, then the number of possible outcomes for the entire experiment is
\\[
n_1 \times n_2 \times n_3 \times \ldots \times n_k
\\]

Illustration:

]
---
.left-column[
## Counting
### Summation Principal
### Multiplication Principal
]
.right-column[
### Example: A multi-stage experiment

Suppose I roll a six-sided die, record the number of dots facing up as $x$ and then flip a coin $x$ times and record the order of heads and tails observed. How many possible outcomes are there to this experiment?
]
---
.left-column[
## Counting
### Summation Principal
### Multiplication Principal
### Combinations and Permutations
]
.right-column[
### Permutations

The number of ways of selecting $k$ objects from a group of $n$ objects where the order of selection matters is the **permutation of $n$ choose $k$** and can be written as:
\\[
\_n P_k = \dfrac{n!}{(n-k)!}
\\]
### Permutations

The number of ways of selecting $k$ objects from a group of $n$ objects where the order of selection _does not_ matter is the **combination of $n$ choose $k$** and can be written as:
\\[
\_n C_k = \dfrac{n!}{(n-k)! \cdot k!}
\\]
notice that 
\\(\_n C_k = \frac{\_n P_k}{k!}\\) which can be thought of as the way of accounting for the ordering of the $k$ selected elements
]
---
layout:true
class: center, middle, inverse
---
layout: false
.left-column[
## Conditional Probability
### Defined
]
.right-column[
## Conditional probability

Conditional probabilities are the result of finding out additional information about an experiment while respecting the original "naive" probability.

***def: Conditional probability of $A$ given $B$***
>  Let $A$ and $B$ be two events with $P(B) \ne 0$. The conditional probability of $A$ given $B$ is defined to be:
>  \\[
>  P(A|B) = \dfrac{P(A \cap B)}{P(B)}
>  \\]

Notice that this can be rearranged to give:
\\[
P(A \cap B) = P(A|B) \cdot P(B)
\\]
Meaning that if we know the probability of some event $B$ occurring and the probability of some other event $E$ occurring given that $B$ has occurred we can know the probability of the final outcome where they both occur
]
---
layout: false
.left-column[
## Conditional Probability
### Defined
### Example
]
.right-column[
###Example Using Conditional Probability

I perform an experiment where I flip a fair coin twice and record the number of times I see the "heads" side of the coin facing up.
1.  What is the probability that I observe two flips of heads?
2.  What is the probability that I observe at least one flip of heads?
3.  What is the probability that I observe two heads _given_ that I have observed at least one flip of heads.

]
---
layout: false
.left-column[
  ## Conditional Probability
  ## Independence 
]
.right-column[
## Independence

One of the most important concepts related to conditional probability is **independence**. 

***def: Independence of events $A$ given $B$***
>  Two events, $A$ and $B$, are said to be ***independent*** if 
>  \\[
>  P(A \cap B) = P(A) \cdot P(B)
>  \\]

Notice that we can rearrange this, and write:
>  If events $A$ and $B$ are independent and $P(B) \ne 0$, then
>  \\[
>  P(A | B) = \dfrac{P(A \cap B)}{P(B)} = \dfrac{P(A) \cdot P(B)}{P(B)} = P(A)
>  \\]

In other words, if events are independent then the probability of an outcome $A$ occurring does not change based on knowing that $B$ has occurred.
]
---
layout: false
.left-column[
  ## Conditional Probability
  ## Independence 
  ### Example 1
]
.right-column[
### System Reliability

Consider two systems for transmitting a signal, each composed of four independently operating components arranged on a path between an input and an output (for instance, resistors on a circuit). In System A, the components are arranged serially (one after the other), while in System B the components are arranged in parallel. If a component fails, then the signal from the input can not pass. If the signal does can not reach the output, then the system is said to have failed. Assume that the individual components fail with probability $0.1$. 

What is the probability that System A fails?

What about System B?
]
---
layout: false
.left-column[
  ## Conditional Probability
  ## Independence 
  ## Bayes Rule
]
.right-column[
### Bayes Rule
One of the more useful and important tools that comes out of the way we define conditional probability is Bayes Rule.

***def: Bayes Rules***
> Suppose that $A$ is an event and that $B\_1, B\_2, \ldots, B\_n$ are $n$ disjoint events for which $B\_1 \cup B\_2 \cup \ldots \cup B\_n = \Omega$ and $P(B\_i) > 0$ for all $i$. Then
> \\[
> P(B\_j | A) = \dfrac{P(A | B\_j) P(B\_j)}{\sum\_{i=1}^n P(A | B\_i) \cdot P(B\_i)}
> \\]

In other words, if we know $P(B\_i)$ and $P(A|B\_i)$ for all $i$ then we can *flip the conditions* around and have $P(B\_j | A)$ for any condition we want. For two events, $A$ and $B$, we can write:
\\[
P(B^c|A) = \dfrac{P(A | B^c) P(B^c)}{P(A | B) P(B) + P(A | B^c) P(B^c)}
\\]

]
---
layout: false
.left-column[
  ## Conditional Probability
  ## Independence 
  ### Example 1
  ### Example 2
]
.right-column[
### Risk Management and Rockets
]
