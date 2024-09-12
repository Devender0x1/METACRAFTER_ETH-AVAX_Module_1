// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract voting_simulation {
    mapping(string => uint) public attendanceCount;
    mapping(string => bool) public present;

    function attendance(string memory student, uint _marks) external {
        marksVerify(_marks);

        require(!present[student], "You have marked present");

        attendanceCount[student] += 1;
        present[student] = true;

        assert(attendanceCount[student] > 0);
    }

    function marksVerify(uint _marks) public pure {
        if (_marks> 50) {
            revert("Student is eligible for attendance");
        }
    }
}
