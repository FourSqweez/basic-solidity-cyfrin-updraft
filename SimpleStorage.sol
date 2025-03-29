
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage {
    // favoriteNumber gets initialized to 0 if no value is given
    uint256 public favoriteNumber; // 0


    function store(uint256 _favoriteNumber) public  {
        favoriteNumber = _favoriteNumber;
    }

    // view, pure function no need to spend gas, no need to send transaction
    function retrive() public  view returns(uint256) {
        return favoriteNumber;
    }



}