# Simple Calculator in R

# Function to perform addition
add <- function(a, b) {
  return(a + b)
}

# Function to perform subtraction
subtract <- function(a, b) {
  return(a - b)
}

# Function to perform multiplication
multiply <- function(a, b) {
  return(a * b)
}

# Function to perform division
divide <- function(a, b) {
  if (b != 0) {
    return(a / b)
  } else {
    return("Error: Division by zero!")
  }
}

# Main Calculator Function
calculator <- function() {
  cat("Simple Calculator in R\n")
  cat("----------------------\n")

  # Get user input
  num1 <- as.numeric(readline("Enter the first number: "))
  num2 <- as.numeric(readline("Enter the second number: "))
  
  # Get operation choice
  cat("Select an operation:\n")
  cat("1. Addition\n")
  cat("2. Subtraction\n")
  cat("3. Multiplication\n")
  cat("4. Division\n")
  choice <- as.numeric(readline("Enter the operation number (1-4): "))

  # Perform the selected operation
  result <- switch(
    choice,
    add(num1, num2),
    subtract(num1, num2),
    multiply(num1, num2),
    divide(num1, num2)
  )

  # Display the result
  cat("Result: ", result, "\n")
}

# Run the calculator
calculator()
