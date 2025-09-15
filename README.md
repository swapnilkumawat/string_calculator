# String Calculator – Ruby Implementation

This project is a Ruby implementation of the **String Calculator**, a coding exercise designed to practice **Test-Driven Development (TDD)**. The goal of this assignment is to build a calculator that sums numbers given in a string format, while following good coding practices such as writing clean, testable, and maintainable code.

---

## 📋 Problem Description

Implement a `StringCalculator` class with a method `add` that takes a string of numbers and returns their sum.

### Requirements:
- The input is a string containing numbers separated by commas or newlines.
- An empty string should return `0`.
- A single number should return its integer value.
- Two or more numbers should return the correct sum.
- The input can optionally specify a custom delimiter in the format `//[delimiter]\n[numbers…]`.
- Negative numbers should raise an error with a message listing all negative numbers.
  
---

## ✅ Features Implemented

✔ Returns `0` for empty input  
✔ Handles a single number  
✔ Handles multiple numbers separated by commas  
✔ Supports newlines as separators  
✔ Supports custom delimiters like `//;\n1;2`  
✔ Detects negative numbers and raises an error with details  
✔ Uses TDD practices to ensure correctness and maintainability  


## Setup & Run

1. Clone the repository
   ```bash
   git clone git@github.com:swapnilkumawat/string_calculator.git
   cd string_calculator
2. Install dependencies:
    ```bash
    bundle install
3. Run the test suite:
    ```bash
    bundle exec rspec