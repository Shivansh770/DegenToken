// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts@4.9.3/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.3/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@4.9.3/access/Ownable.sol";
import "hardhat/console.sol";

contract Degen is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("Degen", "DGN") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function Decimals() public pure returns (uint8) { 
        return 0;
    }

    function GetBalance() external view returns (uint256) { 
            return this.balanceOf(msg.sender);
    }

    function TransferTokens(address receiver, uint256 _value) external { 
        require(balanceOf(msg.sender) >= _value, "You do not have enough Degen Tokens"); 
        approve(msg.sender, _value); transferFrom(msg.sender, receiver, _value);
    }
    function BurnSomeTokens (uint256 _value) public view{ 
        require(balanceOf(msg.sender) >= _value, "You do not have enough Degen Tokens");
    }
}
