Feature: I try to validate different ways to create a new order using inavlid values
  Scenario:I create a new order for Only Shipment through Grow Simplee with invalid pincode then I should get an error
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
                "pinCode": 14100600,
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
                "pinCode": 14100600,
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
    Then The operation is successful with code "41001"
    And the field "status" response should contain "Success"

  Scenario:I create a new order for Only Shipment through Grow Simplee with invalid phone then I should get an error
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
                "msisdn": "83770865000007",
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
                "msisdn": "83770865070000",
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
    Then The operation is successful with code "41002"
    And the field "status" response should contain "Success"
