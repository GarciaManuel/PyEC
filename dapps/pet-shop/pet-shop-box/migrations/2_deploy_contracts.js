var Adoption = artifacts.require('Adoption');
var Access = artifacts.require('Access');

module.exports = function (deployer) {
  deployer.deploy(Adoption);
  deployer.deploy(Access);
};
