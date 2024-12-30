# Immutability

## Smart contract code

Smart contract code is upgradable with a 2 week time-lock.

The hashes of the proposed code upgrade will be published in advance for review by the community.

Users who do _not_ want to upgrade the contract have the option of "protesting".

### Protesting upgrades

"Protesting" provides users with a way to indicate that a specific upgrade is a deal-breaker for them.

This is a programmatically enforced exit from the dualSTAKE token, conditional on the upgrade taking place. 

Users wishing to protest a proposed upgrade can lock up their LST tokens on the contract.

For the platform operator to upgrade the code, they must first "dissolve" all protesting user tokens:

- redeem the tokens
- send them their `ALGO`+ASA equivalent to the user that deposited them

_Note: when dissolving protesting stake, funds flow from the contract to the user directly, without intermediation by the platform operator._

An upgrade can not take place unless:

- 2 weeks have elapsed since it was scheduled
- All protesting stake has been removed and returned

If enough stake is locked up as protesting, the platform operator may choose to cancel a planned upgrade, in which case the protesting stake will be sent back to users as-is, without redemption.

## Fee Configuration

Fee configuration changes to the contract will be time-delayed.

The "fee admin" role will be able to change the fee rates:

- with a time delay of 2 weeks before effect
- with a max change of the fee value of +/- 
  - As such, the fee admin would not be able to immediately change the fee rate to 100%, which would compromise dualSTAKE holders' rewards.

### Platform and Node operator Fee Rates

The platform fee rate value `pltbps` and noderunner fee rate value `nodbps` will be mutable with by the platform operator, 1 week delay before applicablity.

Additionally, the updated fee rate value must be within 500 basis points of the previous one (up to +/- 5% rate change at a time)

### Changing scheduled updates

If an update is issued while a previous update is scheduled, the timer will reset to the initial value of 1 week.

Updates can also be staggered, e.g. the platform fee rate and the node runner fee rate values can be part of the same update. The last update value will reset the timer to 1 week, as before.

The update will be applied automatically after the update timestamp elapses, either explicitly by a platform operator, or when the contract is first called to mint or redeem by any user.

Scheduled updates will be stored as in the `next_params_update` global storage value.

The structure of this field is:

```
0: [4 bytes] timestamp_applicable uint32
4: [2 bytes] platform_fee_rate uint16
6: [4 bytes] node_runner_fee_rate uint16
```
### Immediately updatable parameters

#### Admin role account

The admin address `admin` will be mutable by the `admin` role with immediate effect. Changing admin requires two transactions in an atomic group, one from the current admin and one from the future admin. This aims to eliminate the possibility of operator error.

### Fee admin

The fee admin address `fee_admin` will be mutable by the `admin` and `fee_admin` roles with immediate effect.

### Noderunner

The node runner address `noderunner` will be mutable by the `noderunner` and `fee_admin` roles with immediate effect.

Changing the noderunner address requires withdrawing noderunner fees. This prevents the fee admin role from subverting the node runner fees.

