pragma solidity 0.4.25;

import "./VoteForSweaterV3.sol";

contract TestVoteForSweaterV3 is VoteForSweaterV3 {

  function test_sweaterVote() {
    assert(getVotes("turtle neck") == 0);
    assert(checkAlreadyVoted(msg.sender) == false);
    sweaterVote("turtle neck");
    assert(getVotes("turtle neck") == 0);
    assert(checkAlreadyVoted(msg.sender) == false);

    assert(getVotes("blue") == 0);
    assert(checkAlreadyVoted(msg.sender) == false);
    sweaterVote("blue");
    assert(getVotes("blue") == 1);
    assert(checkAlreadyVoted(msg.sender) == true);
  }
}
