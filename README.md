

# 🏛️ SimpleDAO Smart Contract

A minimalistic on-chain DAO (Decentralized Autonomous Organization) that enables members to create proposals, vote, and execute decisions once a quorum is reached.

---

## ⚙️ Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/your-repository-name.git
cd SimpleDAO
```

### 2. Install Dependencies

```bash
npm install
```

### 3. Configure Environment Variables (if needed for deployment)

Example `.env`:

```env
PRIVATEKEY="YOUR_PRIVATE_KEY"
CORE_TEST2_SCAN_KEY="YOUR_CORE_TEST2_SCAN_KEY"
CORE_TEST1_SCAN_KEY="YOUR_CORE_TEST1_SCAN_KEY"
CORE_MAIN_SCAN_KEY="YOUR_CORE_MAIN_SCAN_KEY"
```

---

## 🛠 Hardhat Commands

### Compile Contracts

```bash
npx hardhat compile
```

### Run Tests

```bash
npx hardhat test
```

### Deploy Contract

Use a deploy script:

```bash
npx hardhat run scripts/deploy.js --network core_testnet2
```

## 🔍 Contract Verification

You can verify contracts using Core block explorers:

```bash
npx hardhat verify --network core_testnet2 <deployed_contract_address> <constructor_args>
```

API keys for verification must be included in `.env` as shown above.
