const ERC20Combined = artifacts.require('ERC20Combined')

module.exports = function (deployer) {
	deployer.deploy(ERC20Combined, 'TOKEN1', 'T1', 18)
	deployer.deploy(ERC20Combined, 'TOKEN2', 'T2', 18)
}
