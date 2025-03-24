# Fee Structure

Minting & redeeming do not incur any platform fees. The only fees you will be charged during these operations are network transaction fees.

Instead, fees are taken from consensus rewards, before they are swapped to the ASA.

The reward fees consist of **platform fees** and **node runner fees**:

## Platform fees

The Myth Finance platform is allocated some fees on each rewards distribution.

The percentage is configurable throughout the lifetime of the contract, and can be seen under the global storage key `platform_fee_bps`. This value is basis points, so you can divide by 100 to get the percent fee. The initial value `300` corresponds to `3.0%`.

There are mechanisms in place to protects dualSTAKE users from the operator changing platform fees abruptly, see [Immutability - Fee Rate](./immutability.html#fee-configuration).

## Node runner fees

The node operator is allocated some fees on each rewards distribution. As above, this is expressed in basis points under the `noderunner_fee_bps` global storage field, and the same [update mechanism](./immutability.html#fee-configuration) applies.

The default node runner fee will be `400` bps, or `4%`.

Typically, ASA communities will operate their own nodes, and benefit from these fees. You can read more about node running [in this section](./noderunners.html).

## Example fee allocation from reward disbursement

Assuming these hypothetical fees:

- Platform fee rate: 2.0% 
- Node operator fee rate: 3.0% 

Then a staking reward disbursement of 10.5 `ALGO` would be allocated as such:

- Staking rewards deposited: 10.5 `ALGO`
- Platform fee: 0.21 `ALGO`
- Node operator fee: 0.315 `ALGO`
- Net amount to be swapped into ASA: 9.975 `ALGO`

## Withdraw model

Platform and node operator fees are not paid immediately. Instead they remain in the contract escrow account until they are withdrawn by the respective operator.

This serves multiple purposes:

- fewer required transaction fees
- contributing to the voting power of the dualSTAKE escrow address in consensus
- fewer taxable events for the platform and node runners.
