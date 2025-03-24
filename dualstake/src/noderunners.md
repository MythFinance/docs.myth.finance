# Running a dualSTAKE node

dualSTAKE contracts currently operate with a single escrow account. A node runner is appointed to participate on behalf of dualSTAKE by the ASA leadership or Myth Finance.

Noderunners accrue fees from rewards, in ALGO. Fees can withdrawn at any time.

The node runner account can:
- change the participation keys of the contract, as well as the online/offline state.
- change the noderunner account to another address
- withdraw accrued noderunner fees

The "fee admin" role held by Myth Finance can also perform these actions.

_Note: at launch, myth nodes may run the dualSTAKE contracts for a brief period, until the web interface for node management is complete._

## Roadmap feature: Monitoring & Intervention

Myth Finance will monitor dualSTAKE node runner participation. If a node is not participating properly over an extended period of time, a Myth node will be temporarily allocated to the dualSTAKE pool (without changing the noderunner fees/manager account)

The node runner must then restore their node to proper operation and issue a new key registration with their keys to take back control from the myth finance backup node.

If they fail to restore in good time, the noderunner account will be changed on the contract to a new runner. Accrued fees will be distributed to the node runner before this change.
