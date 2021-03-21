# ERC-20 Token Creator

### Tokens minted

```
name:         MUSCLETEAM
symbol        MARIO
decimal:      8
contract:     0x02297bDE3eC529f70E172ef51E03de14b0258917

name:         THUG
symbol:       THUG
decimal:      8
contract:     0x918837C560c75De6D38BA43A51eF9954f96ec481

```

### Commands

```
❯ truffle console --network rinkeby
truffle(rinkeby)> networks

Network: develop (id: 5777)
  No contracts deployed.

Network: rinkeby (id: 4)
  MARIO: 0x02297bDE3eC529f70E172ef51E03de14b0258917
  THUG: 0x918837C560c75De6D38BA43A51eF9954f96ec481

Network: ropsten (id: 3)
  No contracts deployed.

truffle(rinkeby)> let mario = await MARIO.deployed()
truffle(rinkeby)> mario.mint("0x39010B2C68DA9C66A71908a588dc1d3BbF61073e", 10000000 * 10 ** 8)

truffle(rinkeby)> let thug = await THUG.deployed()
truffle(rinkeby)> thug.mint("0x39010B2C68DA9C66A71908a588dc1d3BbF61073e", 10000000 * 10 ** 8)

```

### Logs

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
> Compiling ./contracts/tokens/MARIO.sol
> Compiling ./contracts/tokens/THUG.sol
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

   Deploying 'MARIO'
   -----------------
   > transaction hash:    0xb9c740f1fba935550fa383300032453ff83a9c1377d4aa405e0b098d1e99d412
   > Blocks: 0            Seconds: 8
   > contract address:    0x02297bDE3eC529f70E172ef51E03de14b0258917
   > block number:        8273951
   > block timestamp:     1616342532
   > account:             0x39010B2C68DA9C66A71908a588dc1d3BbF61073e
   > balance:             57.76786715
   > gas used:            805944 (0xc4c38)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.01611888 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 1 (block: 8273952)
   > confirmation number: 2 (block: 8273953)

   Deploying 'THUG'
   ----------------
   > transaction hash:    0xa4d0bea672e84fb1e8c31a184206ad59b48219175490d6589152ebd4b985930d
   > Blocks: 0            Seconds: 8
   > contract address:    0x918837C560c75De6D38BA43A51eF9954f96ec481
   > block number:        8273954
   > block timestamp:     1616342577
   > account:             0x39010B2C68DA9C66A71908a588dc1d3BbF61073e
   > balance:             57.75174971
   > gas used:            805872 (0xc4bf0)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.01611744 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 1 (block: 8273955)
   > confirmation number: 2 (block: 8273956)
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.03223632 ETH


Summary
=======
> Total deployments:   2
> Final cost:          0.03223632 ETH
```
