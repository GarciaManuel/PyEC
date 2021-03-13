// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.8.0;
contract Access {
    
    enum Status {
        Unregistered,
        Citizen,
        Representative
    }

    struct Participant { 

        string sat_id; 
        Status status; 
        bool exists;
    } 
    
     // Creating mapping 
    mapping (address => Participant) participants; 

        //Function adding values to the mapping 
    function adding_values() public { 
        
        Participant storage participant = participants[0xDEE7796E89C82C36BAdd1375076f39D69FafE252]; 
  
        participant.sat_id = "GAHM9808057Z4"; 
        participant.status = Status.Citizen; 
        participant.exists = true;
        
  
    } 
      
     function get_participant_type(address request) public view
        returns (uint)
    {
        Participant storage participant = participants[request];
        return uint(participant.status);
    }    
  
}