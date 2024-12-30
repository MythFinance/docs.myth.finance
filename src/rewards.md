# Staking Rewards

A dualSTAKE smart contract delegates its escrow account's voting power to a node runner, in order for them to participate in consensus on its behalf.

As blocks are proposed by the node:

- The Algorand protocol distributes `ALGO` rewards into the smart contract escrow account
- The `ALGO` rewards are swapped into the ASA (e.g. `ORA`) through a pre-configured AMM pool (e.g. Tinyman v2 `ALGO/ORA`)
- The dualSTAKE token (e.g. `oraALGO`) appreciates against the paired ASA (e.g. `ORA`)

**These swaps create buying pressure on the paired token, and serve as a steady cost averaging buy strategy for users.**

Platform and node runner fees are taken from the staking rewards, pre-swap.

Swapping is triggered in one of two ways:

- Our backend systems will call the contract to perform the `ALGO`-`ASA` swap whenever a block is produced
- Automatically before minting or redeeming dualSTAKE tokens

This way, even if our backend systems lag behind or are offline, you can be sure that the dualSTAKE exchange rate is correct.
