---
title: "Race condition"
source: "https://www.geeksforgeeks.org/operating-systems/race-condition-in-operating-systems/"
author:
  - "[[GeeksforGeeks]]"
published: 2025-08-28
created: 2026-10-18
description: "Your All-in-One Learning Portal: GeeksforGeeks is a comprehensive educational platform that empowers learners across domains-spanning computer science and programming, school education, upskilling, commerce, software tools, competitive exams, and more."
tags:
  - "clippings"
---
A race condition occurs when two or more processes or threads access and modify the same data at the same time, and the final result depends on the order in which they run. Without proper coordination, this can lead to incorrect or unpredictable results.

****For example:**** If two people update the same bank account simultaneously without checking each other’s changes, the final balance may be wrong.

- ****Shared Resource****: A variable, file, memory location, or device accessed by multiple processes.
- ****Concurrency****: Multiple processes or threads executing simultaneously or overlapping in execution.
- ****Non-Atomic Operations:**** Operations that can be interrupted, such as read-modify-write, which can cause inconsistent states when multiple processes access the same data concurrently.

## Causes of Race Conditions

- ****Simultaneous Access:**** When two or more processes try to read or write the same shared resource at the same time.
- ****Non-Atomic Updates:**** Operations like increment or decrement are not indivisible.
- ****Lack of Synchronization****: No mechanisms like locks, semaphores, or monitors are used to control access.
- ****Improper Scheduling:**** OS scheduler interrupts processes at critical moments.

### Example: Two Processes Updating a Shared Variable

Let’s take a shared variable balance = 100 and two processes P1 and P2:

- P1 wants to add 10 to balance.
- P2 wants to subtract 10 from balance.

Scenario without synchronization:

![racecondition](https://media.geeksforgeeks.org/wp-content/uploads/20250829161248232387/racecondition.webp)

Race Condition

****Explanation****:

- P1 reads balance = 100 and prepares to add 10.
- Before P1 updates the balance with the new value (110), it is interrupted by the process P2.
- P2, unaware of P1’s action (of adding 10), reads the balance as 100 (incorrect) and prepares to subtract 10.
- After subtracting, P2 updates the balance to 90 and then P1 resumes and writes the balance as 110 which results in an incorrect final value.

In many cases, the final balance may incorrectly be 110 or 90, instead of the expected 100. This is a classic race condition.

## Effects of Race Conditions

- ****Data Corruption****: Shared data may become inconsistent.
- ****Unpredictable Behavior****: The output may vary every time the program runs.
- ****Security Risks:**** Race conditions can be exploited, e.g., in banking transactions or authentication bypass.
- ****System Crashes:**** Critical system data may get corrupted, leading to failures.

## Prevention Techniques

1. ****Mutex (Mutual Exclusion)****: Ensure only one process can enter the critical section at a time.
2. ****Semaphores****: Counting or binary semaphores control access to resources.
3. ****Monitors****: High-level synchronization constructs that manage shared resources.
4. ****Atomic Operations****: Use hardware or software-supported atomic instructions.
5. ****Disable Interrupts (for kernel-level programming)****: Prevent context switches during critical sections.
6. ****Proper Scheduling****: Ensure the scheduler does not preempt critical section execution.

What is the output of the unhandled race condition example (expected vs actual)?

- A
	Always 2000
- B
	Always less than 2000
- C
	Sometimes 2000, sometimes less
- D
	Always 0

Which race condition occurs when a thread checks a condition but another thread changes it before the action?

- A
	Read-Modify-Write Race
- B
	Initialization Race
- C
	Check-Then-Act Race
- D
	Data Visibility Race

Which statement best describes user mode?

- A
	It allows programs to access hardware directly
- B
	It executes privileged instructions without restrictions
- C
	It runs with limited privileges and restricted access
- D
	It operates with higher privileges than kernel mode

What happens when a program in user mode requests a service from the operating system?

- A
	Nothing changes; it stays in user mode
- B
	It enters debug mode
- C
	The system switches from user mode to kernel mode
- D
	The program is terminated

Why is kernel mode required in an operating system?

- A
	To allow safe execution of critical instructions
- B
	It runs with limited privileges and restricted access to system resources
- C
	To prevent multitasking
- D
	To run faster than user mode at all times

Which of the following actions can only be performed in kernel mode?

- A
	Executing arithmetic operations
- B
	Executing Logical Operations
- C
	Accessing I/O devices directly
- D
	Running normal user applications

What is the primary reason for having two modes in an operating system?

In an operating system, semaphores are used for synchronization between processes and threads. The semaphore functions `wait()` and `signal()` update the shared semaphore value.

To prevent race conditions and ensure proper synchronization, which semaphore operations must be executed atomically?

![success](https://media.geeksforgeeks.org/auth-dashboard-uploads/sucess-img.png)

Quiz Completed Successfully

Score:0/8

Accuracy:0%