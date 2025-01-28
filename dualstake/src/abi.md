# Contract ABI

[Download](./contract.json)

```
{
  "name": "dualSTAKE Contract",
  "methods": [
    {
      "name": "register_online",
      "args": [
        {
          "type": "byte[]",
          "name": "selection_key"
        },
        {
          "type": "byte[]",
          "name": "voting_key"
        },
        {
          "type": "byte[]",
          "name": "sp_key"
        },
        {
          "type": "uint64",
          "name": "first_round"
        },
        {
          "type": "uint64",
          "name": "last_round"
        },
        {
          "type": "uint64",
          "name": "key_dilution"
        }
      ],
      "returns": {
        "type": "void"
      },
      "desc": "Fee admin method to send keyreg online for an escrow account"
    },
    {
      "name": "register_offline",
      "args": [
        {
          "type": "address",
          "name": "address"
        }
      ],
      "returns": {
        "type": "void"
      },
      "desc": "Fee admin method to send keyreg offline for an escrow account"
    },
    {
      "name": "init_storage",
      "args": [],
      "returns": {
        "type": "void"
      },
      "desc": "Admin method to init storage. this will be needed as I am reusing an existing app"
    },
    {
      "name": "withdraw_platform_fees",
      "args": [
        {
          "type": "uint64",
          "name": "amt"
        }
      ],
      "returns": {
        "type": "void"
      }
    },
    {
      "name": "mint",
      "args": [],
      "returns": {
        "type": "void"
      },
      "desc": "Public method. Mint dualSTAKE lst\nprevious transaction in group must be payment in ALGO if rate != 0, 2 txns before must be payment in ASA if must_swap, swap send dualSTAKE to caller"
    },
    {
      "name": "burn",
      "args": [],
      "returns": {
        "type": "void"
      }
    },
    {
      "name": "nullun",
      "args": [],
      "returns": {
        "type": "void"
      },
      "desc": "Public empty method for opcode budget increase"
    },
    {
      "name": "create_asset",
      "args": [
        {
          "type": "byte[]",
          "name": "lst_asa_name"
        },
        {
          "type": "byte[]",
          "name": "lst_unit_name"
        }
      ],
      "returns": {
        "type": "void"
      }
    },
    {
      "name": "configure",
      "args": [
        {
          "type": "byte[]",
          "name": "lst_asa_name"
        },
        {
          "type": "byte[]",
          "name": "lst_unit_name"
        },
        {
          "type": "uint64",
          "name": "asa_id"
        },
        {
          "type": "byte[]",
          "name": "lp_type"
        },
        {
          "type": "byte[]",
          "name": "lp_id"
        },
        {
          "type": "uint64",
          "name": "platform_fee_bps"
        },
        {
          "type": "uint64",
          "name": "noderunner_fee_bps"
        },
        {
          "type": "address",
          "name": "admin_addr"
        },
        {
          "type": "address",
          "name": "noderunner_addr"
        }
      ],
      "returns": {
        "type": "void"
      }
    },
    {
      "name": "change_admin_1",
      "args": [
        {
          "type": "address",
          "name": "new_admin"
        }
      ],
      "returns": {
        "type": "void"
      }
    },
    {
      "name": "change_admin_2",
      "args": [],
      "returns": {
        "type": "void"
      }
    },
    {
      "name": "change_noderunner",
      "args": [
        {
          "type": "address",
          "name": "new_noderunner"
        }
      ],
      "returns": {
        "type": "void"
      }
    },
    {
      "name": "change_feeaddr",
      "args": [
        {
          "type": "address",
          "name": "new_feeaddr"
        }
      ],
      "returns": {
        "type": "void"
      }
    }
  ],
  "networks": {}
}
```
