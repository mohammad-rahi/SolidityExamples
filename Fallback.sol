// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Fallback {
    event Log(string func, uint256 gas);

    fallback() external payable {
        emit Log("fallback", gasleft());
    }

    receive() external payable {
        emit Log("receive", gasleft());
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

contract SendToFallback {
    function transferToFallback(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function callFallback(address payable _to) public payable {
       (bool sent, ) = _to.call{value: msg.value}("");
       require(sent, "Failed to send Ether"); 
    }
}
