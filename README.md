# ERC-20 Token Creator

### Tokens minted

```
name:       FUNREWARDS
symbol:     FR
decimal:    18
contract:   0x0AB614fd188C82f763A0417F682486f81C9d6D41

name:       MUSCLETEAM
symbol      MARIO
decimal:    18
contract:   0xA5744a7A2a2F20d284f1763eae6B9225570d24d0

name:       THUG
symbol:     THUG
decimal:    18
contract:   0x71DD117469f566c4F92446Bf01F3E759aab8A9F6

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

   Replacing 'ERC20Combined'
   -------------------------
   > transaction hash:    0x20dba38d315aa7fbbbd355096ebb4af1399090265fb3775b9660ce539395cf85
   > Blocks: 0            Seconds: 12
   > contract address:    0x0AB614fd188C82f763A0417F682486f81C9d6D41
   > block number:        8273727
   > block timestamp:     1616339172
   > account:             0x39010B2C68DA9C66A71908a588dc1d3BbF61073e
   > balance:             57.88662707
   > gas used:            805920 (0xc4c20)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.0161184 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 1 (block: 8273728)
   > confirmation number: 2 (block: 8273729)

   Replacing 'ERC20Combined'
   -------------------------
   > transaction hash:    0xa3da0e4ea93da70160b5e6f3b804f7910eb19a193ee7e0d10331d32cbd3b8ccd
   > Blocks: 1            Seconds: 12
   > contract address:    0xA5744a7A2a2F20d284f1763eae6B9225570d24d0
   > block number:        8273730
   > block timestamp:     1616339217
   > account:             0x39010B2C68DA9C66A71908a588dc1d3BbF61073e
   > balance:             57.87050795
   > gas used:            805956 (0xc4c44)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.01611912 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 1 (block: 8273731)
   > confirmation number: 2 (block: 8273732)

   Replacing 'ERC20Combined'
   -------------------------
   > transaction hash:    0x242495ee8fc0c0ace0415c07ec22353bde400a4030890b390c55c1cf92315f45
   > Blocks: 0            Seconds: 8
   > contract address:    0x71DD117469f566c4F92446Bf01F3E759aab8A9F6
   > block number:        8273733
   > block timestamp:     1616339262
   > account:             0x39010B2C68DA9C66A71908a588dc1d3BbF61073e
   > balance:             57.85439051
   > gas used:            805872 (0xc4bf0)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.01611744 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 1 (block: 8273734)
   > confirmation number: 2 (block: 8273735)
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.04835496 ETH


Summary
=======
> Total deployments:   3
> Final cost:          0.04835496 ETH
```
