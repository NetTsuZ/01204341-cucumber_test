Feature: Keep track of inventory

Background:
	Given a product hat with quantity 50 in stock
	Given a product skirt with quantity 50 in stock

Scenario: Customer buy products
	When customer buy hat with quantity 5
	And customer buy skirt with quantity 3
	Then hat quantity in stock should be 45
	And skirt quantity in stock should be 41

Scenario: Re-order multiple product
	When I order hat with quantity 50
	And I order skirt with quantity 20
	Then hat quantity in stock should be 100
	Then skirt quantity in stock should be 70

Scenario: Product is breakdown
	When hat is breakdown with quantity 10
	And skirt is breakdown with quantity 5
	Then hat quantity in stock should be 40
	Then skirt quantity in stock should be 45