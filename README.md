# ERC-20 Token Creator

### Tokens minted

```
name:         FUNREWARDS
symbol        FUN
decimal:      8
contract:     0x140CA1B2b09C9f885F3773Df352977d794BA37EC

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

Network: rinkeby (id: 4)
  FUNREWARDS: 0x140CA1B2b09C9f885F3773Df352977d794BA37EC
  MARIO: 0x02297bDE3eC529f70E172ef51E03de14b0258917
  THUG: 0x918837C560c75De6D38BA43A51eF9954f96ec481

truffle(rinkeby)> let mario = await MARIO.deployed()
truffle(rinkeby)> mario.mint("0x39010B2C68DA9C66A71908a588dc1d3BbF61073e", 10000000 * 10 ** 8)

truffle(rinkeby)> let thug = await THUG.deployed()
truffle(rinkeby)> thug.mint("0x39010B2C68DA9C66A71908a588dc1d3BbF61073e", 10000000 * 10 ** 8)

truffle(rinkeby)> let funrewards = await FUNREWARDS.deployed()
truffle(rinkeby)> funrewards.mint("0x39010B2C68DA9C66A71908a588dc1d3BbF61073e", 10000000 * 10 ** 8)

```

### Logs

```
❯ truffle migrate --network rinkeby

Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.


Starting migrations...
======================
> Network name:    'rinkeby'
> Network id:      4
> Block gas limit: 10000000 (0x989680)


1_deploy_contracts.js
=====================

   Deploying 'FUNREWARDS'
   ----------------------
   > transaction hash:    0xf90fc29060fd3aadc85a3dd9d1f06bbc548ea51546503ad27cca24c10e8f3567
   > Blocks: 0            Seconds: 4
   > contract address:    0x140CA1B2b09C9f885F3773Df352977d794BA37EC
   > block number:        8274095
   > block timestamp:     1616344692
   > account:             0x39010B2C68DA9C66A71908a588dc1d3BbF61073e
   > balance:             57.73295291
   > gas used:            805932 (0xc4c2c)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.01611864 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 1 (block: 8274096)
   > confirmation number: 2 (block: 8274097)
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.01611864 ETH
```
