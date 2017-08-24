name: inverse
layout: true
class: center, middle, inverse
---
# STAT 430: Lecture 1 
## Why Computer Scientists Study Statistics
### Chapter 1: Introduction
.footnote[Course page: [imouzon.github.io/stat420](https://imouzon.github.io/stat430)]
---
# A Little Background
## A Quick Review of Sets, Functions, and Chaos
---
layout: false
.left-column[
  ## Sets
  ### Terms and Notation
  ]
.right-column[
   ## Terminology and Notation for Sets

   A _set_ is finite or infinite collection of objects in which order has no significance and multiplicity is also generally ignored.

   We generally use capital letters, in bold face when typed, for sets such as 
   \\(
   \mathbf{A}, \mathbf{B}, \mathbf{A\_1}, \mathbf{A\_2}, \ldots, \mathbf{A\_n}
   \\) 
   and so on.
   When a set is defined explicitly, we will generally use the following notation
   \\[
   \mathbf{A} = \\{a\_1, a\_2, \ldots, a\_n\\}
   \\]
   \\[
   \mathbf{B} = \\{b\_1, b\_2, \ldots \\}
   \\]
   Or describe a rule that all elements of the set must fit
   \\[
   \mathbf{A} = \\{x > 0 : x\mod 3 = 5\\}
   \\]
   The objects collected in the set are referred to as _elements_ of the set.
   We can indicate an object is an element of set by writing
   \\(
   a \in \mathbf{A}
   \\)
]
---
layout: false
.left-column[
  ## Sets
  ### Terms and Notation
  ### Special cases
]
.right-column[
## Special Sets
Certain sets are dealt with so regularly that they have their own standard representations.

-  \\(\mathbf{S}\\) is the *universe*, the set containing all the elements being considered in a situation
-  \\(\emptyset\\) is the *empty set* or the set containing no elements.
-  the real numbers: \\(\mathbb{R} = (-\infty, \infty)\\)
-  the integers: \\(\mathbb{Z} = \\{\ldots, -2, -1, 0, 1, 2, \ldots\\}\\)
-  the positive real numbers: \\(\\mathbb{R^{+}} = (0, \infty)\\)
-  the positive real numbers include 0: \\(\\mathbb{R^{+}\_0} = [0, \infty)\\) <!----]-->

## Special Circumstances
Because the concept of sets has such wide application, many fields have special notation that identifies a specific set as having special properties or roles:

-  \\(\mathcal{F}\\) is used in measure theory to denote the set of "measureably sets"
-  \\(\mathcal{B}\_r(\mathbf{p})\\) is used in topology as the ball of radius \\(r\\) centered at \\(\mathbf{p}\\).

]
---
layout: false
.left-column[
  ## Sets
  ### Terms and Notation
  ### Special cases
  ### Operations
]
.right-column[
## Set Operations

**Complimention**

_Motivation: I want to say "everything that is not in the set"_

The **compliment** of a set \\(\mathbf{A}\\) is a set containing all the elements that are not elements of \\(\mathbf{A}\\).
\\[
\mathbf{A}^c = \\{x : x \notin \mathbf{A}\\}
\\]

_examples_: 

If \\(\mathbf{S} = \\{a, b, c, d, e\\}\\) and \\(\mathbf{A} = \\{a, b, c\\}\\) then \\(\mathbf{A}^c = \\{d, e\\}\\)

_note_: \\(\mathbf{S}^c = \emptyset\\)
]
---
layout: false
.left-column[
  ## Sets
  ### Terms and Notation
  ### Special cases
  ### Operations
]
.right-column[
## Set Operations

**Cardinality**

Motivation: I want to say how many elements are in a set

The cardinality of a set \\(\mathbf{A}\\), notated \\(|\mathbf{A}|\\) is the number of elements in the setIf \\(\mathbf{A}\\) and \\(\mathbf{B}\\) are any two sets then \\(\mathbf{A} \cap \mathbf{B}\\) is the union.

_examples_: 

If \\(\mathbf{A} = \\{1, 2, 3, 4, 5, 6\\}\\) and \\(\mathbf{B} = \\{b, c\\}\\) then 

\\(|\mathbf{A}| = 6\\), 

\\(|\mathbf{B}| = 2\\), 

and 

\\(|\mathbf{A}| - |\mathbf{B}| = 4\\)

_note_: 

\\(|\mathbb{Z}|\\) and \\(|\mathbb{R}|\\) are both infinitely large

]
---
layout: false
.left-column[
  ## Sets
  ### Terms and Notation
  ### Special cases
  ### Using sets
]
.right-column[
## Set Operations

**Subsets**

Motivation: I want to say that everything in one set is in another set

A set \\(\mathbf{A\_1}\\) is a **subset** of a set \\(\mathbf{A\_0}\\) if every element in \\(\mathbf{A}\_1\\) is also in a \\(\mathbf{A}\_0\\)
In this case we would write:
\\[
\mathbf{A}\_1 \subset \mathbf{A}\_0
\\]

_example_: 

Let \\(\mathbf{A} = \\{1, 2, 3, 4, 5, 6\\}\\) and let \\(\mathbf{B} = \\{x \in \mathbb{R}: x \ge 1\\}\\).

Then \\(\mathbf{A} \subset \mathbf{B}\\) since each value in \\(\mathbf{A}\\) is greater than or equal to 1.

_example_: 

Let \\(\mathbf{A}\_k = [-k,k]\\) for any \\(k \in \mathbb{Z}^+\\). Then 
\\[
\mathbf{A}\_1 \subset
\mathbf{A}\_2 \subset
\mathbf{A}\_3 \subset \ldots
\\]

]
---
layout: false
.left-column[
  ## Sets
  ### Terms and Notation
  ### Special cases
  ### Operations
]
.right-column[

**Union**

_Motivation: I want to say "everything that is in either of two sets"_

The union of a two sets \\(\mathbf{A}\\) and \\(\mathbf{B}\\) is the set consisting of all elements that can be found in either set.
\\[
\mathbf{A}\cup\mathbf{B} = \\{x : x \in A \text{ or } x \in B\\}
\\]
**Intersection**

_Motivation: I want to say "everything that is in both sets**_

The **intersection** of two sets \\(\mathbf{A}\\) and \\(\mathbf{B}\\) is the set consisting of any element that is in both \\(\mathbf{A}\\) and \\(\mathbf{B}\\).

is a set then we can write **the compliment of \\(\mathbf{A}\\)** as \\(\mathbf{A}^c\\) (or less commonly \\(\bar{\mathbf{A}}\\)).

If \\(\mathbf{A} = \\{1, 2, 3, 4, 5, 6\\}\\) and \\(\mathbf{B} = \\{b, c\\}\\) then 

\\(\mathbf{A}\cup\mathbf{B} = \\{1, 2, 3, 4, 5, 6, b, c\\}\\) and
\\(\mathbf{A}\cap\mathbf{B} = \emptyset\\)

]
---
layout: false
.left-column[
  ## Sets
  ### Terms and Notation
  ### Special cases
  ### Operations
]
.right-column[

**Mutually exclusive**

_Motivation: I want to say "there are no elements that are in both sets"_

When we refer to sets
\\(\mathbf{A}\\)
and
\\(\mathbf{B}\\)
as **mutually exclusive** or **disjoint** what we mean is that the intersection of the sets is empty.
That is
\\[
\mathbf{A} \cup \mathbf{B} = \emptyset
\\]

**Exhaustive**

_Motivation: I want to say "every element is in the union of two sets"_

When we refer to sets
\\(\mathbf{A}\\)
and
\\(\mathbf{B}\\)
as **exhaustive** what we mean is that the union of the sets is the universe.
That is
\\[
\mathbf{A} \cup \mathbf{B} = \emptyset
\\]
]
---
layout: false
.left-column[
  ## Sets
  ### Terms and Notation
  ### Special cases
  ### Operations
]
.right-column[

**Some rules**

Distributivity: 

\\[
( \mathbf{A} \cup \mathbf{B} ) \cap \mathbf{C} = (\mathbf{A} \cap \mathbf{C}) \cup (\mathbf{B} \cap \mathbf{C})
\\]

\\[
( \mathbf{A} \cap \mathbf{B} ) \cup \mathbf{C} = (\mathbf{A} \cup \mathbf{C}) \cap (\mathbf{B} \cup \mathbf{C}) 
\\]

Compliments:

\\[
( \mathbf{A} \cup \mathbf{B} )^c = \mathbf{A}^c \cap \mathbf{B}^c
\\]

\\[
( \mathbf{A} \cap \mathbf{B} )^c = \mathbf{A}^c \cup \mathbf{B}^c
\\]

(binding rules: "not" before "and" before "or")
]
---
layout: false
.left-column[
  ## Sets
  ### Terms and Notation
  ### Special cases
  ## Functions
  ### Terms and Notation
]
.right-column[
## Terminology and Notation for Functions
A function \\(f: \mathbf{A} \rightarrow \mathbf{B}\\) is a relation that uniquely associates elements of one set with elements of another set.
More formally, a function from \\(\mathbf{A}\\) to \\(\mathbf{B}\\) is an object \\(f\\) such that every 
\\(a \in \mathbf{A}\\) is uniquely associated with an object 
\\(b \in \mathbf{B}\\).

The set \\(\mathbf{A}\\) is referred to as the _domain_ of the function \\(f\\) 
and the set 
\\(\\{b \in \mathbf{B} : f(a) = b \text{ for some } a \in A\\}\\) is referred to as the _range_ of the function.
Domains and ranges are not usually specified and are usually implied by either the context ("\\(f(x)\\) is a continuous function") 
but it is helpful to be think of this definition for abstract cases.

Note: neither the domain nor the range of a function need to be "one dimensional" - for example the function
\\[
f(x,y) = x^2 + y^2
\\]
has the domain of
\\[
\mathbb{R} \times \mathbb{R} = \\{(x,y) : x \in \mathbb{R}, y \in \mathbb{R}\\}
\\]
]
---
layout: false
.left-column[
  ## Determinism
  ]
.right-column[
   <center>
      <h2>
      Deterministic Relationships
      </h2>
   </center>

   Most of the mathematical concepts that you have encountered in your education can (very broadly) be considered **determinisitic** meaning that there is an exact mathematical relationship between variables.
   
   For example, Newton's 2nd Law of Motion, 
   \\[F = m \cdot a\\] 
   is a deterministic relationship. It is often userful to describe these relationships using functional notation, i.e.,
   \\[F(m,a) = m \cdot a\\] 
   In this case we are saying that we know all the values on one side (say, \\(m = 2\\) kg and \\(a = 5 m/s^2\\)) then we know the force (10 N).
]
---
layout: false
.left-column[
  ## Determinism
  ### Finding \\(g\\)
  ]
.right-column[
   <center>
      <h2>
      My Version of a Lab Experiment
      </h2>
   </center>

   **Materials**:

   -  One Penn brand racquetball (slightly used).
   -  Two students with stop watches.
   -  An instructor of roughly 71 inches (1.80 m) in height.


   **Procedure**: 

   1.  Position the racquetball just over the top of the instructors head
   2.  Count 1-2-3-Drop.
   3.  (careful) On "drop" simultaneously release the ball and begin the stop watch.
   4.  When the ball strikes the ground, stop the stop watch.

   **Results**:

   -  \\(h(t) = h(0) - g \cdot t^2 \\) 
   
   or 
   -  \\(g = \frac{1.80 \text{ m}}{t^2}\\)
   
]
---
layout: false
.left-column[
  ## Determinism
  ### Finding \\(g\\)
  ### Issues
  ]
.right-column[
   <center>
      <h2>
      Why this experiment didn't work
      </h2>
   </center>

   **Very obvious issues**:

   -  I am not exactly 1.80 meters tall.
   -  The stopwatch timing is problematic.


   **Less (?) obvious issues**:

   -  Gravity is not the only force acting on the racquetball
   -  ???


   **Conclusion**:

   -  Our experiment is fraught with error


   **Suggested Improvements**:

   -  Control more parts of the experimental environment and we will get a more accurate result.
]
---
layout: false
.left-column[
  ## Determinism
  ### Finding \\(g\\)
  ### Issues
  ### Control Issues
  ]
.right-column[
   <center>
      <h2>
      How much can we really control though?
      </h2>
   </center>

   -  How accurately can we really measure the time? Can we be accurate to 10 decimals?
      Are we actually measuring the true time if we are accurate up to 10 decimals? 100 decimals?

   -  How accurately can we really measure a height? Again, 10 decimals? 100 decimals?


   **My hunch**: 
   
   The relationship between distance, travel time, and acceleration is pretty simple - if we are accurate to 10 decimal places, we should be pretty accurate for \\(g\\) as well.


   But what if the relationship is even a little more complicated?

]
---
layout: false
.left-column[
  ## Determinism
  ### Finding \\(g\\)
  ### Issues
  ### Control Issues
  ## Chaos
  ]
.right-column[
   <center>
      <h2>
      Chaos Theory and Determinism
      </h2>
   </center>

   A **Chaotic System** is one for which minuscule differences in the system's conditions (possibly even below our ability to detect) can result in wildly different (essentially random) results.
   Even though the laws governing the system are deterministic, our inability to truly *know* the initial conditions can lead to unexpected outcomes.
   

   **Example**: a double pendulum (credit to Bassam Jalgha)
<iframe width="560" height="315" src="https://www.youtube.com/embed/brs8l-Jzbl4" frameborder="0" allowfullscreen></iframe>


]
---
name: inverse
layout: true
class: center, middle, inverse
---
# What's My Point

## Deterministic laws may govern the results of an experiment 
## but...

### 1. You can not know all the laws
### 2. You can not control everything in the system
### 3. What you don't control may be altering your results in chaotic ways
---
name: inverse
layout: true
class: center, middle, inverse
---
# Probability
## A Review of the Basics
---
layout: false
.left-column[
  ## The Probabilistic Framework
  ### Random Experiments
]
.right-column[

## The Probabilistic Framework

Problems that can be solved using probabilistic concepts usually have a sort of "framework". We identify the parts of the framework as:

-  **A random experiment**: an experiment with a non-deterministic outcome

-  **Sample Space**: the set of all possible outcomes

-  **Event**: an individual outcome of the experiment (an element of the sample space)

-  **Probability**: a quantity reflecting the chance of a specific outcome being observed

]
---
layout: false
.left-column[
  ## The Probabilistic Framework
  ### Random Experiments
  ### Sample Spaces
  ### Events
  ### Probability
]
.right-column[

## Sample Spaces

-  A sample space is a set of all possible outcomes

-  Sample spaces can range greatly in complexity

-  Sample spaces can be **finite**, **countably infinite**, or **uncountably infinite**

## Events

-  Events are subsets of the sample space

-  _Elementary events_ are subsets of size 1, i.e., they are individual outcomes

## Probability

-  A function whose domain is the events and whose range is \\([0,1]\\)

_example:_ flipping coins, tossing die

]
