# String Calculator

A simple string calculator built using **Ruby on Rails** for the backend and **React.js** for the frontend, with a focus on **Test-Driven Development (TDD)**. This project implements the **String Calculator Kata** and exposes an API to calculate the sum of a string of comma-separated numbers, while also handling custom delimiters and edge cases like negative numbers.

## Features

- **Basic String Calculation**: Sums a string of comma-separated numbers.
- **Supports Newlines Between Numbers**: Allows numbers to be separated by newlines as well as commas.
- **Custom Delimiters**: Supports custom delimiters defined at the start of the string.
- **Negative Number Handling**: Throws an exception if negative numbers are provided in the string.
- **API Access**: The calculator can be accessed through an API exposed by a Ruby on Rails backend.
- **Frontend Interface**: Simple React.js UI to interact with the calculator.

---

## Installation

### Backend (Ruby on Rails)

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/string-calculator.git
   cd string-calculator
   ```

2. **Install dependencies**:
   ```bash
   bundle install
   ```

3. **Start the Rails server**:
   ```bash
   rails server
   ```

   Your backend API should now be running on `http://localhost:3000`.

---

### Frontend (React.js)

1. **Navigate to the frontend folder**:
   ```bash
   cd frontend
   ```

2. **Install dependencies**:
   ```bash
   npm install
   ```

3. **Start the React development server**:
   ```bash
   npm start
   ```

   Your React app should now be running on `http://localhost:3001`.

---

## Usage

### Backend API

- **Endpoint**: `POST /calculate`
- **Request Body**: A JSON object containing a `numbers` string.

  Example:

  ```json
  {
    "numbers": "1,2,3"
  }
  ```

- **Response**: The sum of the numbers.

  Example:

  ```json
  {
    "result": 6
  }
  ```

### Frontend

The frontend provides a simple input box where users can enter the numbers in string format and click the **Calculate** button to trigger the calculation. The result is displayed dynamically on the page.

1. **Input Field**: Enter a comma-separated string of numbers (or numbers separated by newlines).
2. **Calculate Button**: Click to trigger the calculation.
3. **Result**: The sum of the numbers is displayed below the input field.

---

## Features

- **Handles empty input**: Returns 0 for an empty string.
- **Supports multiple delimiters**: Supports a default comma delimiter and custom delimiters defined at the start of the string (e.g., `//;\n1;2`).
- **Negative numbers handling**: Throws an error with a message listing all negative numbers if they are included in the input.
  
---

## Example

### Example 1: Basic Calculation

- **Input**: `"1,5"`
- **Output**: `6`

### Example 2: Newline Separated Numbers

- **Input**: `"1\n2,3"`
- **Output**: `6`

### Example 3: Custom Delimiters

- **Input**: `"//;\n1;2"`
- **Output**: `3`

### Example 4: Negative Numbers

- **Input**: `"1,-2,3"`
- **Output**: `Error: Negative numbers not allowed: -2`

---

## Running Tests

To run tests using **RSpec** for the backend:

```bash
bundle exec rspec
```

For frontend tests, you can run:

```bash
npm test
```

---

## Contribution

We welcome contributions! If you want to contribute to this project, feel free to:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a Pull Request.

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgements

- Inspired by the **String Calculator Kata**.

---

This should give your repository a comprehensive yet straightforward README that explains the functionality, usage, installation, and contribution guidelines. Let me know if you'd like any further customizations!