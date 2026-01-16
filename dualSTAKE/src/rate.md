# Exchange Rate (Mint & Redeem)

dualSTAKE tokens are backed 1:1 by **ALGO**, plus an additional amount of a **paired ASA** (Algorand Standard Asset). Each dualSTAKE token has its own paired ASA and therefore its own exchange rate.

When users:

* **Mint** a dualSTAKE token, they deposit the required amounts of **ALGO + paired ASA**
* **Redeem** a dualSTAKE token, they receive the equivalent amounts of **ALGO + paired ASA**

This page explains how the protocol calculates those amounts.

## Important: Mint Rate vs. Redeem Rate (Rounding Protection)

The **mint rate is intentionally set to be 1 microunit of the paired ASA higher than the redeem rate**.

This prevents value loss caused by rounding down sub-microunit amounts. Without this offset, users could experience experience small but repeated losses due to integer rounding, which could slowly reduce the effective backing of the dualSTAKE token.

> This does not materially affect normal users, but it *does* eliminate edge-case drift and protects the backing math.

## Redeem exchange rate

The formula to determine the redeem exchange rate of the dualSTAKE token to the paired assets is:

\\[1\ dsALGO=1\ ALGO+\frac{Paired\ ASA\ Balance}{Staked\ ALGO}ASA\\]

Where:

- `dsALGO` refers to a specific dualSTAKE token, e.g. `oraALGO`
- `Paired ASA Balance` refers to the amount of the paired ASA held by the smart contract, e.g. 300 `ORA`
- `Staked ALGO` refers to the `ALGO` deposited by users
  - Not including accumulated platform or node runner fees

## Mint Exchange rate

The mint exchange rate equals the redeem rate plus an additional 1 base unit of the ASA:

\\[1\ dsALGO=1\ ALGO+\frac{Paired\ ASA\ Balance}{Staked\ ALGO}ASA\+1\ ASA\ base\ unit\\]

Additional to the redeem exchange rate explanations:

- `1 ASA base unit` refers to the smallest amount of the ASA.
  - This is a constant value that does not scale with the amount being minted.
  - e.g. for an ASA with 6 decimals: 0.000001
  - e.g. for an ASA with 8 decimals: 0.00000001
  - Note: when the paired ASA balance is zero, this amount is not required

The additional unit of ASA required during minting eliminates the possibility of existing holders losing value from ASA rounding down during mint/redeem operations.

## Example

Assuming that `ORA` has 8 asset decimals and the `oraALGO` dualSTAKE contract has:

- 30,000 `ALGO` staked
- 10,000 `ORA` balance

Then redeeming 1 `oraALGO` would yield:

\\[1\ oraALGO=1\ ALGO+\frac{1}{3}ORA\\]

And minting 1 `oraALGO`, would require:

\\[1\ oraALGO=1\ ALGO+\frac{1}{3}ORA\+0.00000001\ ORA\\]

Where 0.00000001 is the micro unit of `ORA` at 8 asset decimals.

> ⚠ If you are integrating dualSTAKE rate calculations into your platform, make sure to account for asset decimals.

## What This Rate Means in Practice

At any moment, the contract has:

* a pool of **staked ALGO**
* a pool of **paired ASA**

The paired ASA portion of the rate increases over time as rewards accumulate in the contract.

This means that dualSTAKE tokens become redeemable for **more ASA** over time (while still remaining redeemable for **1 ALGO** each)


## Initial ASA exchange rate

In most deployments, the initial dualSTAKE:ASA exchange rate starts at **0**, meaning:

* at launch, 1 dualSTAKE token redeems for 1 `ALGO` + 0 ASA
* the ASA portion grows only after rewards begin accumulating

In some cases a community intending to provide a generous [farm](./farming.html) may choose to bootstrap a dualSTAKE token with a non-zero exchange rate for their ASA.

This would impose a requirement to deposit some of the asset when minting the dualSTAKE token "at time zero", before rewards have started accumulating.

See also: [Creating dualSTAKE contracts: Initial rate](/create.html#3-initial-rate)
