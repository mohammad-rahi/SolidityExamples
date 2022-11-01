// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract DataLocations {
    uint256[] public arr;

    mapping(uint256 => address) map;

    struct MyStruct {
        uint256 foo;
    }

    mapping(uint256 => MyStruct) myStructs;

    function f() public {
        _f(arr, map, myStructs[1]);

        MyStruct storage myStruct = myStructs[1];
        MyStruct memory myMemStruct = myStructs[0];
    }

    function _f(
        uint[] storage arr,
        mapping (uint=>address) storage _map;
        MyStruct storage _myStruct;
    ) internal {
        
    }

    function g(uint[] memory _arr) public returns (uint[] memory) {
        
    }

    function h(uint[] calldata _arr) external {
        
    }
}
