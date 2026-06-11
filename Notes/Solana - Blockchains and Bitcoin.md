---
date: 2025-07-06
updated: 2025-07-08
class: note
tags:
  - blockchain
  - solana
  - bitcoin
  - cryptography
source:
related:
  - "[[Solana pvt]]"
description: Blockchain fundamentals, Bitcoin whitepaper, Proof of Work, Proof of Stake, Solana, DeFi
aliases:
  - Solana
course: blockchain
status: evergreen
---

# **What is a blockchain?

A public ledger that provides:

##### Consensus : All the participants agree on the data on the blockchain

##### Persistence : Once added, data can be removed

##### Liveness : Anyone can add data to blockchain

A blockchain is mainly the _blocks of permanent record of data grouped together. It's essentially a container that holds a set of transactions and other relevant information, like a timestamp, and a cryptographic link to the previous block And chain of these digital signatures_ is called Blockchain.

---

# \*\*Blockchain Bitcoin white paper fixes the problem of Byzantines general problem :-

Here comes bitcoin whitepaper which solves the issue of central party (which could be government We trust the government not to seize , debase or change the value of money with time ) But bitcoin whitepaper describes an algorithm that solves this problem without a need of a centralized authority .

![[Pasted image 20250706145546.png]]

![[Pasted image 20250706145608.png]]

### Here another issue rises which is double spending problem ?

In the digital world we can solve the \*problem by maintaining a ledger the ledger basically represents the ownership of the of a coin at any point whenever we will be spending it it will be transfer the owner ship to someone who you want to pay its just variables in rust and solana makes that var into a coin .

---

# \*\*Timestamp Server

The solution we propose begins with a timestamp server. A timestamp server works by taking a hash of a block of items to be timestamped and widely publishing the hash, such as in a newspaper or Usenet post [2-5]. The timestamp proves that the data must have existed at the time, obssviously, in order to get into the hash. Each timestamp includes the previous timestamp in its hash, forming a chain, with each additional timestamp reinforcing the ones before it.

![[Pasted image 20250706154501.png]]

---

# \*\*\*Proof of work ( Ethereum / Bitcoin )

To make a **distributed timestamp server** (a system that proves when data existed), we use a method called **proof-of-work**—the same idea behind Adam Back’s **Hashcash**.

### What is Proof-of-Work?

Proof-of-work means doing a **lot of trial and error** to find a number (called a **NONCE**) that, when added to some data and hashed (using a function like **SHA-256**), produces a result that **starts with a bunch of zeroes**.

- Finding this number is **hard** and takes **a lot of computer work**.
- But once it’s found, **anyone can easily check** that it works by doing just one hash.

![[Pasted image 20250708152721.png]]

### Why Do This?

We use this process to build **blocks** of data (like transactions) and link them together in a **chain** (called the **blockchain**).

- Once a block is created using proof-of-work, **it’s locked in place**—you can’t change it without doing all that work again.
- Plus, if other blocks are added on top of it, you’d have to redo the work for **every single block after it**, which is really hard.

### How Do We Decide Who’s Right?

In a system where anyone can join, we need a fair way to make decisions.

- We don’t use **one-IP-address-one-vote** (someone could fake many IPs).
- Instead, we use **one-CPU-one-vote**—the more computing power you have, the more influence you get.
- The longest chain (the one with the most work) is the **true version** of the blockchain.

If most computers (called **nodes**) are honest, the honest chain will grow faster and beat any fake one an attacker tries to build.

### What About Speed?

As computers get faster or slower, the system adjusts the difficulty of the work so that new blocks are made at a steady pace (like every 10 minutes, for example). If blocks are being created too quickly, it makes the puzzle harder.

---

# **Proof of Stake (Solana)**

### What is Proof of Stake, and how is it different from Proof of Work (used by Bitcoin and Ethereum)?

**Proof of Work (PoW)** is the system used by Bitcoin and earlier versions of Ethereum. In this system, many miners (also called hashers) compete to solve a complex mathematical puzzle for each transaction or block. The first one to solve it gets the reward, while all others get nothing. This leads to a huge waste of energy and resources.

---

### How Proof of Stake (PoS) Works

**Proof of Stake** is different. Instead of all nodes competing, the system selects one node at a time to validate a transaction or block. This approach saves energy and avoids wasted effort.

> In PoS, each node must put up a "stake"—a certain amount of cryptocurrency—as a guarantee of honest behavior. If the node acts dishonestly or fails to validate correctly, it loses part of its stake as a penalty (which is usually more than the reward).

Nodes with larger stakes have a higher chance of being selected to validate blocks. This can lead to a situation where wealthier nodes get more rewards, making them even richer over time.

# **Proof of History (Solana)**

### What is Proof of History, and how is it different from Proof of Stake?

**Proof of Stake (PoS)** chooses who gets to validate the next block, but it doesn't show _when_ events happened. That’s where **Proof of History (PoH)** comes in — it adds a way to record _time_ in the blockchain.

---

### How Proof of History Works

Proof of History is like a **cryptographic clock**. It creates a **verifiable timeline** of events, so everyone can agree on the _order_ and _time_ of transactions without needing to talk to each other.

It uses a special algorithm that keeps hashing data and time over and over. This chain of hashes proves that something happened at a certain moment, and in a certain order.

This system helps Solana to process **many transactions very fast** — much faster than traditional blockchains — because it already knows the order of events without waiting for consensus each time.

## Collateral

Collateral is an asset that you deposit or lock up as security when borrowing money or taking out a loan. In DeFi:

