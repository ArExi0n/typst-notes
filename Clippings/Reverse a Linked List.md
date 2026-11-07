---
title: "Reverse a Linked List"
source: "https://www.geeksforgeeks.org/dsa/reverse-a-linked-list/"
author:
  - "[[GeeksforGeeks]]"
published: 2009-08-02
created: 2026-10-08
description: "Your All-in-One Learning Portal: GeeksforGeeks is a comprehensive educational platform that empowers learners across domains-spanning computer science and programming, school education, upskilling, commerce, software tools, competitive exams, and more."
tags:
  - "clippings"
---
Given the ****head**** of a linked list, reverse the list and return the new head.

****Examples****:

> ****Input****:
> 
> ![2](https://media.geeksforgeeks.org/wp-content/uploads/20250818122256177473/2.webp)
> 
> ****Output****: 5 -> 4 -> 3 -> 2 -> 1
> 
> ![409842930](https://media.geeksforgeeks.org/wp-content/uploads/20250818122043965532/409842930.webp)

Table of Content

### \[Approach\] Using Iterative Method - O(n) Time and O(1) Space

> The idea is to reverse the linked list by changing the direction of links using three pointers: prev, curr, and next. At each step, point the current node to its previous node and then move all three pointers forward until the list is fully reversed.

**Output**
```
5 -> 4 -> 3 -> 2 -> 1
```

### \[Alternate Approach 1\] Using Recursion Method- O(n) Time and O(n) Space

> The idea is to use recursion to reach the last node of the list, which becomes the new head after reversal. As the recursion starts returning, each node makes its next node point back to itself, effectively reversing the links one by one until the entire list is reversed.

**Output**
```
5 -> 4 -> 3 -> 2 -> 1
```

### \[Alternate Approach 2\] Using Stack - O(n) Time and O(n) Space

> The idea is to traverse the linked list and push all nodes except the last node into the [stack](https://www.geeksforgeeks.org/dsa/stack-data-structure/). Make the last node as the new headof the reversed linked list. Now, start popping the element and append each node to the reversed Linked List. Finally, return the ****head**** of the reversed linked list.

**Output**
```
5 -> 4 -> 3 -> 2 -> 1
```

<iframe src="https://accounts.google.com/gsi/iframe/select?client_id=388036620207-3uolk1hv6ta7p3r9l6s3bobifh086qe1.apps.googleusercontent.com&amp;ux_mode=popup&amp;ui_mode=card&amp;as=4K89q3Epudem9WFWRtXJaRa6WN4LBjKTE3oQM-X2y3U&amp;bs=VB5AYrfo%2BTff5p68hb%2BUZiEHnxH05IN3SayWb4WDBp8&amp;is_itp=true&amp;channel_id=42286eacba64a7c6ff56c2ec6b0fe4b2515713106bf533cb5fd282bebbe7a408&amp;origin=https%3A%2F%2Fwww.geeksforgeeks.org&amp;oauth2_auth_url=https%3A%2F%2Faccounts.google.com%2Fo%2Foauth2%2Fv2%2Fauth" title="Sign in with Google Dialogue"></iframe>