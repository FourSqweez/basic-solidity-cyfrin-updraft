

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

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


    function store(uint256 _favoriteNumber) public  {
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

contract StorageFactory{
    // uint256 public favoriteNumber
    SimpleStorage public simpleStorage;

    function createSimpleStorageContract() public {
        // How does the storeage factory know what simple storage looks like?
        simpleStorage = new SimpleStorage();
    }

}