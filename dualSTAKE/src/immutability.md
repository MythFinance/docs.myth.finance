# Immutability

## Smart contract code

Smart contract code is upgradable with a 2 week time-lock.

The hashes of the proposed code upgrade will be published in advance for review by the community, along with the contract source code that produces them.

The smart contract will only accept a code upgrade that matches the published hashes (stored in the contracts' global storage) after the time lock elapses.

> Users who do _not_ agree with the contract upgrade can redeem their dualSTAKE tokens immediately, but they can also signal their disagreement without exiting the system by ["protesting" with their stake](./protesting.html).

### Technical details 

Scheduled contract upgrades can be seen in the global storage variable `contract_upgrade`, which has the following structure:

```
0: [4 bytes] timestamp_applicable uint32
4: [32 bytes] approval_page_1_hash bytes
36: [32 bytes] approval_page_2_hash bytes
```

dualSTAKE smart contract code may exceed 4KB, which is the largest value that can be hashed in the AVM. For this reason, the program is hashed in 4KB "pages". When an upgrade takes effect, each 4KB-sized program page is hashed with SHA512/256 and compared against the stored hash in the `contract_upgrade` storage value. The upgrade is only allowed to take effect if all hashes match.

## Fee Configuration

Platform and node runner fees are configurable. **Fee increases are time-delayed**, whereas fee decreases take effect immediately.

The "fee admin" role, controller by the Myth Finance team, will be able to increase the fee rates:

- with a time delay of 2 weeks before effect
- with a **maximum change** of +2.5% from the previous value

This protects dualSTAKE holders from the Myth Finance team being able to immediately change the fee rate to 100%, which would compromise their rewards.

### Platform and Node operator Fee Rates

Aside from the Myth Finance frontend, fee rates and parameters can be found in dualSTAKE contracts' global state variables.

- Platform fee rate value: `platform_fee_bps` (in basis points)
- Node runner fee rate value: `noderunner_fee_bps` (in basis points)
- Maximum change: `fee_update_max_delta` (in basis points, as % change)
- Time-delay duration for fee increases: `fee_update_period` (in seconds)

### Changing scheduled updates

If an update is issued while a previous update is scheduled, the timer will reset.

Updates can also be staggered, e.g. the platform fee rate and the node runner fee rate values can be part of the same update.

The update will be applied automatically after the update timestamp elapses, either explicitly by a platform operator, or when the contract is first called to mint or redeem by any user.

Scheduled updates will be stored as in the `next_params_update` global storage value.

The structure of this field is:

```
0: [8 bytes] timestamp_applicable uint64
8: [8 bytes] node_runner_fee_rate uint64
16: [8 bytes] platform_fee_rate uint64
```
### Immediately updatable parameters

#### Admin role account

The admin address `admin` will be mutable by the `admin` role with immediate effect. Changing admin requires two transactions in an atomic group, one from the current admin and one from the future admin. This aims to eliminate the possibility of operator error.

#### Fee admin

The fee admin address `fee_admin` will be mutable by the `admin` and `fee_admin` roles with immediate effect.

#### Node runner

The node runner address `noderunner` will be mutable by the `noderunner` and `fee_admin` roles with immediate effect.

Changing the node runner address requires withdrawing node runner fees. This prevents the fee admin role from subverting the node runner fees.

#### Fee Decreases

Fees can be decreased immediately as described above.
