```
❯ truffle migrate --network rinkeby

Compiling your contracts...
===========================
> Compiling ./contracts/ERC20.sol
> Compiling ./contracts/ERC20Burnable.sol
> Compiling ./contracts/ERC20Combined.sol
> Compiling ./contracts/ERC20Detailed.sol
> Compiling ./contracts/ERC20Mintable.sol
> Compiling ./contracts/MinterRole.sol
> Compiling ./contracts/interfaces/IERC20.sol
> Compiling ./contracts/libraries/Context.sol
> Compiling ./contracts/libraries/Roles.sol
> Compiling ./contracts/libraries/SafeMath.sol
> Artifacts written to /Users/antoniocunanan/Desktop/code/blockchain/erc20/erc-20-token/build/contracts
> Compiled successfully using:
   - solc: 0.5.16+commit.9c3226ce.Emscripten.clang



Starting migrations...
======================
> Network name:    'rinkeby'
> Network id:      4
> Block gas limit: 10000000 (0x989680)


1_deploy_contracts.js
=====================

   Deploying 'ERC20Combined'
   -------------------------
   > transaction hash:    0xfdd0883066f56e5acefb4cfe5e918c36cee426cf5ad7f8ce3b261c8f7ba60018
   > Blocks: 0            Seconds: 12
   > contract address:    0x324e39cda39C6631e7b419c262ec52414afb7234
   > block number:        8270558
   > block timestamp:     1616291632
   > account:             0x39010B2C68DA9C66A71908a588dc1d3BbF61073e
   > balance:             57.95243879
   > gas used:            805872 (0xc4bf0)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.01611744 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 1 (block: 8270559)
   > confirmation number: 2 (block: 8270560)

   Replacing 'ERC20Combined'
   -------------------------
   > transaction hash:    0x646f189188027d1824323a017fd62bc8dee6ebde4f9963ecc49a38892783f0c5
   > Blocks: 0            Seconds: 8
   > contract address:    0x0c088D292201539a8cA6d68ffF6377A16D5aff53
   > block number:        8270561
   > block timestamp:     1616291677
   > account:             0x39010B2C68DA9C66A71908a588dc1d3BbF61073e
   > balance:             57.93632135
   > gas used:            805872 (0xc4bf0)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.01611744 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 1 (block: 8270562)
   > confirmation number: 2 (block: 8270563)
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.03223488 ETH


Summary
=======
> Total deployments:   2
> Final cost:          0.03223488 ETH
```
