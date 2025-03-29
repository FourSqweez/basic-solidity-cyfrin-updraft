
// EVM, Thereum Virtual Machine
// Ethereum, Polygon, Arbitrum, Optimism, Zksync

// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract SimpleStorage {
    // favoriteNumber gets initialized to 0 if no value is given
    uint256 myFavoriteNumber; // 0

    // uint256[] listOfFavoriteNumbers; // [0, 78, 90]

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople; // []

    mapping(string => uint256) public nameToFavoriteNumber;


    function store(uint256 _favoriteNumber) public virtual   {
        myFavoriteNumber = _favoriteNumber;
    }

    // view, pure function no need to spend gas, no need to send transaction
    function retrive() public  view returns(uint256) {
        return myFavoriteNumber;
    }

    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

contract SimpleStorage2{}
contract SimpleStorage3{}