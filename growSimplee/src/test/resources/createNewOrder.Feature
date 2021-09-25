@CreateNewOrder
  Feature: I try to validate different ways to create a new order
    Scenario:I create a new order for Only Shipment through Grow Simplee
      Given I create a new order using given json
      """
      {
    "automation": true,
    "orders": [
        {
            "channel_id": "manual",
            "channel_order_id": "-BG2dAmouX25",
            "order_amount": 100,
            "paymentType": "COD",
            "billing_address": {
                "city": "New York",
                "name": "Yash Sharma",
                "email": "saurabhsinha209@gmail.com",
                "msisdn": "8377086507",
                "country": "India",
                "pinCode": 141006,
                "address1": "Baker Street",
                "address2": " ",
                "province": "Uttar Pradesh",
                "last_name": "Sharma",
                "first_name": "Yash"
            },
            "shipping_address": {
                "city": "New York",
                "name": "Yash Sharma",
                "email": "yash@growsimplee.com",
                "msisdn": "8377086507",
                "country": "India",
                "pinCode": 141006,
                "address1": "Baker Street",
                "address2": " ",
                "province": "Uttar Pradesh",
                "last_name": "Sharma",
                "first_name": "Yash"
            },
            "suborders": [
                {

                    "length" : 10,
                    "breadth" : 20,
                    "height" : 90,
                    "dead_weight" : 12,
                    "channel_suborder_id": "Abc",

                    "codAmount": "10",
                    "suborder_value":"200"

                }
            ]
        }
    ]
}
      """
      Then The operation is successful
      And the field "status" response should contain "Success"
      And response should only contain these codes on successful order

  Scenario:I create a new order for Both Warehouse & Shipment through Grow Simplee
    Given I create a new order using given json
      """
      {
    "automation": true,
    "orders": [
        {
            "channel_id": "manual",
            "channel_order_id": "-BG2dAmouX25",
            "order_amount": 100,
            "paymentType": "COD",
            "billing_address": {
                "city": "New York",
                "name": "Yash Sharma",
                "email": "saurabhsinha209@gmail.com",
                "msisdn": "8377086507",
                "country": "India",
                "pinCode": 141006,
                "address1": "Baker Street",
                "address2": " ",
                "province": "Uttar Pradesh",
                "last_name": "Sharma",
                "first_name": "Yash"
            },
            "shipping_address": {
                "city": "New York",
                "name": "Yash Sharma",
                "email": "yash@growsimplee.com",
                "msisdn": "8377086507",
                "country": "India",
                "pinCode": 141006,
                "address1": "Baker Street",
                "address2": " ",
                "province": "Uttar Pradesh",
                "last_name": "Sharma",
                "first_name": "Yash"
            },
            "suborders": [
                {

                    "length" : 10,
                    "breadth" : 20,
                    "height" : 90,
                    "dead_weight" : 12,
                    "channel_suborder_id": "Abc",

                    "codAmount": "10",
                    "suborder_value":"200"

                }
            ]
        }
    ]
}
      """
    Then The operation is successful
    And the field "status" response should contain "Success"
    And response should only contain these codes on successful order

    Scenario:I create a invalid order for Only Shipment through Grow Simplee
      Given I create a new order using given json
      """
      {
    "automation": true,
    "orders": [
        {
            "channel_id": "manual",
            "channel_order_id": "-BG2dAmouX25",
            "order_amount": 100,
            "paymentType": "COD",
            "billing_address": {
                "city": "New York",
                "name": "Yash Sharma",
                "email": "saurabhsinha209@gmail.com",
                "msisdn": "8377086507",
                "country": "India",
                "pinCode": 141006,
                "address1": "Baker Street",
                "address2": " ",
                "province": "Uttar Pradesh",
                "last_name": "Sharma",
                "first_name": "Yash"
            },
            "shipping_address": {
                "city": "New York",
                "name": "Yash Sharma",
                "email": "yash@growsimplee.com",
                "msisdn": "8377086507",
                "country": "India",
                "pinCode": 141006,
                "address1": "Baker Street",
                "address2": " ",
                "province": "Uttar Pradesh",
                "last_name": "Sharma",
                "first_name": "Yash"
            },
            "suborders": [
                {

                    "length" : 10,
                    "breadth" : 20,
                    "height" : 90,
                    "dead_weight" : 12,
                    "channel_suborder_id": "Abc",

                    "codAmount": "10",
                    "suborder_value":"200"

                }
            ]
        }
    ]
}
      """
      Then The operation is successful
      And the field "status" response should contain "Success"
      And response should only contain these codes on unsuccesful order

    Scenario:I create a new order for Both Warehouse & Shipment through Grow Simplee
      Given I create a new order using given json
      """
      {
    "automation": true,
    "orders": [
        {
            "channel_id": "manual",
            "channel_order_id": "-BG2dAmouX25",
            "order_amount": 100,
            "paymentType": "COD",
            "billing_address": {
                "city": "New York",
                "name": "Yash Sharma",
                "email": "saurabhsinha209@gmail.com",
                "msisdn": "8377086507",
                "country": "India",
                "pinCode": 141006,
                "address1": "Baker Street",
                "address2": " ",
                "province": "Uttar Pradesh",
                "last_name": "Sharma",
                "first_name": "Yash"
            },
            "shipping_address": {
                "city": "New York",
                "name": "Yash Sharma",
                "email": "yash@growsimplee.com",
                "msisdn": "8377086507",
                "country": "India",
                "pinCode": 141006,
                "address1": "Baker Street",
                "address2": " ",
                "province": "Uttar Pradesh",
                "last_name": "Sharma",
                "first_name": "Yash"
            },
            "suborders": [
                {

                    "length" : 10,
                    "breadth" : 20,
                    "height" : 90,
                    "dead_weight" : 12,
                    "channel_suborder_id": "Abc",

                    "codAmount": "10",
                    "suborder_value":"200"

                }
            ]
        }
    ]
}
      """
      Then The operation is successful
      And the field "status" response should contain "Success"
      And response should only contain these codes on unsuccesful order
