# Running a dualSTAKE node

dualSTAKE contracts currently operate with a single escrow account. A node runner is appointed to participate on behalf of dualSTAKE by the ASA leadership or Myth Finance.

ASA communities are expected to operate their nodes and reap the additional rewards:

Node runners accrue fees from rewards, in ALGO. Fees can withdrawn at any time. The default node runner fee is 4%, though this can be configured under [the protocol safeguards](./immutability.html#fee-configuration).

The node runner [account](./roles.html#node-runner) can:
- change the participation keys of the contract, as well as the online/offline state.
- change the node runner account to another address
- withdraw accrued node runner fees

The "fee admin" role held by Myth Finance can also perform these actions.

## How to run a dualSTAKE node

_Note: you need to be allocated the noderunner role by the Myth Finance team before you can perform these tasks._

When you connect the noderunner account and visit your dualSTAKE token page, you will see the `Manage Node` panel:

![](./noderunner.png)

### 1. Generate participation keys

First, you need to create participation keys for the dualSTAKE escrow account on your node. Copy the address using the Copy button next to the escrow address (e.g. `TWJN..`) and create participation keys for this account on your node. Recommended duration: at least 90 days / 3,000,000 rounds.

### 2. Register the keys

In the `Manage Node` panel, click `MANAGE`, then `Key Registration`, then `Online`. You will see a form like the one shown below.

Copy the participation key information from your node **carefully** and double-check the values. _Note: The "Voting key" field may be called "Vote key" on your node._

Click `Register Online` and sign the transaction.

_Note: The first time you register a dualSTAKE account online will require a 2 ALGO fee for protocol rewards eligibility._

![](./keyreg.png)

## Claim your node runner rewards

In the `Manage Node` panel, you can click the `CLAIM` button to withdraw your accrued noderunner fees.

![](./noderunner.png)

## Transfer the node runner role

If you want to transfer the noderunner role to another account, you can do so through the `Manage Node` panel.

Click `Manage`, then `Transfer Noderunner Role` and fill in the address you want to set as the node runner.

_Note: before you can transfer the node runner role, you need to withdraw any accrued node runner fees._

## Roadmap feature: Monitoring & Intervention

In the future, we intend to develop monitoring for node runners' consensus participation. If a node is not participating properly over an extended period of time, a Myth node will be temporarily allocated to the dualSTAKE pool (without changing the node runner fees/manager account)

The node runner must then restore their node to proper operation and issue a new key registration with their keys to take back control from the myth finance backup node.

If they fail to restore in good time, the node runner account will be changed on the contract to a new runner. Accrued fees will be distributed to the node runner before this change.