- **Purpose**: Acts as a guarantee that you'll repay your debt
- **Function**: If you can't repay your loan, the protocol can liquidate (sell) your collateral to recover the funds
- **Examples**: You might deposit ETH as collateral to borrow USDC, or deposit Bitcoin to borrow stablecoins
- **Over-collateralization**: Most DeFi protocols require you to deposit more value than you borrow (e.g., deposit $150 worth of ETH to borrow $100 worth of USDC)

## Mint Tokens

Minting tokens refers to creating new tokens on a blockchain:

- **Process**: New tokens are generated and added to the total supply
- **Context**: In lending protocols, when you deposit collateral, you might receive "synthetic" or "wrapped" tokens representing your position
- **Examples**:
  - Depositing DAI in a protocol might mint you interest-bearing tokens
  - Some protocols mint debt tokens representing what you owe
  - Stablecoin protocols mint new coins when users deposit collateral

## PriceFeed

A PriceFeed (or price oracle) provides real-time price information to smart contracts:

- **Purpose**: DeFi protocols need accurate, up-to-date prices to function properly
- **Sources**: Aggregates price data from multiple exchanges and sources
- **Critical role**: Used to calculate collateral values, determine liquidation thresholds, and maintain system stability
- **Examples**: Chainlink oracles, Band Protocol, or custom price feeds that tell a lending protocol that ETH is worth $2,000

## Health Factor

Health factor is a metric that indicates how safe your borrowing position is:

- **Calculation**: Usually calculated as (Collateral Value × Liquidation Threshold) / Total Borrowed Amount
- **Interpretation**:
  - Health factor > 1: Your position is safe
  - Health factor < 1: Your position may be liquidated
  - Health factor = 1: You're at the liquidation threshold
- **Example**: If your collateral is worth $150, liquidation threshold is 80%, and you borrowed $100: Health Factor = ($150 × 0.8) / $100 = 1.2 (safe position)

These concepts work together: you deposit collateral, the protocol uses price feeds to value it, mints tokens representing your position, and continuously monitors your health factor to ensure the system remains solvent.

## Core Stablecoin Mechanisms

**Overcollateralization Ratio (OCR)**

- Minimum collateral ratio required (e.g., 150% means $150 collateral for $100 stablecoin)
- Dynamic ratios based on collateral volatility
- Different ratios for different collateral types

**Liquidation Threshold**

- The collateral ratio at which liquidation can be triggered
- Usually lower than the minimum OCR (e.g., 120%)
- Provides buffer between minimum ratio and liquidation

**Liquidation Penalty**

- Fee charged when a position gets liquidated (e.g., 10-15%)
- Incentivizes liquidators to maintain system health
- Penalty goes to protocol treasury or is burned

## Advanced Protocol Features

**Stability Fee**

- Interest rate charged on borrowed stablecoins
- Can be dynamic based on market conditions
- Helps maintain peg and generates protocol revenue

**Liquidation Auctions**

- Dutch auctions for liquidated collateral
- Ensures fair price discovery during liquidations
- Minimizes slippage and maximizes recovered value

**Redemption Mechanism**

- Users can redeem stablecoins for underlying collateral
- Helps maintain peg when trading below $1
- Usually with small redemption fee

**Emergency Shutdown/Global Settlement**

- Allows protocol to wind down in extreme scenarios
- All positions closed at current collateral prices
- Users can claim proportional collateral

## Risk Management

**Debt Ceiling**

- Maximum amount of stablecoins that can be minted against specific collateral
- Prevents concentration risk
- Can be adjusted by governance

**Collateral Types (Ilks in MakerDAO terminology)**

- Different risk parameters for each collateral type
- ETH, wBTC, staked tokens, LP tokens, etc.
- Each has its own debt ceiling, liquidation ratio, stability fee

**Keepers/Liquidators**

- Bots that monitor positions and trigger liquidations
- Economic incentives through liquidation bonuses
- Competition ensures efficient liquidations

## Oracle and Price Management

**Price Deviation Checks**

- Circuit breakers for extreme price movements
- Multiple oracle sources for redundancy
- Price update frequency considerations

**Oracle Security Module (OSM)**

- Time delay on price updates (e.g., 1 hour)
- Prevents flash loan attacks on oracles
- Governance can trigger emergency price updates

**Medianizer**

- Takes median of multiple price feeds
- More resistant to manipulation than single oracle
- Whitelisted feed sources

## Governance and Parameters

**Risk Parameters**

- Liquidation ratios, stability fees, debt ceilings
- Updated through governance voting
- Time delays for parameter changes

**Module System**

- Modular architecture for upgrades
- Core accounting vs peripheral modules
- Authorization patterns for different functions

## Technical Implementation Considerations

**Fixed Point Math**

- High precision arithmetic (e.g., 18 decimal places)
- Rounding considerations in calculations
- Ray math (27 decimal precision) for rates

**Rate Accumulation**

- Compound interest calculations
- Block timestamp vs block number for time
- Gas-efficient rate updates

**Access Control**

- Role-based permissions (admin, operator, user)
- Multi-sig requirements for critical functions
- Emergency pause mechanisms

**Events and Logging**

- Comprehensive event emission for indexing
- Position changes, liquidations, parameter updates
- Off-chain monitoring and alerting

## State Management

**Vault/CDP Storage**

- User position data structure
- Debt tracking with accumulated interest
- Collateral balances and types

**Global State**

- Total debt, total collateral by type
- Accumulated rates and fees
- System-wide parameters

**Batching Operations**

- Gas-efficient bulk operations
- Position adjustments in single transaction
- Atomic multi-collateral operations
