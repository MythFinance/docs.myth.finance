# Bug bounty

The core dualSTAKE contract is under a bug bounty until at least June 30th, 2025.

## Scope

In Scope: [pyTEAL dualSTAKE contract](https://github.com/mythFinance/dualSTAKE) commit `0cd8b28d8701d58486956ba748dee04f4ba2548b`

Excluded from scope:

- ASA rounding losses due to decimal precision. Sub-microunit ASA "losses" while minting are possible. They are disregarded as: 1) uneconomical to the attacker, and 2) cheap to rectify by the team.
- Third party vulnerabilities, e.g. AMMs that are called from dualSTAKE.

Out of scope: Other Myth Finance contracts, SDKs, client code, backend, frontend, privileged private keys, third party code.

## Eligibility

1) Responsible, private disclosure to the designated security-contact email address.
2) No public communications or exploitation.
3) Practically exploitable vulnerabilities.

> Disclose vulnerabilities to: [security@myth.finance](mailto:security@myth.finance)

## Critical vulnerabilities

Max bounty: $5,000 USDC

- Loss of user stake (ALGO)
- Loss of paired ASA rewards (see scope exclusions)
- Takeover of admin role
- Unauthorized smart contract upgrade (from non-admin)
- Smart contract deletion with circulating dualSTAKE tokens

## High vulnerabilities

Max bounty: $500 USDC

- Inability to mint/redeem/swap (excluded: maximum balance restrictions)
- Non-dissolvable protesting stake (code upgrade denial of service)
- Smart contract upgrade time lock bypass
- Smart contract approval program upgrade hash lock bypass
- Unauthorized takeover of fee admin account
- Unauthorized takeover of noderunner account
- Loss of accrued noderunner fees
- Subversion of noderunner fees by privileged account
- Unauthorized consensus key registration

## Notes

The dualSTAKE protocol is [documented here](https://docs.myth.finance/dualSTAKE).

Vulnerabilities not described under "critical" or "high" will be accepted and examined ad-hoc.

The rule of thumb for a valid vulnerability is "practical damage, done to a party involved in the dualSTAKE contract".
