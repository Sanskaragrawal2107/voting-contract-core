const hre = require("hardhat");

async function main() {
  const [deployer] = await hre.ethers.getSigners();
  console.log("Deploying SimpleDAO contract from:", deployer.address);

  // List of members' addresses
  const members = [
    "0x8bC3309D0104B8135981c714C485e8de0FA36193", // Replace with actual member addresses
    "0x013C695D1A4B6Ddc3792e73a052212CB74760fB4",
    "0x15b100ADF7dd2b8070AC3c3c022DF48f73d5F5fc"
  ];

  // Deploy SimpleDAO contract
  const SimpleDAO = await hre.ethers.getContractFactory("SimpleDAO");
  const simpleDAO = await SimpleDAO.deploy(members);


  console.log("✅ SimpleDAO contract deployed at:", simpleDAO.target);
}

main().catch((error) => {
  console.error("❌ Deployment failed:", error);
  process.exitCode = 1;
});
