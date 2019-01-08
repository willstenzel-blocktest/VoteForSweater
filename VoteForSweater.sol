pragma solidity 0.4.25;

contract VoteForSweater {

  mapping(address => string) sweaterMap;

  event SweaterEvent(address sender, string value);

  function sweaterVote(string memory val) public {
    sweaterMap[msg.sender] = val;
    // emitting event
    emit SweaterEvent(msg.sender, val);
  }
} 
