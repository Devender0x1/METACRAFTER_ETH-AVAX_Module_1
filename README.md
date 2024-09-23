# Student Age Finder Smart Contract

This smart contract allows users to register students with their birth years and retrieve their current age based on the stored birth year. It provides a simple way to keep track of student ages on the Ethereum blockchain using Solidity.

## Prerequisites
* Solidity version ^0.8.0.
* An Ethereum development environment such as Hardhat, Truffle, or Remix.

## Contract Explanation

### State Variables
The `studentBirthYears` mapping stores the birth year of each registered student by name. The contract ensures that each student is uniquely identified by their name.

### Functions

#### 1. `registerStudent(string memory _name, uint256 _birthYear) public`
This function allows a student to be registered with their name and birth year. It ensures that the student's name has not already been registered before assigning the birth year.

* **Parameters**:
    - `_name`: The student's name (string).
    - `_birthYear`: The student's birth year (uint256).

* **Error Handling**:
    - Uses `require` to ensure the student is not already registered. If the name is already in the system, the transaction is reverted with the message "Student already exists".

#### 2. `getStudentAge(string memory _name) public view returns (uint256)`
This function calculates the student's current age based on the current block timestamp and the stored birth year.

* **Parameters**:
    - `_name`: The student's name (string).

* **Returns**:
    - The student's current age (uint256).

* **Error Handling**:
    - Uses `require` to ensure the student is already registered. If the student is not found, the transaction is reverted with the message "Student not found".

### Age Calculation
The current year is calculated by converting the block timestamp (Unix time) into years. The birth year of the student is then subtracted from the current year to determine the student's age.

## Usage
1. **Deploy the Contract**: Use an Ethereum development environment such as Remix to compile and deploy the contract to a test network.
2. **Register a Student**: After deployment, call the `registerStudent` function with a student's name and birth year to register them in the contract.
    ```solidity
    registerStudent("John Doe", 2005);
    ```
3. **Retrieve the Student's Age**: Use the `getStudentAge` function to retrieve the age of a registered student.
    ```solidity
    getStudentAge("John Doe");
    ```

## Error Handling

The contract uses `require` statements to validate conditions and handle errors during the registration and age retrieval process.

### Function with Error Handling
The `registerStudent` function checks whether the student is already registered using the `require` statement, and the `getStudentAge` function verifies that the student exists in the system before calculating the age.

### Error Handling Statements
* **require**: Ensures conditions are met before proceeding. If the condition fails:
    - In `registerStudent`: "Student already exists".
    - In `getStudentAge`: "Student not found".


## Author
Devender Singh Dhankhar
