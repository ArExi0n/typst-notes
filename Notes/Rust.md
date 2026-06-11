---
date: 2025-04-26
updated: 2025-04-29
class: note
tags:
  - rust
  - programming
source:
related:
  - "[[Backend Notes]]"
description: "Rust programming language fundamentals - ownership, borrowing, structs, enums"
aliases:
course: rust
status: evergreen
---

> Rust doesn't hide complexity from developers it offers them the right tools to manage all the complexity.

# Why rust ? Is node.js is not enough

### Memory Safe

Rust has a concept of owners, borrowing and lifetimes that make it extremely memory safe.

### Systems Language

It is intended to be used (but not restricted to) to do lower level things .

### Generally faster

> Rust has a separate compilation step (similar to C++) that spits out an optimized binary and does a lot of static analysis at compile time.

![[Pasted image 20250426151111.png]]
![[Pasted image 20250426151131.png]]

\*Node => Single threaded

> It will use 1 core from any amount of cores.

\*Rust / Java / Go => Threads

> This shares the data much faster through threads in the compare of other lang.\*

- In using threads there is a beanyfit with it that I the data is conserved more effectianly

This multithreading allow the user to make mutithreaded server and saas project

## Initializing rust locally

> Rust projects can be used to do a lot of things

1. Create Backend for a Full stack app

2. Create CLIs (command line interfaces)

3. Create browsers

4. Great Code Editors

#### Simple Variables in rust

##### 1.Numbers

```Rust
	fn main() {
    let x: i8 = 1;// 32bit is default storeage is assinged
    println!("{}", x);
}
```

##### What Is i 32 an all ?

_Rust let us describe what is the size of the number ._

There are usually two types on integers that you store in lang like c and rust

> Signed int
> Unsigned int

Why we need this as we all know that _rust is a memory saving / low level lang which aims to have smallest memory footprint_.
![[Pasted image 20250426180439.png]]

What happens if we overflow?

```Rust
fn main() {
    let mut num: i8 = 124;
    for i in 0..100 {
        num += 127;
    }
    print!("Number: {}", num)
}
```

#### 2. Booleans

> Bools can have two states, true or false

```Rust
fn main() {
	    let is_male = false;
	    let is_above_18 = true;

    if is_male {
        println!("You are a male");

    } else {
        println!("You are not a male");
    }

    if is_male && is_above_18 {
        print!("You are a legal male");
    }
}
```

_Rust have a property which didn't allow to change the value of a variable unlike JS it is because by default the variable is assigned as immutable if we want to mute any Variables ._

#### 3. Strings(Pain in the ass)

There are two ways of doing `strings` in rust.

```Rust
	fn main() {
    let greeting = String::from("hello world");
    println!("{}", greeting);
          //hard
    // print!("{}", greeting.chars().nth(1000))
}
```

![[Pasted image 20250426191323.png]]

## Conditionals, loops

### Conditionals

```Rust
pub fn main() {
    let x = 99;
    let is_even = is_even(x);
    if is_even {
        print!("{} is even", x);
    } else {
        print!("{} is odd", x);
    }
}

pub fn is_even(x: i32) -> bool {
    return x % 2 == 0;
}
```

### Loops

```Rust
pub fn main() {
    let str = String::from("Hel");
    println!("First name {}", get_first_name(str))

}

pub fn get_first_name(str: String) -> String {
    let mut first_name = String::from("");
    for c in str.chars() {
        if c == ' ' {
            break
        }
        first_name.push(c);
    }
    return first_name;
}
```

##### What are iterators ?

> An iterators is any object that can go through a sequence of items, one by one.

## Functions

```Rust
// This function takes two integers `a` and `b`.
// It returns their sum as an integer.
let mut a=10
let b = 2
fn do_sum(a: i32, b: i32) -> i32 {//we need to tell rust that the sum will taking the bits of the data
    return a + b; // Adds `a` and `b`, then returns the result.
}
```

# Memory Management in Rust

![[Pasted image 20250427130838.png]]

> Whenever you run a program (C++, Rust, JS), it `allocates` and `deallocates` memory on the RAM.

For example for the following JS

```JS
function main() {
  runLoop();
}

function runLoop() {
  let x = [];
  for (let i = 0; i < 100000; i++) {
    x.push(1);
  }
  console.log(x);
}

main();
```

