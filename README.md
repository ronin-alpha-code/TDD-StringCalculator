# TDD-StringCalculator
## Overview

This project implements a String Calculator using Test-Driven Development (TDD) principles. The `lib/string_calculator` module contains the core logic for the calculator, while the `test` directory includes unit tests to ensure the functionality is robust and adheres to the requirements.

### Features
- Add numbers from a comma-separated string.
- Handle an empty string as input, returning 0.
- Support new line delimeter and any white space.
- Throw exceptions for invalid inputs i.e negative numbers.
- Skips if number is greater than 1000.

## Setup Instructions

1. **Clone the Repository**:
  ```bash
  git clone /home/abhishek-jaiswal/Desktop/work/StringCalculator
  cd StringCalculator
  ```

2. **Install Dependencies**:
  Ensure you have Ruby installed. Then, install the required gems:
  ```bash
  bundle install
  ```

3. **Run Tests**:
  Execute the test suite to verify the implementation:
  ```bash
  rake
  ```

4. **Run the Calculator**:
  You can use the `lib/string_calculator.rb` file to test the calculator manually.

## Test Cases

The `test` directory includes the following test cases:
- Adding numbers from a string (e.g., `"1,2,3"` returns `6`).
- Handling an empty string (e.g., `""` returns `0`).
- Supporting new line delimiter or any white spave (e.g., `"1\n2,3"` returns `6`).
- Validating input and raising exceptions for invalid formats. (e.g., `"-1,2,3"` retruns `Negatives Not Allowed.`)
- Skips the number greater than 1000. (e.g., `"1001,2"` returns `2`)


Refer to the `test/string_calculator_spec.rb` file for detailed test scenarios.

## Note
`Custom Delimeters are not covered.`