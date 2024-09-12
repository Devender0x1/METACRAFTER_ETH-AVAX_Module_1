#Attendance Simulation Smart Contract
This smart contract implements a simple attendance simulation on the Ethereum blockchain using Solidity. The contract allows users to cast their attendance, ensuring they meet the age requirement and have not already present.
## Prerequisites
* Solidity version ^0.8.18.
* An Ethereum development environment such as Hardhat, Truffle, or Remix.
## Contract Explanation
### State Variables
The attendanceCount mapping tracks the number of student each student has cast, while the hasVoted mapping keeps a record of whether a voter has already voted or not.
### Functions
* function attendance(string memory student, uint _marks) external 

This function allows a student to cast their student. It first verifies the marks of the student using the marksVerify function. Then, it checks if the student has already student using the present mapping. If the student has not marked present before and meets the marks requirement, the function increments the student count for the student and sets the student's status to "present" in the present mapping. Finally, it uses an assertion to ensure the student count is incremented correctly.

* marksVerify(uint _marks) public pure

This function checks if the student meets the age requirement of 50 marks or greater. If the student's marks is less than 50, the function reverts with the message "Student is not eligible for attendance". This function is marked as pure since it does not read or modify the state.
## Usage
Deploy the contract to the Ethereum network using an Ethereum development environment like Remix. After deployment, you can interact with the contract by calling the attendance function with the student's identifier and marks.
## Error handling
The contract uses require, revert, and assert statements to handle errors and validate conditions throughout the attendance process.
### Function with error handling
The attendance  function handles errors by calling the marksVerify function to ensure the student meets the marks requirement. It then checks if the student has already present using require and ensures the attendance count is incremented correctly with assert. The marksVerify function verifies the marks of the student and reverts the transaction if the student marks is under 50.
### Error handling statements
* require: Ensures conditions are met before proceeding. If the condition is not met, it reverts the transaction with an error message: "You have marked present".
* revert: Explicitly reverts the transaction with an error message if a condition is not satisfied: "Student is eligible for attendance".
* assert: Checks for conditions that should never be false. If the condition is false, it indicates a critical error and reverts the transaction to ensure the student count is valid.
## Author
Devender Singh Dhankhar
