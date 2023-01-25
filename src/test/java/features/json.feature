Feature: json feature testing
  Scenario: json reader parser

    * def jsonObject =
    """
    [
    {
    "name":"Tom",
    "city":"Istanbul",
    "age":"18"
    },
     {
    "name":"Nalan",
    "city":"Ank",
    "age":"28"
    }
    ]

    """
    * print jsonObject
    * print jsonObject[0]
    * print jsonObject[1].name +" "+ jsonObject[1].city + " " + jsonObject[1].age