# How it Works

dualSTAKE tokens are named after `ALGO` and the paired ASA.

_For the purposes of this section, we will use `ORA` as the paired dualSTAKE asset._

The `ORA` dualSTAKE token is called `oraALGO`.

- Each `oraALGO` is backed by `ALGO` at a rate of 1:1
- Each `oraALGO` is backed by an increasing amount of `ORA`

Each dualSTAKE token is managed by a smart contract. Different tokens are managed by independent contracts, without co-mingling.

A typical user journey with a dualSTAKE token like `oraALGO` would consist of:

1. [minting](./mint.html) dualSTAKE (e.g. `oraALGO`) by depositing `ALGO` + `ORA`
2. _(later on)_ [redeeming](./redeem.html) their `oraALGO` dualSTAKE tokens for `ALGO` + more `ORA`.

Between points 1 and 2, the dualSTAKE contract would receive staking rewards from block production, which are immediately [swapped](./rewards.html) into the paired ASA, thus `oraALGO` appreciates against `ORA`. The amount of staked `ALGO` remains constant.

Read more about [minting](./mint.html) or navigate to a specific section using the menu.
