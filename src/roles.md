# Roles

The dualSTAKE smart contract has a number of privileged roles that can perform authorized actions:

## Admin

A multisig account controlled by the core team.

Can perform the following actions:

- Queue smart contract upgrade
- Execute vested smart contract upgrade (shared with `fee admin` role)
- Cancel smart contract upgrade (shared with the `fee admin` role)
- Change `admin` role address
- Change `fee admin` role address (shared with the `fee admin` role)

## Fee Admin

A lower-security account controlled by the core team.

Can perform the following actions:

- Execute vested smart contract upgrade (shared with `admin` role)
- Cancel smart contract upgrade (shared with the `admin` role)
- Change `fee admin` role address (shared with the `admin` role)
- Queue fee update
- Cancel queued fee update
- Withdraw platform fees
- Withdraw node runner fees to node runner address (shared with `node runner` role)
- Perform keyreg online transaction (shared with `node runner` role)
- Perform keyreg offline transaction (shared with `node runner` role)
- Change node runner address (shared with `node runner` role)
  - Condition: node runner fees must be withdrawn
- Dissolve protesting stake
  - In order to execute a protested upgrade 
- Return protesting stake
  - After a protested upgrade is cancelled

## Node runner

Account controlled by node runner. Used to withdraw fees and manage key registrations.

- Change node runner address (shared with `fee admin` role)
  - Condition: node runner fees must be withdrawn
- Withdraw node runner fees (shared with `fee admin` role)
- Perform keyreg online transaction (shared with `fee admin` role)
- Perform keyreg offline transaction (shared with `fee admin` role)
