
@tag
Feature: Everything about your Pets
  Descrição da feature

Background:
	Given path 'store'

	@MetodoGet
		Scenario: Find store by ID
		Given url UrlBase
	  And path 'order/1'
 	 	When method GET
 	 	Then status 200
  @MetodoPost
  	Scenario: Add a new pet
    Given url UrlBase
    And request {"id":1,"category":{"id":45,"name":"Pedrinho"},"name":"Pedrinho","photoUrls":["string"],"tags":[{"id":45,"name":"Pedrinho"}],"status":"pending"}
    When method POST
    Then status 200