pragma solidity ^0.5.0;

import "./libraries/Context.sol";
import "./libraries/Roles.sol";

contract MinterRole is Context {
  // Create a role struct that is dereived from the library
  using Roles for Roles.Role;

  // Logging events
  event MinterAdded(address indexed account);
  event MinterRemoved(address indexed account);

  Roles.Role private _minters;

  // Only the sender/caller of the contract can mint tokens
  constructor() internal {
    _addMinter(_msgSender());
  }

  // Add account that can mint tokens
  function _addMinter(address account) internal {
    _minters.add(account);
    emit MinterAdded(account);
  }

  // Check if account can mint tokens
  function _isMinter(address account) public view returns (bool) {
    return _minters.has(account);
  }

  modifier onlyMinter() {
    require(_isMinter(_msgSender()), "MinterRole: caller does not have the minter role");
    _; // Function body is inserted here
  }

}