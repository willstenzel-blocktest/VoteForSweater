pragma solidity 0.4.25;

contract VoteForSweaterV3 {

  mapping(string => uint) sweaterMap;
  string[] public colorChoices = ["blue", "green", "red", "brown"];
  mapping(address => bool) alreadyVoted;

  event SweaterEvent(address sender, string color);

  function sweaterVote(string memory color) public {
    require(alreadyVoted[msg.sender] == false);
    for (uint i = 0; i < colorChoices.length; i++) {
        if (keccak256(colorChoices[i]) == keccak256(color)) {
            sweaterMap[color] += 1;
            alreadyVoted[msg.sender] = true;
            emit SweaterEvent(msg.sender, color);
            break;
        }
    }
  }

  function getVotes(string memory color) public view returns (uint votes) {
      return sweaterMap[color];
  }

  function checkAlreadyVoted(address voteAddress) public view returns (bool voted) {
      return alreadyVoted[voteAddress];
  }
}
