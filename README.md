Here's a **README** for your String Calculator TDD Kata project:

---

# String Calculator TDD Kata

This project implements the **String Calculator** as a coding exercise, following the principles of **Test-Driven Development (TDD)**. It is built to demonstrate clean, readable, and testable code while adhering to software craftsmanship standards.

---

## Features

- Handles empty strings and returns `0`.
- Sums up one or more numbers separated by commas.
- Supports newlines as delimiters (e.g., `1\n2,3`).
- Allows custom delimiters (e.g., `//;\n1;2` where the delimiter is `;`).
- Throws an exception for negative numbers and lists all negative values in the error message.

---

## Method Signature

```plaintext
int add(string numbers)
```

### Examples

| Input                  | Output | Explanation                                                                 |
|------------------------|--------|-----------------------------------------------------------------------------|
| `""`                  | `0`    | An empty string returns 0.                                                  |
| `"1"`                 | `1`    | A single number returns the number itself.                                  |
| `"1,5"`               | `6`    | Two numbers separated by a comma are summed.                                |
| `"1\n2,3"`            | `6`    | Newlines between numbers are treated as delimiters.                         |
| `"//;\n1;2"`          | `3`    | Custom delimiters can be specified in the format `//[delimiter]\n[numbers]`.|
| `"1,-2,3,-5"`         | Error  | Throws: `negative numbers not allowed: -2,-5`.                              |

---

## Setup and Usage

### Prerequisites

- A development environment set up for your programming language of choice.
  - Example: Ruby, Python, JavaScript, Java, etc.
- A testing framework for the language.
  - Example: RSpec for Ruby, unittest/pytest for Python, Jest for JavaScript.

### Running the Tests

1. Clone the repository:
   ```bash
   git clone https://github.com/rajputlakhveer/incubyte_assessment.git
   cd string-calculator-tdd
   ```

2. Install dependencies (if any):
   ```bash
   # Example for Ruby:
   bundle install
   ```

3. Run the tests:
   ```bash
   # Example for Ruby:
   bundle exec rspec
   ```

   Replace the command above with the test runner command for your chosen language.

---

## Code Design Principles

1. **Test-Driven Development (TDD):**  
   - Each feature was implemented following the TDD cycle:
     - Write a failing test.
     - Write just enough code to pass the test.
     - Refactor the code for readability and maintainability.

2. **Commit History:**  
   - Changes are committed frequently to show the evolution of the codebase.

3. **Error Handling:**  
   - The `add` method validates input and throws meaningful exceptions for invalid cases (e.g., negative numbers).

---

## Repository Structure

```
string-calculator-tdd/
├── lib/                   # Source code for the String Calculator
├── spec/                  # Tests (use "test/" for other languages)
├── README.md              # Documentation
├── Gemfile (or equivalent) # Dependencies (if applicable)
```

---

## How to Contribute

Feel free to fork this repository, experiment, and improve the implementation. Pull requests are welcome!

1. Fork the repository.
2. Create a new branch: `git checkout -b feature/your-feature`.
3. Commit your changes: `git commit -m "feat: describe your feature"`.
4. Push the branch: `git push origin feature/your-feature`.
5. Submit a pull request.

---

## License

This project is licensed under the MIT License.

---

## Acknowledgments

This implementation is based on the **String Calculator TDD Kata** exercise by Roy Osherove.  
