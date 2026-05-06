Feature: Casos de prueba del modulo usuario

  Scenario: CP01 - Actualizar USUARIO
    * def username = "pedro"
    Given url "https://petstore.swagger.io/v2"
    And path "/user/" + username
    And request
    """
      {
        "id": 0,
        "username": "jose",
        "firstName": "jose",
        "lastName": "perez",
        "email": "jose.perez@example.com",
        "password": "123456",
        "phone": "98766622",
        "userStatus": 0
      }
    """
    When method put
    Then status 200
    And match response contains { "code": 200,"type": "unknown"}


  Scenario: CP02 - Login exitoso
    Given url "https://petstore.swagger.io/v2"
    And path "/user/login"
    And param username = "carlos"
    And param password = "123456"
    When method get
    Then status 200
    And match response.message == "#string"