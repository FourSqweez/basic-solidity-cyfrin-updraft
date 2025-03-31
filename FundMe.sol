
// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract FundMe {
    function fund() public payable  {
        // Allow users to send $
        // Have a minimum $ sent
        // 1. How do we send ETH to this contract?

        require(msg.value > 1e18, "didn't send enough ETH"); // 1e18 = 1 ETH = 1000000000000000000 = 1 * 10 ** 18
    }

    // function withdraw() public {}
}