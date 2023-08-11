
@tag
Feature: Everything about your Pets
  Descrição da feature

Background:
	Given path 'pet'

  @tag1
  Scenario: Finds Pets by status
    Given url UrlBase
    And path 'findByStatus'
    And param status = 'available'
    When method GET
    Then status 200
    And match response[0].name contains 'fish'

	@MetodoGet
  	Scenario: Find pet by ID
    Given url UrlBase
    And path  '45'
    When method GET
    Then status 200

  @MetodoPost
  	Scenario: Add a new pet
    Given url UrlBase
    And request {"id":45,"category":{"id":45,"name":"Pedrinho"},"name":"Pedrinho","photoUrls":["string"],"tags":[{"id":45,"name":"Pedrinho"}],"status":"pending"}
    When method POST
    Then status 200
    
