// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentAgeFinder {
    mapping(string => uint256) private studentBirthYears;

    function registerStudent(string memory _name, uint256 _birthYear) public {
        require(studentBirthYears[_name] == 0, "Student already exists");
        studentBirthYears[_name] = _birthYear;
    }

    function getStudentAge(string memory _name) public view returns (uint256) {
        require(studentBirthYears[_name] != 0, "Student not found");
        uint256 currentYear = (block.timestamp / 365 days) + 1970;
        return currentYear - studentBirthYears[_name];
    }
}
