Feature: Casos de booking


  Scenario: Filtro por fecha de libros
    Given url "https://restful-booker.herokuapp.com"
    And path "/booking"
    And params { checkin: "2014-03-13" , checkout: "2020-05-21" }
    #And params checkin = "2014-03-13" , checkout = "2020-05-21"
    When method get
    Then status 200