Attendance System Smart Contract
This contract tracks whether a user has marked their attendance and ensures they meet an age requirement before they can do so.

State Variables
attendanceCount: Tracks the number of people who have marked their attendance.
hasMarkedAttendance: Maps an address to a boolean to track if the user has already marked their attendance.
Functions
markAttendance(string memory personName, uint _age):
Allows a user to mark their attendance.
First checks the user's age via ageVerify().
Then checks whether the user has already marked attendance.
If the age and attendance status are valid, increments the attendance count and marks the user as "attended".
ageVerify(uint _age):
Verifies that the user is 18 years or older.
If not, it reverts with an error message: "You are not eligible to mark attendance".
Error Handling:
require(): Ensures a condition is met before proceeding. If not, it reverts the transaction with a message.
revert(): Explicitly reverts if the age requirement is not met.
assert(): Checks that the attendance count is incremented correctly.
