# dualSTAKE Overview

> dualSTAKE is a **family of liquid staking tokens** on Algorand that **convert protocol staking rewards** from ALGO to ASAs.

Each dualSTAKE token pairs `ALGO` and an ASA into a dual liquid staking token:

- `gobtcALGO` dualSTAKE = `ALGO` + `goBTC`
- `coopALGO` dualSTAKE = `ALGO` + `COOP`
- `cosgALGO` dualSTAKE = `ALGO` + `COSG`
- etc

> dualSTAKE tokens are always at 1:1 rate with `ALGO`, and accrue rewards in the form of an increasing exchange rate with the paired ASA.

In a nutshell:

1) Users **stake** `X ALGO` + `Y ASA`, receiving `X` dualSTAKE tokens.
2) dualSTAKE smart contracts **participate in consensus**.
3) Consensus staking rewards are **automatically swapped** from `ALGO` into the paired ASA.
4) Users later **redeem** `X` dualSTAKE tokens for `X` ALGO, plus `Z ASA`. Assuming rewards have accrued since the user minted, the `Z` quantity received will be higher than the initial `Y` quantity deposited.


## Why dualSTAKE?

Benefits for ASA creators:
- Leverage your community's `ALGO` into a steady stream of buying pressure for your ASA
  - Incentivize your dualSTAKE token with a permissionless ASA farm
- Run your dualSTAKE node for 4% node runner fees (paid in `ALGO`)
- Provide utility for your ASA via the implicit dualSTAKE token soft-lock

Benefits for users:
- Stake `ALGO` + ASA, accrue rewards in your favorite ASA
- Benefit from dualSTAKE farms offering higher APR (where available)

<div class="warning">
dualSTAKE works best when incentivized through <a href="./farming.html">dualSTAKE farms</a>. Farms are permissionless and can be created or extended by anyone.
</div>

---

Read more about [how dualSTAKE works](./how-it-works.html) or navigate to a specific section using the menu.
