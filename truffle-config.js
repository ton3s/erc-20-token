require('dotenv').config()
const HDWalletProvider = require('truffle-hdwallet-provider')

module.exports = {
	// Network to send smart contracts to
	networks: {
		development: {
			host: '127.0.0.1',
			port: '8545',
			network_id: '*',
		},
		rinkeby: {
			provider: function () {
				return new HDWalletProvider(
					[process.env.BLOCKCHAIN_PRIVATE_KEY],
					`https://rinkeby.infura.io/v3/${process.env.INFURA_ID}`
				)
			},
			network_id: 4,
			gas: 4000000,
			confirmations: 2,
			skipDryRun: true,
		},
		ropsten: {
			provider: function () {
				return new HDWalletProvider(
					[process.env.BLOCKCHAIN_PRIVATE_KEY],
					`https://ropsten.infura.io/v3/${process.env.INFURA_ID}`
				)
			},
			network_id: 3,
			gas: 4000000,
			confirmations: 2,
			skipDryRun: true,
		},
	},
	// Compiler we want to compile our contracts
	compilers: {
		solc: {
			version: '0.5.16',
			settings: {
				optimizer: {
					enabled: true,
					runs: 1,
				},
				evmVersion: 'istanbul',
			},
		},
	},
}
