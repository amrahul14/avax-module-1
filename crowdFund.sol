// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Crowdfunding {
    
    uint256 public fundingGoal = 100;
    uint256 public totalFunds = 0;

    function contribute(uint256 amount) external payable {

        uint prevAmount = totalFunds;
        if (amount < 10 ) {
            revert("Minimum contribution is 10");
        }

        require(totalFunds >= fundingGoal, "funding goal already reached");
        totalFunds += amount;

        assert(prevAmount + amount == totalFunds );
    }
}
