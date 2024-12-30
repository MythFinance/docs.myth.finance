# Rate

dualSTAKE tokens are backed by `ALGO` and their paired asset, with a different exchange rate for each.

Minting dualSTAKE tokens will require the equivalent amounts of both tokens, and similarly redeeming will yield the equivalent amounts of both tokens.

The formula to determine the exchange rate of the dualSTAKE token to the paired assets is:

\\[1\ dualSTAKE=1\ ALGO+\frac{Paired\ Asset\ Balance}{Staked\ ALGO}ASA\\]

Where:

- `Paired Asset Balance` refers to the amount of the paired ASA held by the smart contract
- `Staked ALGO` refers to the `ALGO` deposited by users
  - Not including accumulated platform or node runner fees

## Example

Assuming the `oraALGO` dualSTAKE contract has:

- 30,000 `ALGO` staked
- 10,000 `ORA` balance

Then:

\\[1\ oraALGO=1\ ALGO+\frac{1}{3}ORA\\]

### Initial ASA exchange rate

Usually, the initial dualSTAKE:ASA exchange rate will be zero, but in some cases a community intending to provide a generous farm may choose to bootstrap a dualSTAKE token with a non-zero exchange rate for their ASA.

This would impose a requirement to deposit some of the asset when minting the dualSTAKE token "at time zero", before rewards have started accumulating.
