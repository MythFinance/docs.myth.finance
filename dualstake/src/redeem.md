# Redeeming

Users can redeem their dualSTAKE tokens at any time. Redeeming breaks dualSTAKE up into their component parts and returns them to the user.

Using `oraALGO` as an example:

Users can redeem their `oraALGO` tokens via the smart contract and receive the backing `ALGO` (at 1:1) and `ORA` (at [current rate](./rate.html)).

_E.g. Alice minted 10 `oraALGO` by depositing 10 `ALGO` and 1 `ORA`. Some time later, `oraALGO` has appreciated against `ORA`, so she redeems her 10 `oraALGO` tokens for 10 `ALGO` and 3.14 `ORA`._

Minting and redeeming do not incur platform fees, so users should always receive at least as much `ALGO` and `ORA` as they deposited.

Assuming staking rewards have accumulated between minting and redeeming, the `ORA` amount withdrawn during redemption will be larger than the deposited amount during mint.
