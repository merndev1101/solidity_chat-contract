//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract foreverChat{
    address owner = msg.sender;

     address public firstPerson ;
    address public secondPerson ;

    string[]  public allMessages ;
      



    constructor( address _secondPerson) public {

          firstPerson = msg.sender;
          secondPerson = _secondPerson;


    }

      function arrayMessageLength() public view returns(uint){
            uint x = allMessages.length;
            return x ;
      }

    function data() public view returns(address , address  ){


         return (firstPerson , secondPerson )   ;

    }


    function messageInput(string memory _message) public  {
          require(msg.sender == firstPerson || msg.sender == secondPerson , "sorry your address is not allowed to do Message");

      
         if( msg.sender == firstPerson ){
              allMessages.push(_message  );
         }
         else if (msg.sender == secondPerson){
               allMessages.push(string(bytes.concat(bytes(_message), " ", bytes("second"))));
         }
    }


    }
