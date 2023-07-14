// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingContract {
    function checkValue(uint256 value) external pure returns (string memory) {
        require(value > 0, " REQUIRE Value must be greater than 0");
        
        if (value == 42) {
            revert("REVERT Value cannot be 42");
        }

        assert(value < 100);

        return "Value passes all checks";
    }
}
