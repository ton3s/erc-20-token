const ERC20Combined = artifacts.require('ERC20Combined')

module.exports = function (deployer) {
	deployer.deploy(ERC20Combined, 'FUNREWARDS', 'FR', 18)
	deployer.deploy(ERC20Combined, 'MUSCLETEAM', 'MARIO', 18)
	deployer.deploy(ERC20Combined, 'THUG', 'THUG', 18)
}
