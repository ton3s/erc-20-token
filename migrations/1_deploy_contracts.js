const MARIO = artifacts.require('MARIO')
const THUG = artifacts.require('THUG')

module.exports = function (deployer) {
	deployer.deploy(MARIO, 'MUSCLETEAM', 'MARIO', 8)
	deployer.deploy(THUG, 'THUG', 'THUG', 8)
}