as the `runLoop` function runs, a new array is pushed to RAM, and eventually `garbage collected`

There are 3 popular ways of doing memory management.

![[Pasted image 20250427131809.png]]

> Memory management is a crucial aspect of programming in Rust, designed to ensure safety and efficiency without the need for a garbage collector.

Not having a `garbage collector` is one of the key reasons rust is so fast

It achieves this using the

1. Mutability

2. Heap and memory

3. Ownership model

4. Borrowing and references

5. Lifetimes

# Mutability

### Mutability

> Immutable `variables` represent variables whose value cant be changed once assigned

```Rust
fn main() {
    let x: i32 = 1;
    x = 2; // Error because x is immutable
    println!("{}", x);
}
```

By default, all variables in Rust are immutable because

1. Immutable data is inherently thread-safe because if no thread can alter the data, then no synchronization is needed when data is accessed concurrently/When something can't change, it's safe to share If no thread can change the data, then all threads can use it at the same time without fighting or needing special locks.

2. Knowing that certain data will not change allows the compiler to optimize code better.

You can make variables mutable by using the `mut` keyword

```Rust
fn main() {
    let mut x: i32 = 1;
    x = 2; // No error
    println!("{}", x);
}
```

const in JS is not the same as immutable variables in rust. In JS, you can still update the contents of const `arrays` and `objects`

![[Pasted image 20250427142036.png]]

# Stack vs Heap

**Stack vs. Heap Allocation**

> Rust has clear rules about stack and heap data management:

- **Stack**: Fast allocation and deallocation. Rust uses the stack for most primitive data types and for data where the size is known at compile time (eg: numbers). ![[Pasted image 20250427143050.png]]

- **Heap**: Used for data that can grow at runtime, such as vectors or strings.

![[Pasted image 20250427144954.png]]

#### What’s stored on the stack?

Numbers - i32, i64, f64 …

Booleans - true, false

Fixed sized arrays (we’ll come to this later)

#### What’s stored on heap?

Strings

Vectors (we’ll come to this later)

### Examples

Hello world with numbers

![notion image](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F085e8ad8-528e-47d7-8922-a23dc4016453%2F90cb768d-e932-4fb4-97e6-9511183f8517%2FScreenshot_2024-04-26_at_8.38.55_AM.png?table=block&id=67e83e8c-7491-4792-8b95-60ad2ec010cc&cache=v2)

Hello world with functions

![notion image](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F085e8ad8-528e-47d7-8922-a23dc4016453%2F93df4d1c-e2d3-4260-b50d-f621b6f9103d%2FScreenshot_2024-04-26_at_8.44.45_AM.png?table=block&id=c11ec7d5-1890-4707-aea0-b6c819e49257&cache=v2)

![notion image](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F085e8ad8-528e-47d7-8922-a23dc4016453%2F753abeea-e133-48cf-b04f-08d09928e84c%2FScreenshot_2024-04-26_at_8.45.49_AM.png?table=block&id=398055b6-4dd9-4885-9285-ab6357d128b7&cache=v2)

![notion image](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F085e8ad8-528e-47d7-8922-a23dc4016453%2F8049f642-8b0b-4c35-9702-5e7a51efcc25%2FScreenshot_2024-04-26_at_8.46.09_AM.png?table=block&id=157afb80-8d3e-42ae-a46b-938a9bf5ff09&cache=v2)

Hello world with strings

![notion image](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F085e8ad8-528e-47d7-8922-a23dc4016453%2Fd8de78b8-6bc3-4bfe-951e-ee29e939427f%2FScreenshot_2024-04-26_at_8.36.38_AM.png?table=block&id=ff76988a-50a3-4b86-85a4-c14dea6bb969&cache=v2)

#### Memory in action

```rust
fn main() {
    stack_fn();   // Call the function that uses stack memory
    heap_fn();    // Call the function that uses heap memory
    update_string();  // Call the function that changes size of variable at runtime
}

fn stack_fn() {
    // Declare a few integers on the stack
    let a = 10;
    let b = 20;
    let c = a + b;
    println!("Stack function: The sum of {} and {} is {}", a, b, c);
}

fn heap_fn() {
    // Create a string, which is allocated on the heap
    let s1 = String::from("Hello");
    let s2 = String::from("World");
    let combined = format!("{} {}", s1, s2);
    println!("Heap function: Combined string is '{}'", combined);
}

fn update_string() {
    // Start with a base string on the heap
    let mut s = String::from("Initial string");
    println!("Before update: {}", s);

    // Append some text to the string
    s.push_str(" and some additional text");
    println!("After update: {}", s);
}
```

