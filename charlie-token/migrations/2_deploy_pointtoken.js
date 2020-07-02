const PointToken = artifacts.require("PointToken");

module.exports = function(deployer) {
  deployer.deploy(PointToken);
};
