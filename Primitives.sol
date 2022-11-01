// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Premitives {
    bool public boo = true;

    uint8 public u8 = 1;
    uint256 public u256 = 456;
    uint256 public u = 123;

    int8 public i8 = -1;
    int256 public i256 = 456;
    int256 public i = -123;

    int256 public minInt = type(int256).min;
    int256 public maxInt = type(int256).max;

    address public addr = 0x302C278bFe06F8f522A4ED80Cbc2599Bc55dfa11;

    bytes1 a = 0xb5; // [10110101]
    bytes1 b = 0x56; //  [01010110]

    // Default values
    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defalutInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}
