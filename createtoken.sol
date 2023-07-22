// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    string public tokenName = "SATYVARTH";
    string public tokenAbbreviation = "SAR";
    uint256 public totalSupply = 0;
    mapping(address => uint256) public balances;

    function mint(address _address, uint256 value) public {
        totalSupply += value;
        balances[_address] += value;
    }

    function burn(address _address, uint256 value) public {
        require(balances[_address] >= value, "Insufficient balance");

        totalSupply -= value;
        balances[_address] -= value;
    }
}
