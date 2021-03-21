pragma solidity ^0.5.0;

import "../ERC20.sol";
import "../ERC20Detailed.sol";
import "../ERC20Mintable.sol";
import "../ERC20Burnable.sol";

contract FUNREWARDS is ERC20, ERC20Detailed, ERC20Mintable, ERC20Burnable {
  // Initialize constructor of inherited class ERC20Detailed 
  // https://www.geeksforgeeks.org/solidity-constructors/
  constructor(string memory name, string memory symbol, uint8 decimals) public ERC20Detailed(name, symbol, decimals) {}
}