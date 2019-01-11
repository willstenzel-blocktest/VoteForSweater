pragma solidity 0.4.25;

import "./VoteForSweater.sol";

contract TestVoteForSweater is VoteForSweater {

  function test_sweaterVote() {
    uint blueVotes = getVotes("blue");
    sweaterVote("blue");
    blueVotes += 1;
    assert(getVotes("blue") == blueVotes);
    sweaterVote("blue");
    blueVotes += 1;
    assert(getVotes("blue") == blueVotes);
  }
}
