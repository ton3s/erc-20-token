pragma solidity ^0.5.0;

import "./libraries/Context.sol";
import "./ERC20.sol";

// Smart contract used for destroying tokens
contract ERC20Burnable is Context, ERC20 {
  function burn(uint256 amount) public {
    _burn(_msgSender(), amount);
  }
}