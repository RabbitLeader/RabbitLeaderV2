// PDX-License-Identifier: UNLICENSED
// @author: RabbitLeader Dev

const { ethers } = require("hardhat");

async function deployRabbitLeader() {

  // deploy RabbitLeader.sol;
  const RabbitLeader = await ethers.getContractFactory("RabbitLeader");
  const rabbitLeader = await RabbitLeader.deploy();
  await rabbitLeader.deployed();

  console.log("The RabbitLeader Contract is at", rabbitLeader.address);
}


deployRabbitLeader()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  })