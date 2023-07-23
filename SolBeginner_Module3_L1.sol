// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract storeVal {
    uint public number;
    bool public isTrue;
    string public SVal;
    address public ethAdd;

    // takes a value _number and assigns it to the state variable number
    function setNumber(uint _number) public{
        number = _number;
    }
    // returns the value of the state variable number
    function getNumber() public view returns (uint){
        return number;
    }

    function setBool(bool _isTrue) public{
        isTrue = _isTrue;
    }
    function getBool() public view returns (bool){
        return isTrue;
    }

    function setString(string memory _String) public{
        SVal = _String;
    }
    function getString() public view returns (string memory){
        return SVal;
    }

    function setAddress(address _address) public{
        ethAdd = _address;
    }
    function getAddress() public view returns(address){
        return ethAdd;
    }
}
