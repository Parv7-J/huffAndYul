// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract HorseStoreYul {
    uint256 numberOfHorses;

    function updateNumberOfHorses(uint256 newNumberOfHorses) public {
        assembly {
            sstore(numberOfHorses.slot, newNumberOfHorses)
        }
    }

    function readNumberOfHorses() public view returns (uint256) {
        assembly {
            let num := sload(numberOfHorses.slot)
            mstore(0, num)
            return(0, 0x20)
        }
    }
}
