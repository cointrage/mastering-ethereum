pragma solidity ^0.4.19;

contract Faucet {

	function withdraw(uint withdraw_amount) public {
		// Limit withdrawal amount to 0.1 ETH
		require(withdraw_amount >= 100000000000000000);

		msg.sender.transfer(withdraw_amount);
	}

	// Accept any incoming amount
	function () public payable {}

}