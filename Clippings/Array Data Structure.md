---
title: "Array Data Structure"
source: "https://www.geeksforgeeks.org/dsa/array-data-structure-guide/"
author:
  - "[[GeeksforGeeks]]"
published: 2024-05-22
created: 2026-10-08
description: "Your All-in-One Learning Portal: GeeksforGeeks is a comprehensive educational platform that empowers learners across domains-spanning computer science and programming, school education, upskilling, commerce, software tools, competitive exams, and more."
tags:
  - "clippings"
---
An array is a fundamental and linear data structurethatstores items at contiguous locations. Note that in case of C/C++ and Java-Primitive-Arrays, actual elements are stored at contiguous locations. And in case of Python, JS, Java-Non-Primitive, references are stored at contiguous locations. It offers mainly the following advantages over other data structures.

- ****Random Access**** : i-th item can be accessed in O(1) Time as we have the base address and every item or reference is of same size.
- ****Cache Friendliness****: Since items / references are stored at contiguous locations, we get the advantage of locality of reference.

Arrays are used to build other data structures like Stack Queue, Deque, Graph, Hash Table, etc. An array is not useful in places where we have operations like insert in the middle, delete from middle and search in a unsorted data.

## Basics

- [Introduction](https://www.geeksforgeeks.org/dsa/introduction-to-arrays-data-structure-and-algorithm-tutorials/)
- [Applications](https://www.geeksforgeeks.org/dsa/applications-advantages-and-disadvantages-of-array-data-structure/)

## In Different Language

- [Arrays in C](https://www.geeksforgeeks.org/c/c-arrays/)
- [Vector in C++ STL](https://www.geeksforgeeks.org/cpp/vector-in-cpp-stl/)
- [Arrays in Java](https://www.geeksforgeeks.org/java/arrays-in-java/)
- [ArrayList in Java](https://www.geeksforgeeks.org/java/arraylist-in-java/)
- [List in Python](https://www.geeksforgeeks.org/python/python-lists/)
- [Arrays in C#](https://www.geeksforgeeks.org/c-sharp/arrays-in-c-sharp/)
- [Arrays in JavaScript](https://www.geeksforgeeks.org/javascript/javascript-arrays/)

## Basic Problems

- [Print Alternates](https://www.geeksforgeeks.org/dsa/print-alternate-elements-of-an-array/)
- [Leaders in an array](https://www.geeksforgeeks.org/dsa/leaders-in-an-array/)
- [Remove Duplicates from Sorted](https://www.geeksforgeeks.org/dsa/remove-duplicates-sorted-array/)
- [Generate all Subarrays](https://www.geeksforgeeks.org/dsa/generating-subarrays-using-recursion/)
- [Reverse an Array](https://www.geeksforgeeks.org/dsa/program-to-reverse-an-array/)
- [Rotate an Array](https://www.geeksforgeeks.org/dsa/complete-guide-on-array-rotations/)
- [Zeroes to End](https://www.geeksforgeeks.org/dsa/move-zeroes-end-array/)
- [Min Increments to Make Equal](https://www.geeksforgeeks.org/dsa/minimum-increment-k-operations-make-elements-equal/)
- [Min Cost to Make Size 1](https://www.geeksforgeeks.org/dsa/minimum-cost-make-array-size-1-removing-larger-pairs/)

## Easy Problems

- [Duplicate within K Distance](https://www.geeksforgeeks.org/dsa/check-given-array-contains-duplicate-elements-within-k-distance/)
- [Make Even Positioned Greater](https://www.geeksforgeeks.org/dsa/rearrange-array-such-that-even-positioned-are-greater-than-odd/)
- [Sum of all Subarrays](https://www.geeksforgeeks.org/dsa/sum-of-all-subarrays/)
- [Stock Buy and Sell – Multiple Transactions](https://www.geeksforgeeks.org/dsa/stock-buy-sell/)
- [Single Among Doubles](https://www.geeksforgeeks.org/dsa/find-element-appears-array-every-element-appears-twice/)
- [Missing Number](https://www.geeksforgeeks.org/dsa/find-the-missing-number/)
- [Missing and Repeating](https://www.geeksforgeeks.org/dsa/find-a-repeating-and-a-missing-number/)
- [Only Repeating from 1 to n-1](https://www.geeksforgeeks.org/dsa/find-repetitive-element-1-n-1/)
- [Sorted Subsequence of Size 3](https://www.geeksforgeeks.org/dsa/find-a-sorted-subsequence-of-size-3-in-linear-time/)
- [Max Subarray Sum](https://www.geeksforgeeks.org/dsa/largest-sum-contiguous-subarray/)
- [Equilibrium index](https://www.geeksforgeeks.org/dsa/equilibrium-index-of-an-array/)
- [Split array into three equals](https://www.geeksforgeeks.org/dsa/split-array-three-equal-sum-subarrays/)

## Prerequisite for the Remaining Problems

1. [Binary Search](https://www.geeksforgeeks.org/dsa/binary-search/)
2. [Selection Sort](https://www.geeksforgeeks.org/dsa/selection-sort-algorithm-2/), [Insertion Sort](https://www.geeksforgeeks.org/dsa/insertion-sort-algorithm/), [Binary Search](https://www.geeksforgeeks.org/dsa/binary-search/), [QuickSort](https://www.geeksforgeeks.org/dsa/quick-sort-algorithm/), [MergeSort](https://www.geeksforgeeks.org/dsa/merge-sort/), [CycleSort](https://www.geeksforgeeks.org/dsa/cycle-sort/), and [HeapSort](https://www.geeksforgeeks.org/dsa/heap-sort/)
3. [Sort in C++](https://www.geeksforgeeks.org/cpp/sort-c-stl/) / [Sort in Java](https://www.geeksforgeeks.org/java/arrays-sort-in-java/) / [Sort in Python](https://www.geeksforgeeks.org/python/sort-a-list-in-python/) / [Sort in JavaScript](https://www.geeksforgeeks.org/javascript/sort-an-array-in-javascript/)
4. [Two Pointers Technique](https://www.geeksforgeeks.org/dsa/two-pointers-technique/)
5. [Prefix Sum Technique](https://www.geeksforgeeks.org/dsa/prefix-sum-array-implementation-applications-competitive-programming/)
6. [Basics of Hashing](https://www.geeksforgeeks.org/dsa/hashing-data-structure/)
7. [Window Sliding Technique](https://www.geeksforgeeks.org/dsa/window-sliding-technique/)

## Medium Problems

- [Make arr\[i\] = i](https://www.geeksforgeeks.org/dsa/rearrange-array-arri/)
- [Maximum Circular Subarray Sum](https://www.geeksforgeeks.org/dsa/maximum-contiguous-circular-sum/)
- [Reorder according to given indexes](https://www.geeksforgeeks.org/dsa/reorder-a-array-according-to-given-indexes/)
- [Product Except Self](https://www.geeksforgeeks.org/dsa/a-product-array-puzzle/)
- [K-th Largest Sum Subarray](https://www.geeksforgeeks.org/dsa/k-th-largest-sum-contiguous-subarray/)
- [Smallest subarray with sum greater than x](https://www.geeksforgeeks.org/dsa/minimum-length-subarray-sum-greater-given-value/)
- [Majority Element](https://www.geeksforgeeks.org/dsa/majority-element/)
- [Count possible triangles](https://www.geeksforgeeks.org/dsa/find-number-of-triangles-possible/)
- [Construct an array from its pair-sums](https://www.geeksforgeeks.org/dsa/construct-array-pair-sum-array/)
- [Next Permutation](https://www.geeksforgeeks.org/dsa/next-permutation/)

## Hard Problems

- [Surpasser Count](https://www.geeksforgeeks.org/dsa/find-surpasser-count-of-each-element-in-array/)
- [Trapping Rain Water](https://www.geeksforgeeks.org/dsa/trapping-rain-water/)
- [Top K Frequent Elements](https://www.geeksforgeeks.org/dsa/find-k-numbers-occurrences-given-array/)
- [Kth Missing Positive Number in a Sorted Array](https://www.geeksforgeeks.org/dsa/k-th-missing-element-in-sorted-array/)
- [Stock Buy and Sell - At Most K Transactions](https://www.geeksforgeeks.org/dsa/maximum-profit-by-buying-and-selling-a-share-at-most-k-times/)
- [Stock Buy and Sell - At Most 2 Transactions](https://www.geeksforgeeks.org/dsa/maximum-profit-by-buying-and-selling-a-share-at-most-twice/)
- [Median in a Stream](https://www.geeksforgeeks.org/dsa/median-of-stream-of-integers-running-integers/)
- [Smallest Difference Triplet from 3 arrays](https://www.geeksforgeeks.org/dsa/smallest-difference-triplet-from-three-arrays/)
- [Max occurred in n ranges](https://www.geeksforgeeks.org/dsa/maximum-occurred-integer-n-ranges/)

## Expert Problems for Competitive Programmers

- [MO’s Algorithm](https://www.geeksforgeeks.org/dsa/mos-algorithm-query-square-root-decomposition-set-1-introduction/)
- [Square Root (Sqrt) Decomposition](https://www.geeksforgeeks.org/dsa/square-root-sqrt-decomposition-algorithm/)
- [Sparse Table](https://www.geeksforgeeks.org/dsa/sparse-table/)
- [Range sum query using Sparse Table](https://www.geeksforgeeks.org/dsa/range-sum-query-using-sparse-table/)
- [Range Minimum Query](https://www.geeksforgeeks.org/dsa/range-minimum-query-for-static-array/)
- [Range LCM Queries](https://www.geeksforgeeks.org/dsa/range-lcm-queries/)
- [Merge Sort Tree for Range Order Statistics](https://www.geeksforgeeks.org/dsa/merge-sort-tree-for-range-order-statistics/)
- [Minimum jumps to reach end](https://www.geeksforgeeks.org/dsa/minimum-number-of-jumps-to-reach-end-of-a-given-array/)
- [Space optimization using bit manipulations](https://www.geeksforgeeks.org/competitive-programming/space-optimization-using-bit-manipulations/)
- [Max value of Sum( i\*arr\[i\]) with only rotations](https://www.geeksforgeeks.org/dsa/find-maximum-value-of-sum-iarri-with-only-rotations-on-given-array-allowed/)

****Quick Links:****

- [Practice Problems on Arrays](https://www.geeksforgeeks.org/explore?page=1&category=Arrays)
- [Array Interview Questions](https://www.geeksforgeeks.org/dsa/top-50-array-coding-problems-for-interviews/)
- [Quiz on Arrays](https://www.geeksforgeeks.org/quizzes/top-mcqs-on-array-data-structure-with-answers/)
- [DSA Tutorial](https://www.geeksforgeeks.org/dsa/dsa-tutorial-learn-data-structures-and-algorithms/)

<iframe src="https://accounts.google.com/gsi/iframe/select?client_id=388036620207-3uolk1hv6ta7p3r9l6s3bobifh086qe1.apps.googleusercontent.com&amp;ux_mode=popup&amp;ui_mode=card&amp;as=FrfvvMEb0OaavO7eMml48WWcFTU11e0xKNeB2QfT8XA&amp;bs=VB5AYrfo%2BTff5p68hb%2BUZiEHnxH05IN3SayWb4WDBp8&amp;is_itp=true&amp;channel_id=9968698880318b5ceb9622f6e4f09ed7890f524ff760b133386e21f594d7de5a&amp;origin=https%3A%2F%2Fwww.geeksforgeeks.org&amp;oauth2_auth_url=https%3A%2F%2Faccounts.google.com%2Fo%2Foauth2%2Fv2%2Fauth" title="Sign in with Google Dialogue"></iframe>