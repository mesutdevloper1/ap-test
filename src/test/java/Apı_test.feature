Feature: ilk Rest Api Test
  Scenario: ilk Senaryo

  Scenario: Get değeri
    Given url 'http://localhost:8080/user/get'
    When method GET
    Then status 200

  Scenario: İd için Get sorgusu
    Given url 'http://localhost:8080/user/get'
    When method GET
    Then status 200
    And match $ == {id:"1234",name:"John Smith"}

  Scenario: Get tam testi
    Given url 'http://localhost:8097/user/create'
    And request { id: '1234' , name: 'John Smith'}
    When method POST
    Then status 200
    And match $ contains {id:"#notnull"}