![[Pasted image 20250427155920.png]]

# Ownership

![[Pasted image 20250427194312.png]]

#### Passing stack Variables inside functions

```rust
fn main() {
		let x = 1; // crated on stack
		let y = 3; // created on stack
    println!("{}", sum(x, y));
    println!("Hello, world!");
}

fn sum(a: i32, b: i32) -> i32 {
    let c = a + b;
    return c;
}
```

This might sound trivial since if the function is popped of the stack, all variables go away with it, but check the next example

![[Pasted image 20250427195248.png]]

## Heap variables

> Any time the owner of a `heap variable` goes out of scope, the value is de-allocated from the heap.

#### Passing strings (heap variables) to functions as args

```Rust
fn main() {
    let s1 = String::from("hello");
    let s2 = s1;
    println!("{}", s1); // This line would cause a compile error because ownership has been moved.
}
```

![notion image](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F085e8ad8-528e-47d7-8922-a23dc4016453%2F165f9686-4e14-4160-bde4-08c3340c14e3%2Ftrpl04-04.svg?table=block&id=d5d261e4-d8f5-48fb-b92f-fe2bbcfc2306&cache=v2)

Another example of the same thing -

```Rust
fn main() {
    let my_string = String::from("hello");
    takes_ownership(my_string);
    println!("{}", my_string); // This line would cause a compile error because ownership has been moved.
}

fn takes_ownership(some_string: String) {
    println!("{}", some_string); // `some_string` now owns the data.
}
```

At any time, each value can have a `single` owner. This is to avoid memory issues like

1. Double free error.

2. Dangling pointers.

#### Fix?

Clone the string

```rust
fn main() {
    let s1 = String::from("hello");
    let s2 = s1.clone();
    println!("{}", s1); // Compiles now
}
```

# **Borrowing and References**

#### References

References mean giving the address of a string rather than the ownership of the string over to a function

For example

```rust
fn main() {
    let mut s1 = String::from("Hello");
    let s2 = &s1;

    println!("{}", s2);
    println!("{}", s1);    // This is valid, The first pointer wasn't invalidated
}
```

![notion image](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F085e8ad8-528e-47d7-8922-a23dc4016453%2F01536509-0350-4ee4-ba6e-fcb838cc32ae%2FScreenshot_2024-04-26_at_9.27.08_AM.png?table=block&id=d2216029-bfeb-41f7-81b4-a04762520203&cache=v2)

#### Borrowing

You can transferring ownership of variables to fns. By passing a reference to the string to the function `take_ownership`, the ownership of the string remains with the original variable, in the `main`function. This allows you to use `my_string`again after the function call.

```rust
fn main() {
    let my_string = String::from("Hello, Rust!");
    takes_ownership(&my_string);  // Pass a reference to my_string
    println!("{}", my_string);    // This is valid because ownership was not transferred
}

fn takes_ownership(some_string: &String) {
    println!("{}", some_string);  // some_string is borrowed and not moved
}
```

#### Mutable references

What if you want a function to `update` the value of a variable?

```Rust
fn main() {
    let mut s1 = String::from("Hello");
    update_word(&mut s1);
    println!("{}", s1);
}

fn update_word(word: &mut String) {
    word.push_str(" World");
}
```

Try having more than one mutable reference at the same time -

```rust
fn main() {
    let mut s1 = String::from("Hello");
    let s2 = &mut s1;
    update_word(&mut s1);
    println!("{}", s1);
    println!("{}", s2);
}

fn update_word(word: &mut String) {
    word.push_str(" World");
}
```

#### Rules of borrowing

- There can me many `immutable references` at the same time

```rust
fn main() {
    let  s1 = String::from("Hello");
    let s2 = &s1;
    let s3 = &s1;

    println!("{}", s1);
    println!("{}", s2);
    println!("{}", s3);
}
// No errors
```

