// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.8.0;
import "../contracts/Access.sol";

contract AccessTest {
   

    Access accessToTest;
    function beforeAll () public {

        accessToTest = new Access();
        accessToTest.adding_values();
    }
    
    function checkPerson () public view returns (bool) {
        return accessToTest.get_participant_type(0xDEE7796E89C82C36BAdd1375076f39D69FafE252) ==  1;
    }
    
}
