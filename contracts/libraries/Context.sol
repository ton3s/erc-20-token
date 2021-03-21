pragma solidity ^0.5.0;

// Track the sender and data that is sent while creating
// the erc-20 token with our contracts
contract Context {
  
  // Can only be activated through inheritence
  constructor() internal {}

  // Address of the person/contract deploying the erc-20 token
  function _msgSender() internal view returns (address payable) {
    return msg.sender;
  }

  // Data value that is passed in by the person/address that is deploying the erc-20 token
  function _msgData() internal view returns (bytes memory) {
    this; // silence state mutability
    return msg.data;
  }
}