- There can be only one `mutable reference` at a time

```rust
fn main() {
    let mut s1 = String::from("Hello");
    let s2 = &mut s1;
    let s3 = update_word(&mut s1);

    println!("{}", s1);
    println!("{}", s2);
}

fn update_word(word: &mut String) {
    word.push_str(" World");
}
// Error
```

- If there is a `mutable reference` , you can’t have another immutable reference either.

```Rust
fn main() {
    let mut s1 = String::from("Hello");
    let s2 = &mut s1;
    let s3 = &s1;

    println!("{}", s1);
    println!("{}", s2);
}

fn update_word(word: &mut String) {
    word.push_str(" World");
}
```

This to avoid any data races/inconsistent behaviour

If someone makes an `immutable reference` , they don’t expect the value to change suddenly

If more than one `mutable references` happen, there is a possibility of a data race and synchronization issues

💡

Two good things to discuss at this point should be **but we’re going to ignore it for now 1.** `Lifetimes`
**2. String slices (&str)**

---

# Structs

Structs in rust let you structure data together. Similar to `objects` in javascript

```rust
struct User {
    active: bool,
    username: String,
    email: String,
    sign_in_count: u64,
}

fn main() {
    let user1 = User {
        active: true,
        username: String::from("someusername123"),
        email: String::from("someone@example.com"),
        sign_in_count: 1,
    };
    print!("User 1 username: {:?}", user1.username);
}
```

Can you guess if they are stored in `stack` or `heap`?

