# Creating dualSTAKE contracts

Currently, creating dualSTAKE contracts is a manual process.

If you are interested in launching a dualSTAKE for your ASA, read this page carefully. You can find a link to the dualSTAKE creation form at the end of this page.

## Eligibility

For assets to be suitable for dualSTAKE, they must:

- have an ALGO liquidity pool on Tinyman, with **at least 25K ALGO total TVL**
- have at least 6 decimal place precision

## Minimum Stake

<div class="warning">
dualSTAKE can be launched with low stake, but rewards will only work after the balance exceeds 30,000 ALGO.
</div>

Note: if your dualSTAKE contract falls below 30,000 ALGO balance, you will still be able to mint and redeem normally.

Tip: Before launching a dualSTAKE, we recommend checking with your community to see if there is enough interest to reach this minimum.

## Creation Fee

A one-time creation fee of 20 USDC is required to create dualSTAKE systems. The payment address will be provided when we are ready to create your dualSTAKE.

## Decisions

If this all sounds good, you can fill out the form at the bottom to get started.  You will be asked to make these decisions:

### 1. dualSTAKE Asset name

The dualSTAKE asset name is usually a straightforward affair: Your token name in lowercase, followed by `ALGO`. Some examples: `coopALGO` - `oraALGO` - `monkoALGO`

The asset name length should not exceed 10 characters. E.g. `marcusALGO` is at the limit.

### 2. dualSTAKE Asset Unit name

The _unit_ name is the name of a unit of your dualSTAKE asset. It is usually displayed on wallet balances, transactions, etc. Algorand only allows unit names up to 8 characters long.

**dualSTAKE unit naming convention is to choose 4 characters in lowercase, followed by `ALGO`.**

If your asset name is longer than 4 characters, you must find a suitable abbreviation. Some examples of abbreviated dualSTAKE unit names:

- goBTC dualSTAKE unit name is `gbtcALGO`
- monko dualSTAKE unit name is `mnkoALGO`

### 3. Initial rate

You will be asked whether you want your dualSTAKE token to launch with an initial ASA requirement or not (zero rate.)

**Scenario A: Zero rate**. dualSTAKE tokens can start at a zero dualSTAKE-to-ASA exchange rate. In this scenario, there would not be an initial requirement of your ASA in order to mint your dualSTAKE token. The ASA requirement would instead start rising slowly as rewards accumulate and are swapped into your token.

**Scenario B: ASA requirement**. If desired, dualSTAKE tokens can be bootstrapped with an initial ASA requirement. In this scenario, some of your ASA would be required in order to mint your dualSTAKE token. This is recommended in case you intend to provide a generous farm, which would justify the "soft-lock" of your ASA. _We recommend keeping the ASA requirement reasonable - such as  2% to 5% - so as not to disqualify users who may otherwise be willing to stake._

Setting an ASA requirement will:

`+` Soft-lock your ASA into the system earlier.

`-` Disqualify users who do not have enough ASA balance to match their intended ALGO stake.

### 4. Node running

If you or someone from your community can run your dualSTAKE node, you should! Otherwise, a node runner will be found for you by the Myth Finance team.

Why run the node? Node runners retain 4% of ALGO rewards paid by the protocol as fees.

If you opt to run your own node, you will be asked to provide an account that will have special permissions to perform node-related operations. Read more about [running a dualSTAKE node here](./noderunners).

## Complete the form

Sound good? Fill out the [dualSTAKE creation form](https://tally.so/r/woQ1MM)

## Next Steps

After filling in the form, we will check everything and get in touch about any additional info needed.

We typically handle your dualSTAKE logo creation, creating the contracts, and Pera verification submission for your dualSTAKE asset. 
