---
reviewed_on: "2024-10-05"
---

# Matrix multiplication

If $A$ is an $m \times n$ matrix and $B$ is an $n \times p$ matrix:

$$
A = {
        \begin{pmatrix}
        a_{ 11 } & a_{ 12 } & \cdots & a_{ 1n } \\
        a_{ 21 } & a_{ 22 } & \cdots & a_{ 2n } \\
        \vdots   & \vdots   & \ddots & \vdots \\
        a_{ m1 } & a_{ m2 } & \cdots & a_{ mn }
        \end{pmatrix}
    }
    ,\quad
B = {
        \begin{pmatrix}
        c_{ 11 } & c_{ 12 } & \cdots & c_{ 1n } \\
        c_{ 21 } & c_{ 22 } & \cdots & c_{ 2n } \\
        \vdots   & \vdots   & \ddots & \vdots \\
        c_{ m1 } & c_{ m2 } & \cdots & c_{ mn }
        \end{pmatrix}
    }
$$

> Thus, the product $A B$ is defined if and only if the number of columns in $A$ equals the number of rows in $B$.

The matrix product $C = A B$ (denoted without multiplication signs or dots) is defined to be the following $m \times p$ matrix:

$$
C = {
        \begin{pmatrix}
        b_{ 11 } & b_{ 12 } & \cdots & b_{ 1p } \\
        b_{ 21 } & b_{ 22 } & \cdots & b_{ 2p } \\
        \vdots   & \vdots   & \ddots & \vdots \\
        b_{ m1 } & b_{ m2 } & \cdots & b_{ mp }
        \end{pmatrix}
    }
$$

such that:

$$
c_{ ij } = a_{ i1 } b_{ 1j } + a_{ i2 } b_{ 2j } + \cdots + a_{ in } b_{ nj } = \sum_{ k = 1 }^n { a_{ ik } b_{ kj }}
$$
