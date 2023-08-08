// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingContract {
    uint public number;

    function requireStatement(uint256 _number) public pure returns (uint256) {
        require(_number >= 0, "Number should be positive");
        return _number;
    }

    function assertStatement() public view returns (uint256) {
        assert(number <= 100);
        return number;
    }

    function revertStatement(uint256 _i) public pure {
        require(_i >= 0, "Input should be positive");
        
        if (_i < 10) {
            revert("Input should be greater than or equal to 10");
        }
    }
}
