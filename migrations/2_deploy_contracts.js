var TokenContract = artifacts.require("./geniusToken.sol");

module.exports = function(deployer) {
  deployer.deploy(TokenContract);
};
