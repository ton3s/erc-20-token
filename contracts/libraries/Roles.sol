pragma solidity ^0.5.0;

// Check who as access
// Give and remove access
library Roles {
  
  struct Role {
    mapping(address => bool) bearer;
  }

  // Check if an account has a particular role
  function has(Role storage role, address account) internal view returns (bool) {
    require(account != address(0), "Roles: account is the zero address");
    return role.bearer[account];
  }

  function add(Role storage role, address account) internal {
    require(!has(role, account), "Roles: account already assigned to the role");
    role.bearer[account] = true;
  }

  function remove(Role storage role, address account) internal {
    require(has(role, account), "Roles: account is not assigned to the role");
    role.bearer[account] = true;
  }

}