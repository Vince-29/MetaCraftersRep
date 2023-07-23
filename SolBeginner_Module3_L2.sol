// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract EtherValueConverter {
    uint public etherVal;
    uint public weiVal;
    uint public gWeiVal;

  function getUnits(uint _ether) public {
        etherVal = _ether;
        weiVal = _ether * 10**18;
        gWeiVal = _ether * 10**9;
    }
}
