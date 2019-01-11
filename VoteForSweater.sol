pragma solidity 0.4.25;

contract VoteForSweater {

  mapping(string => uint) sweaterMap;

  event SweaterEvent(address sender, string description);

  function sweaterVote(string memory description) public {
    sweaterMap[description] += 1;
    emit SweaterEvent(msg.sender, description);
  }

  function getVotes(string memory description) view public returns (uint votes) {
      return sweaterMap[description];
  }
}
