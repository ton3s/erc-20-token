pragma solidity ^0.5.0;

import "./ERC20.sol";
import "./MinterRole.sol";

contract ERC20Mintable is ERC20, MinterRole {
  function mint(address account, uint256 amount) public onlyMinter returns (bool) {
    _mint(account, amount);
    return true;
  }
}

