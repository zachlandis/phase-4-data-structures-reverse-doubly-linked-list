# Reverse a Doubly Linked List

## Learning Goals

- Build a doubly linked list and use it to solve an algorithm

## Introduction

At this point we've learned how to solve algorithms with singly linked lists,
and learned what doubly linked lists are, so it's time to put that knowledge to
use and solve an algorithm with a doubly linked list!

Fork and clone this lab; you'll be coding in the `lib` folder. You can
run the tests at any point using `learn test` to check your work.

## Instructions

Write a method `LinkedList#reverse!` that reverses the list in place, so the
head is the new tail, the tail is the new head, and all of the `prev_node` and
`next_node` attributes of each node in the list point to the correct nodes.

For example:

- Input:  `6 <--> 7 <--> 8`
- Output: `8 <--> 7 <--> 6`

- Input:  `11 <--> 18 <--> 19 <--> 94`
- Output: `94 <--> 19 <--> 18 <--> 11`

- Input:  `41 <--> 101 <--> 8 <--> 28 <--> 32`
- Output: `32 <--> 28 <--> 8 <--> 101 <--> 41`

### Bonus

Try to solve the problem recursively!

> Hint: You might want to create a recursive helper method `reverse_node`
> instead of trying to use the `reverse!` method recursively.
