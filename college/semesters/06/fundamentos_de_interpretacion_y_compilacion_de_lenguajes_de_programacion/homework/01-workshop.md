---
reviewed_on: "2025-02-21"
---

# Workshop

## 1

Write a function called "invert" that takes one argument: a list $l$. This list is composed of pairs $(x,y)$ (each pair itself being a list of size 2). The function should return a list similar to $l$, but with each pair reversed.

```racket
; invert: list -> list
; purpose: takes a list of pairs and returns a new list with each pair reversed.
(define (invert list_)
	(let (
		; invert-pair: list -> list
		; purpose: reverses the order of the elements within a pair
		[invert_pair
			(lambda (pair)
			(cons (cadr pair)
					(cons (car pair) empty)))])
		(cond
			[(empty? list_) empty]
			[else (cons (invert_pair (car list_))
						(invert (cdr list_)))])))
```

## 2

Write a function called "down" that takes one argument: a list $l$. The function should return a list where each element of $l$ is wrapped with one additional level of parentheses compared to its original state.

```racket
; down: list -> list
; purpose: returns a list where each element is wrapped with one additional level of parentheses.
(define (down list_)
	(let (
		; add-parenthesis: any -> list
		; purpose: wraps the given element in a single-element list.
		[add-parenthesis
			(lambda (element)
			(cons element empty))])
		(cond
			[(empty? list_) empty]
			[else (cons (add-parenthesis (car list_))
						(down (cdr list_)))])))
```

## 3

Write a function called "replace_nth" that takes three arguments: a list $l$, a number $n$, and an element $x$. The function should return a list similar to $l$ but with the element at position $n$ (indexed from zero) replaced by $x$.

```racket
; list-set: list integer any -> list
; purpose: replaces the nth element of lst with x.
(define (replace_nth list_ n x)
	(if (= n 0)
		(cons x (cdr list_))
		(cons (car list_) (replace_nth (cdr list_) (- n 1) x))))
```

## 4

Write a function called "filter_" that takes two arguments: a predicate $P$ and a list $l$. The function should return a list containing only those elements of $l$ that satisfy the predicate $P$.

```racket
; filter_: (any -> boolean) list -> list
; purpose: returns a list containing only those elements of the list that satisfy the predicate.
(define (filter_ p list_)
	(cond
		[(empty? list_) empty]
		[(p (car list_)) (cons (car list_) (filter_ p (cdr list_)))]
		[else (filter_ p (cdr list_))]))
```

## 5

Write a function called "find_index" that takes two arguments: a predicate $P$ and a list $l$. The function should return the index (starting from 0) of the first element in $l$ that satisfies the predicate $P$. If no element satisfies the predicate, it should return `#f`.

```racket
; find_index: (any -> boolean) list -> integer or #f
; purpose: returns the index of the first element in lst that satisfies predicate p,
;          or #f if no element satisfies p.
(define (find_index p lst)
	(letrec ([find_index_
				(lambda (list_ p n)
					(cond
					[(empty? list_) #f]
					[(p (car list_)) n]
					[else (find_index_ (cdr list_) p (+ n 1))]))])
	(find_index_ lst p 0)))
```

## 6

Write a function called "swapper" that takes three arguments: an element $e_1$, another element $e_2$, and a list $l$. The function should return a list similar to $l$ but with every occurrence of $e_1$ replaced by $e_2$ and every occurrence of $e_2$ replaced by $e_1$.

```racket
; swapper: any any list -> list
; purpose: swaps occurrences of e_1 with e_2 and e_2 with e_1 in the given list.
(define (swapper e_1 e_2 list_)
	(cond
	[(empty? list_) list_]
	[(eqv? (car list_) e_1)
		(cons e_2 (swapper e_1 e_2 (cdr list_)))]
	[(eqv? (car list_) e_2)
		(cons e_1 (swapper e_1 e_2 (cdr list_)))]
	[else
		(cons (car list_) (swapper e_1 e_2 (cdr list_)))]))
```

## 7

Write a function called "cartesian_product" that takes two arguments: two lists of symbols without duplicates, $l_1$ and $l_2$. The function should return a list of pairs representing the Cartesian product of $l_1$ and $l_2$.

```racket
; append_: list list -> list
; purpose: returns the concatenation of two lists.
(define (append_ list_1 list_2)
	(cond
		[(empty? list_1) list_2]
		[else (cons (car list_1) (append_ (cdr list_1) list_2))]))


; cartesian_product: list list -> list
; purpose: returns a list of pairs representing the Cartesian product of two sets.
(define (cartesian_product list_1 list_2)
	(letrec ([combine_with_all
			(lambda (element list_)
				(cond
				[(empty? list_) empty]
				[else (cons (list element (car list_))
							(combine_with_all element (cdr list_)))]))])
	(cond
		[(empty? list_1) empty]
		[else (append_ (combine_with_all (car list_1) list_2)
					(cartesian-product (cdr list_1) list_2))])))
```

## 8

Write a function called "filter_pairs" that takes three arguments: a unary function $f$ (which accepts a single argument), and two lists of numbers $l_1$ and $l_2$. The function should return a list of pairs $(a, b)$, where $a$ is an element of $l_1$ and $b$ is an element of $l_2$, such that applying $f$ to a yields $b$.

```racket
; filter_pairs: (any -> any) list list -> list
; purpose: returns a list of pairs (a,b) being "a" element of list_1 and "b" element of list_2, being
;          true the property that when applying the unary function "f" with the argument "a", it must
;          yield the number "b" (f(a) = b).
(define (filter_pairs f list_1 list_2)
	(if (empty? list_1) ; assume l1 and l2 have the same length
		empty
		(let* ([list_1_first_element (car list_1)]
				[list_2_first_element (car list_2)]
				[tuple (cons list_1_first_element (cons list_2_first_element empty))])
		(cond
			[(empty? list_1) empty]
			[(eqv? (f list_1_first_element) list_2_first_element)
			(cons tuple (filter_pairs f (cdr list_1) (cdr list_2)))]
			[else
			(filter_pairs f (cdr list_1) (cdr list_2))]))))
```

## 9

Write a function called "inversions" that takes a list $l$ as input and determines the number of inversions in $l$. Formally, given a list $A = (a_1,a_2,\dots,a_n)$ of $n$ distinct numbers, a pair $(i,j)$ is called an inversion if $i < j$ and $a_i > a_j$.

```racket
; inversions: list -> integer.
; purpose: counts the number of inversions in a list.
(define (inversions list_)
	(letrec ([smaller-than
			(lambda (element lst)
				(cond
					[(empty? lst) 0]
					[(> element (car lst))
						(+ 1 (smaller-than element (cdr lst)))]
					[else
						(smaller-than element (cdr lst))]))])
	(cond
		[(empty? list_) 0]
		[else
		(+ (smaller-than (car list_) (cdr list_))
			(inversions (cdr list_)))])))
```

## 9
