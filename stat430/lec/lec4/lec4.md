name: inverse
layout: true
class: center, middle, inverse
---
# STAT 430: Lecture 4
## Multi-Stage Experiments
### Conditional Probability, Independence, and Bayes Rule
.footnote[Course page: [imouzon.github.io/stat430](https://imouzon.github.io/stat430)]
---
layout: false
.left-column[
  ## Conditional Probability
]
.right-column[
## Conditional probability

Conditional probability is the probability of seeing an outcome given additional information while staying consistent with the original probability values.

Suppose that there are two events, \\(A\\) and \\(B\\). Then, if \\(P(A) \ne 0\\), the conditional probability of \\(B\\) given that \\(A\\) is known to have occurred is
\\[
P(B|A) = \dfrac{P(A \cap B)}{P(A)}
\\]
Suppose we have a complicated experiment with many possible steps, and the the ultimate outcome depends on each of these steps (for example, when rolling two die, the sum of the die depends on both the roll of the first and the roll of the second die).

Now consider that we know the result of one of the steps - what happens to the probability?

For instance, suppose that in the last example we know that \\(Y = 2\\). What happens to the probability that \\(Z = 7\\)?
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
  ## Conditional Probability
  ## Independence 
  ## Bayes Rule
]
.right-column[
## Bayes Rule

Suppose that \\(A, B\\) are two events. We have seen that, if \\(P(A)\\) is not 0, then we can write the conditional probability of \\(B\\) given \\(A\\) as:
\\[
P(B | A) = \dfrac{P(A \cup B)}{P(A)}
\\]
You may have also noticed that this can also be written in the reverse: meaning, that if $P(B)$ is not 0, then
\\[
P(A | B) = \dfrac{P(B \cup A)}{P(B)} = \dfrac{P(A \cup B)}{P(B)}
\\]
You'll notice the common link here: \\(P(A \cup B)\\).



]
