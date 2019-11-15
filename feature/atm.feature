Feature: Deposit money into account

Background:
	Amount of money in my account is 4444 Baht

Scenario: Deposit money
	When I deposit 4444 Baht into my account
	Then Amount of money in my account should be 8888 Baht