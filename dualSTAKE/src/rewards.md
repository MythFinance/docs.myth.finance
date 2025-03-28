# Staking Rewards

> Where does the yield come from? Short answer: Algorand staking rewards, converted to your favorite ASA permissionlessly. Additional rewards can accrue from our permissionless [dualSTAKE farms](./farming.html).

A dualSTAKE smart contract delegates its escrow account's voting power to a node runner, in order for them to participate in consensus on its behalf.

As blocks are proposed by the node:

- The Algorand protocol distributes `ALGO` rewards into the smart contract escrow account
- The `ALGO` rewards are swapped into the ASA (e.g. `ORA`) through a pre-configured AMM pool (e.g. Tinyman v2 `ALGO/ORA`)
- Each circulating dualSTAKE token (e.g. `oraALGO`) is now worth more in the paired ASA (e.g. `ORA`)

**These swaps create buying pressure on the paired token, and serve as a steady cost averaging buy strategy for users.**

Platform and node runner fees are taken from the staking rewards, pre-swap.

Swapping is triggered in one of two ways:

- Our backend systems will call the contract to perform the `ALGO`-`ASA` swap whenever a block is produced
- Or, automatically before minting or redeeming dualSTAKE tokens

This way, even if our backend systems lag behind or are offline, you can be sure that the dualSTAKE exchange rate is correct.

Continue to: [Redeeming dualSTAKE tokens](./redeem.html) or navigate to a specific section using the menu.
