Feature: Keep track of inventory

Background:
	Given a product hat with quantity 50 in stock
	Given a product skirt with quantity 50 in stock

Scenario: Customer buy one product
	When customer buy skirt with quantity 6
	Then skirt quantity in stock should be 44

Scenario: Customer buy multiple products
	When customer buy hat with quantity 5
	And customer buy skirt with quantity 3
	Then hat quantity in stock should be 45
	And skirt quantity in stock should be 41

Scenario: Re-order one product
	When I order hat with quantity 10
	Then hat quantity in stock should be 60

Scenario: Re-order multiple product
	When I order hat with quantity 50
	And I order skirt with quantity 20
	Then hat quantity in stock should be 100
	Then skirt quantity in stock should be 70