name: inverse
layout: true
class: center, middle, inverse
---
### STAT 430: Lecture 15
## Multiple Random Variables
### Functions of Jointly Distributed Random Variables 2

.footnote[Course page: [imouzon.github.io/stat430](https://imouzon.github.io/stat430)]
---
layout: true
class: center, middle, inverse
---
# A Quick Correction
---
layout:false
.left-column[
### $Z = g(X,Y)$
]
.right-column[
### Functions of Multiple Random Variables

**Special Cases** 

Suppose that $X$ and $Y$ are both random variables with joint distribution given by $f\_{XY}(x,y)$. Then if

### Discrete case
1. $Z = X + Y$ then \\[p\_Z(z) = \sum\_{-\infty}^{\infty} p\_{XY}(x, z - x)\\]
1. $Z = Y/X$ then \\[f\_Z(z) = \sum\_{-\infty}^{\infty} |x| p\_{XY}(x, xz) dx \\]

### Continuous case
1. $Z = X + Y$ then \\[p\_Z(z) = \int\_{-\infty}^{\infty} f\_{XY}(x, z - x)\\]
1. $Z = Y/X$ then \\[f\_Z(z) = \sum\_{-\infty}^{\infty} |x| f\_{XY}(x, xz) dx \\]

]
---
layout: true
class: center, middle, inverse
---
# Functions of Jointly Distributed Random Variables
## The General Case: $Z = g(X,Y)$
---
layout:false
.left-column[
### $Z = g(X,Y)$
]
.right-column[
### Revisiting the Last Example
Suppose that $X$ and $Y$ are two random variables with joint distribution given by $f\_{XY}(x,y)$ and that $u = g\_1(x, y)$ and $v = g\_2(x,y)$. 

If we can invert both $U$ and $V$ to get $X = h\_1(u, v)$ and $Y = h\_2(u, v)$ and we can get the Jacobian:
\\[
J(x,y) = \begin{bmatrix}
\frac{ \partial u}{ \partial x} & \frac{ \partial v}{ \partial x} \\
\frac{ \partial u}{ \partial y} & \frac{ \partial v}{ \partial y} \\
\end{bmatrix}
\\]
and the determinate of the Jacobian is not always 0 then
\\[
f\_{UV}(u,v) = f\_{XY}(h\_1(u,v), h\_2(u,v))| J^{-1}(h\_1(u,v), h\_2(u,v)) |
\\]
]
---
