# Protesting upgrades

dualSTAKE contracts support [smart contract code upgrades](./immutability.html) under certain guardrails.

The intent behind upgradability is to evolve dualSTAKE with more features, such as support for new AMMs, multiple node runners, etc.

**Code upgrades can change the rules of the system, as well as set funds in jeopardy.** For this reason, code upgrades are time-delayed by 2 weeks, and the Myth Finance team will present the upgraded code in advance. The integrity of the (scheduled) upgrade will be guaranteed via cryptographic hashes - which means that we will be bound to upgrade _only_ to the version we present.

As a user, you can protest a scheduled upgrade with your dualSTAKE tokens:

> "Protesting" enables users to signal that a scheduled upgrade is a deal-breaker for them.
>
> Protesting stake is locked up on the dualSTAKE contract in order to soft-block the upgrade.
> 
> For the upgrade to proceed, protesting stake must first be returned to users in ALGO+ASA form ("dissolved")

### How it works

Users wishing to protest a proposed upgrade can do so by locking up their dualSTAKE tokens on the contract.

**Before a smart contract upgrade can take place, all protesting user tokens must be "dissolved", i.e. redeemed and returned to the protesting users in `ALGO`+ASA form.**

Protesting stake dissolution takes place **before** the upgrade and is enforced by the smart contract code. When dissolving protesting stake, funds flow from the contract directly to the user, without intermediation by the platform operator.

An upgrade can not take place unless:

- 2 weeks have elapsed since it was scheduled
- All protesting stake has been dissolved, i.e. redeemed and returned to protesting users

If enough stake is locked up as protesting, the platform operator may choose to cancel a planned upgrade, in which case the protesting stake will be sent back to users in dualSTAKE form, e.g. `oraALGO`.

**Note: if protesting users have opted out of the dualSTAKE asset, or the paired asset, these will be delivered to their ARC-59 asset inbox.**