![notion image](https://www.notion.so/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F085e8ad8-528e-47d7-8922-a23dc4016453%2F6f31247f-792b-4c8e-b966-351b2d9e4a7a%2FScreenshot_2024-04-26_at_10.04.21_AM.png?table=block&id=e45bc154-8082-42a8-b9d2-c981eeb53260&cache=v2)

#### Side quest - Learning about traits

Try running experiments around

1. `mutable` and `immutable` references

2. Ownership transfer

for structs

#### Code 1 - Only stack types in the struct

```rust
struct User {
    active: bool,
    sign_in_count: u64,
}

fn main() {
    let mut user1 = User {
        active: true,
        sign_in_count: 1,
    };

    print_name(user1);
    print!("User 1 username: {}", user1.active); // Error - can not use borrowed value
}

fn print_name(user1: User) {
    print!("User 1 username: {}", user1.active);
}
```

Add the `copy trait`

```Rust
#[derive(Copy, Clone)]
struct User {
    active: bool,
    sign_in_count: u64,
}

fn main() {
    let mut user1 = User {
        active: true,
        sign_in_count: 1,
    };

    print_name(user1);
    print!("User 1 username: {}", user1.active); // Error goes away because user1 is copied
}

fn print_name(user1: User) {
    print!("User 1 username: {}", user1.active);
}
```

#### Code 2 - Add strings

```Rust
struct User {
    active: bool,
    sign_in_count: u64,
    username: String,
}

fn main() {
    let mut user1 = User {
        active: true,
        sign_in_count: 1,
        username: "harkirat".to_string()
    };

    change_name(user1);
    print!("User 1 username: {}", user1.active); // Error - can not use borrowed value
}

fn change_name(user1: User) {
    print!("User 1 username: {:?}", user1.active);
}
```

Try adding the `Copy trait` (you wont be able to because strings don't implement them, use `clone` trait instead)

```Rust
#[derive(Clone)]
struct User {
    active: bool,
    sign_in_count: u64,
    username: String,
}

fn main() {
    let mut user1 = User {
        active: true,
        sign_in_count: 1,
        username: "harkirat".to_string()
    };

    change_name(user1.clone());
    print!("User 1 username: {}", user1.active); // Error - can not use borrowed value
}

fn change_name(user1: User) {
    print!("User 1 username: {:?}", user1.active);
}
```

---

# Implementing structs

you can also `implement structs`, which means you can attach functions to instances of struts.

(Very similar to classes in TS)

```Rust
struct Rect {
   width: u32,
   height: u32,
}

impl Rect {
    fn area(&self) -> u32 {
         self.width * self.height
    }
    fn perimeter(&self) -> u32 {
    2*(Rect.area)
    }
}

fn main() {
    let rect = Rect {
        width: 30,
        height: 50,
    };
    print!("The area of the rectangle is {}", rect.area());
}
```

---

# Enums

Enums in rust are similar to enums in Typescript. They allow you to define a type by enumerating its possible *variants*.

Ref - [https://doc.rust-lang.org/book/ch06-01-defining-an-enum.html](https://doc.rust-lang.org/book/ch06-01-defining-an-enum.html)

```Rust
enum Direction {
    North,
    East,
    South,
    West,
}

fn main() {
    let my_direction = Direction::North;
    let new_direction = my_direction; // No error, because Direction is Copy
    move_around(new_direction);
}

fn move_around(direction: Direction) {
    // implements logic to move a character around
}
```

Why not simply do the following -

```RUst
fn main() {
    move_around("north".to_string());
}

fn move_around(direction: String) {
    if direction == "north" {
        println!("Moving North");
    }
}
```

Because we don’t enforce the `4` variants of directions. So this is much looser than strictly allowing only 4 variants for direction

### Enums with values

```rust
enum Shape {
    Circle(f64),
    Square(f64),
    Rectangle(f64, f64),
}


fn calculate_area(shape: Shape) -> f64 {
    return 0
}

fn main() {
    // Create instances of different shapes
    let circle = Shape::Circle(5.0);
    let square = Shape::Square(4.0);
    let rectangle = Shape::Rectangle(3.0, 6.0);

}
```

We will be implementing the `calcuate_area` function in the `pattern matching` section

---

# Pattern matching

Let you pattern match across various variants of an enum and run some logic

```Rust
// Define an enum called Shape
enum Shape {
    Circle(f64),  // Variant with associated data (radius)
    Square(f64),  // Variant with associated data (side length)
    Rectangle(f64, f64),  // Variant with associated data (width, height)
}

// Function to calculate area based on the shape
fn calculate_area(shape: Shape) -> f64 {
    match shape {
        Shape::Circle(radius) => std::f64::consts::3.14 * radius * radius,
        Shape::Square(side_length) => side_length * side_length,
        Shape::Rectangle(width, height) => width * height,
    }
}

fn main() {
    // Create instances of different shapes
    let circle = Shape::Circle(5.0);
    let square = Shape::Square(4.0);
    let rectangle = Shape::Rectangle(3.0, 6.0);

    // Calculate and print the areas
    println!("Area of circle: {}", calculate_area(circle));
    println!("Area of square: {}", calculate_area(square));
    println!("Area of rectangle: {}", calculate_area(rectangle));
}
```

# Error handling

Different languages have different ways to handle errors. Javascript, for example, has the concept of try catch blocks

```Rust
try {
    const data = fs.readFileSync('example.txt', 'utf8');
    console.log("File content:", data);
} catch (err) {
    console.error("Error reading the file:", err);
}
```

The reason we put the code inside a try catch block is that `reading a file` is `unpredictable`. The file might not exist, the file might be locked by another process, and hence there is a possibility of this code `throwing an error`

The same is true for a rust program trying to access a file. But the way rust does error handling is slightly different

#### Result Enum

```Rust
enum Result<T, E> {
    Ok(T),
    Err(E),
}
```

If you look at the code above, it is an enum (with generic types)

This enum is what a function can return/returns when it has a possibility of throwing an error

For example

```Rust
use std::fs::File;

fn main() {
	let greeting_file_result = fs::read_to_string("hello.txt");
}
```

Notice the type of `greeting_file_result` in VSCode

It returns an enum that looks as follows. It’s an enum with the `Ok` variant having a string value and `Err` variant having an Error value

```Rust
enum Result{
    Ok(String),
    Err(Error),
}
```

Complete code

```Rust
use std::fs;

fn main() {
    let greeting_file_result = fs::read_to_string("hello.txt");

    match greeting_file_result {
        Ok(file_content) => {
            println!("File read successfully: {:?}", file_content);
        },
        Err(error) => {
            println!("Failed to read file: {:?}", error);
        }
    }
}
```

Incase you write a function yourself, you can also return a `Result` from it. As the name suggests, `Result` holds the `result` of a function call that might lead to an error.

### Unwraps

Incase you are ok with runtime errors (crashing the process while it runs if an error happens), then you can `unwrap` a `Result`

```javascript
use std::fs;

fn main() {
    let greeting_file_result = fs::read_to_string("hello.txt");
    print!("{}", greeting_file_result.unwrap());
}
```

### Returning a custom error

```javascript
use core::fmt;
use std::{fmt::{Debug, Formatter}, fs};

pub struct FileReadError {

}

fn main() {
    let contents = read_file("hello.txt".to_string());
    match contents {
        Ok(file_content) => {
            println!("File content: {}", file_content);
        },
        Err(error) => {
            println!("Error reading file: {:?}", error);
        }
    }
}

fn read_file(file_path: String) -> Result<String, FileReadError> {
    let greeting_file_result = fs::read_to_string("hello.txt");
    match greeting_file_result {
        Ok(file_content) => {
            Ok(file_content)
        },
        Err(error) => {
            let err = FileReadError {};
            Err(err)
        }
    }
}
```

# Option enum

Ref - [https://viblo.asia/p/billion-dollar-mistake-RQqKLopr57z](https://viblo.asia/p/billion-dollar-mistake-RQqKLopr57z)

The Option enum was introduced in Rust to handle the concept of nullability in a safe and expressive way. Unlike many programming languages that use a null or similar keyword to represent the absence of a value, Rust doesn't have null.

```javascript
pub enum Option<T> {
    None,
    Some(T),
}
```

If you ever have a function that should return null, return an `Option` instead.

For example

```javascript
fn find_first_a(s: String) -> Option<i32> {
    for (index, character) in s.chars().enumerate() {
        if character == 'a' {
            return Some(index as i32);
        }
    }
    return None;
}

fn main() {
    let my_string = String::from("raman");
    match find_first_a(my_string) {
        Some(index) => println!("The letter 'a' is found at index: {}", index),
        None => println!("The letter 'a' is not found in the string."),
    }
}
```

# Collections

- Rust’s standard library includes a number of very useful data structures called collections. Most other data types represent one specific value, but collections can contain multiple values. the data these collections point to is stored on the heap.

# Vectors

Vectors allow you to store more than one value in a single data structure that puts all the values next to each other in memory.

```Rust
	fn main (){
	let mut vec = Vec::new();
		vec.puch(1);
		vec.push(2);

	println!("{:?}" vec);
	}
```

Q: Write a function that takes a vector as an input and returns a vector with even values?

```Rust
fn main() {
    let mut vec = Vec::new();
    vec.push(1);
    vec.push(2);
    vec.push(3);

    println!("{:?}", even_filter(vec));
}



fn even_filter(vec: Vec<i32>) -> Vec<i32> {
    let mut new_vec = Vec::new();
    for val in vec {
        if val % 2 == 0 {
            new_vec.push(val);
        }
    }
    return new_vec;
}


```

## Initialising using rust macros

![[Pasted image 20250429160536.png]]

_Defining the type of the vector as a generic._
``
![[Pasted image 20250429160805.png]]

# HashMap

Hashmaps stores a key value pair in rust. Similar to objects in JS Dict in Python HashMaps in Java.

Methods

1. Insert
2. Get
3. Remove
4. Clear
5. ...

Q: Write a function that takes a vector of tuples (each tuple containing a key and a value) and returns a Hashmap where the keys are the unique keys from the input tuples and the values are vectors of all corresponding values associated with each key

![[Pasted image 20250430122059.png]]

Q: Write a function that takes a vector of tuples (each tuple containing a key and a value) and returns a Hash map where the keys are the unique keys from the input tuples and the values are vectors of all corresponding values associated with each key

![[Pasted image 20250430122118.png]]

# Iterators

The iterator pattern allows you to perform some task on a sequence of items in turn. An iterator is responsible for the logic of iterating over each item and determining when the sequence has finished. When you use iterators, you don’t have to reimplement that logic yourself.

In Rust, iterators are *lazy* , meaning they have no effect until you call methods that consume the iterator to use it up. For example, the code in Listing 13-10 creates an iterator over the items in the vector `v1` by calling the `iter` method defined on `Vec<T>`. This code by itself doesn’t do anything useful.

Filename: src/main.rs

```Rust
let v1 = vec![1,2,3];

let v1_iter = v1.iter();
```

# Macro

A macro is kinda a funtion but not a funtion it completely depends how the macro

