
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
    And request {"id":1,"petId":"45","quantity":"2","shipDate":"2023-08-11T23:29:03.744Z", "status": "placed","complete": true}
    When method POST
    Then status 200
    