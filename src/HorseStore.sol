// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.19;

contract HorseStore {
    uint256 numberOfHorses;

    function getNumberOfHorses() public view returns (uint256) {
        return numberOfHorses;
    }

    function updateNumberOfHorses(uint256 _newNumberOfHorses) public {
        numberOfHorses = _newNumberOfHorses;
    }
}
