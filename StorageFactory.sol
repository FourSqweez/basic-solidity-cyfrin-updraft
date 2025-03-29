

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import { SimpleStorage, SimpleStorage2 } from './SimpleStorage.sol';

contract StorageFactory{
    // uint256 public favoriteNumber
    SimpleStorage public simpleStorage;

    function createSimpleStorageContract() public {
        // How does the storeage factory know what simple storage looks like?
        simpleStorage = new SimpleStorage();
    }

}