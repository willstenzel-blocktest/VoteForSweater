pragma solidity 0.4.25;

import "./VoteForSweater.sol";

contract TestVoteForSweater is VoteForSweater {

  function test_sweaterVote() {
    sweaterVote("2");
    assert(sweaterMap[msg.sender] == "2");
  }
}
