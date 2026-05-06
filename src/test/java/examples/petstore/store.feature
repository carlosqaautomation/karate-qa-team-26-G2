Feature: Casos de prueba del modulo store

  Scenario: CP01 - Obtener inventario mascotas
    Given url "https://petstore.swagger.io/v2"
    And path "/store/inventory"
    When method get
    Then status 200

  Scenario: CP02 - Crear una orden
    Given url "https://petstore.swagger.io/v2"
    And path "/store/order"
    And request
    """
      {
        "id": 12,
        "petId": 100,
        "quantity": 5,
        "shipDate": "2026-04-25T02:37:19.539Z",
        "status": "placed",
        "complete": true
      }
    """
    When method post
    Then status 200
    And match response contains { "id": 12 }

  Scenario: CP03 - Crear una orden
    Given url "https://petstore.swagger.io/v2"
    And path "/store/order"
    And request
    """
      {
        "id": 12,
        "petId": 100,
        "quantity": 5,
        "shipDate": "2026-04-25T02:37:19.539Z",
        "status": "placed",
        "complete": true
      }
    """
    When method post
    Then status 200
    #And match response contains { "id": 12,"petId": 100,"quantity": 5,"status": "placed","complete": true }
    And match response.id == 12
    And match response.petId == 100
    And match response.quantity == 5



    