# Creating dualSTAKE contracts

Currently, creating dualSTAKE contracts is a manual process.

**Please [reach out](./contact.html) to the team if you are interested in creating a dualSTAKE token for your ASA.**

A number of preconditions must be met to ensure that the protocol functions as expected:

- Sufficient decimal precision for assets
  - Assets with low decimal precision may not be suitable for this version of dualSTAKE.
- Liquidity pool must be chosen correctly
  - Currently, tinyman v2 liquidity pools are supported
    - Changing the LP requires a smart contract upgrade
  - A shallow pool without deep liquidity may result in inefficient swaps resulting in loss of rewards to arbitrage
- Initial Exchange Rate
  - A non-zero initial exchange rate is supported, but should only be used in case of significant farming provision
- Asset information
  - Asset unit names are currently chosen manually.
  - The AVM restricts this field to 8 characters maximum length, requiring flexibility in naming dualSTAKE units for assets with longer names (e.g. `$MONKO`)
