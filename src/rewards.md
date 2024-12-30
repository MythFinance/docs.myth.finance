# Staking Rewards

dualSTAKE smart contracts delegate their escrow account to node runners, who participate in Algorand consensus on the contract's behalf.

As blocks are proposed by the node runner:

- The Algorand protocol distributes `ALGO` rewards into the smart contract escrow account
- The `ALGO` rewards are swapped into the ASA (e.g. `ORA`) through a pre-configured AMM pool (e.g. Tinyman v2 `ALGO/ORA`)
- The dualSTAKE token (e.g. `oraALGO`) appreciates against the paired ASA (e.g. `ORA`)

**These swaps create buying pressure on the paired token, and serve as a steady cost averaging buy strategy for users.**

Platform and node runner fees are taken from the staking rewards, pre-swap.

Our backend systems will call the contract to perform the `ALGO`-`ASA` swap whenever a block is produced, but it is also happens automatically before minting or redeeming dualSTAKE tokens. This way, even if our backend systems lag behind or are offline, you can be sure that you are receiving the correct rate of dualSTAKE:ASA.
