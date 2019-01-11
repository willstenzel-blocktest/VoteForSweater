pragma solidity 0.4.25;

contract VoteForSweaterV2 {

  mapping(string => uint) sweaterMap;
  string[] public colorChoices = ["blue", "green", "red", "brown"];

  event SweaterEvent(address sender, string color);

  function sweaterVote(string memory color) public {
    for (uint i = 0; i < colorChoices.length; i++) {
        if (keccak256(colorChoices[i]) == keccak256(color)) {
            sweaterMap[color] += 1;
            emit SweaterEvent(msg.sender, color);
            break;
        }
    }
  }

  function getVotes(string memory color) view public returns (uint votes) {
      return sweaterMap[color];
  }
}
