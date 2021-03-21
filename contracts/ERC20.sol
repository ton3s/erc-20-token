pragma solidity ^0.5.0;

import "./interfaces/IERC20.sol";
import "./libraries/Context.sol";
import "./libraries/SafeMath.sol";

contract ERC20 is Context, IERC20 {

  // Attach SafeMath library to uint256 type
  using SafeMath for uint256;

  // Mapping table of balances for all addresses
  mapping(address => uint256) private _balances;

  // How much can users spend on behalf of other users/smart contracts
  mapping(address => mapping(address => uint256)) private _allowances;

  // Total number of tokens in circulation
  uint256 private _totalSupply;

  function totalSupply() public view returns (uint256) {
    return _totalSupply;
  }

  function balanceOf(address account) public view returns (uint256) {
    return _balances[account];
  }

  function _transfer(address sender, address recipient, uint256 amount) internal {
    // Sender/receiver should not be zero addresses
    require(sender != address(0), "ERC20: transfer from zero address");
    require(recipient != address(0), "ERC20: transfer from zero address");

    // Transfer amount from sender to receiver
    _balances[sender] = _balances[sender].sub(amount);
    _balances[recipient] = _balances[recipient].add(amount);
    emit Transfer(sender, recipient, amount);
  }

  // Transfer amount from sender to receiver
  function transfer(address recipient, uint256 amount) public returns (bool) {
    _transfer(_msgSender(), recipient, amount);
    return true;
  }

  // How many tokens is the spender allowed to spend on behalf of the owner?   
  function allowance(address owner, address spender) public view returns (uint256) {
    return _allowances[owner][spender];
  }

  // Approve a request for a user to spend tokens on behalf of another user
  function _approve(address owner, address spender, uint256 amount) internal {
    // Sender/receiver should not be zero addresses
    require(owner != address(0), "ERC20: approve from zero address");
    require(spender != address(0), "ERC20: approve from zero address");

    _allowances[owner][spender] = amount;
    emit Approval(owner, spender, amount);
  }

  // Approve amount spender can send from owner/sender address
  function approve(address spender, uint256 amount) public returns (bool) {
    _approve(_msgSender(), spender, amount);
    return true;
  }


  function transferFrom(address sender, address recipient, uint256 amount) public returns (bool) {
    // Send amount from sender to the recipient
    _transfer(sender, recipient, amount);
    // Update the amount the recipient can send in the future on behalf of the sender
    _approve(sender, _msgSender(), _allowances[sender][_msgSender()].sub(amount));
    return true;
  }

  // Create tokens and send to an account
  function _mint(address account, uint256 amount) internal {
    require(account != address(0), "ERC20: mint to a zero address");
    _totalSupply = _totalSupply.add(amount);
    _balances[account] = _balances[account].add(amount);
    emit Transfer(address(0), account, amount);
  }

  // Destroy tokens
  function _burn(address account, uint256 amount) internal {
    require(account != address(0), "ERC20: burn from the zero address");
    _balances[account] = _balances[account].sub(amount);
    _totalSupply = _totalSupply.sub(amount);
    emit Transfer(account, address(0), amount);
  }

}