# How it Works

_For the purposes of this section, we will use `ORA` as the paired dualSTAKE asset._

The `ORA` dualSTAKE token is called `oraALGO`.

- Each `oraALGO` unit is backed by `ALGO` at a rate of 1:1
- Each `oraALGO` unit is backed by an increasing amount of `ORA`

`oraALGO` issuance is fully managed by a smart contract. Different tokens are managed by independent contracts, without co-mingling.

A typical user journey with a dualSTAKE token like `oraALGO` would consist of:

1. [minting](./mint.html) dualSTAKE (e.g. `oraALGO`) by depositing `ALGO` + `ORA`
2. _(later on)_ [redeeming](./redeem.html) their `oraALGO` dualSTAKE tokens for `ALGO` + more `ORA`.

Between points 1 and 2, the dualSTAKE contract would receive staking rewards from block production, which are immediately [swapped](./rewards.html) into the paired ASA, increasing the `ORA` amount backing each unit of `oraALGO`. The amount of staked `ALGO` remains constant.

dualSTAKE supports [farms](./farming.html), which pay out an additional amount in the paired ASA for each block produced, resulting in a higher APR. Farms are permissionless and can be created or extended by anyone.

Read more about [minting](./mint.html) or navigate to a specific section using the menu.
