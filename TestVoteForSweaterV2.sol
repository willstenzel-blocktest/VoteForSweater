pragma solidity 0.4.25;

import "./VoteForSweaterV2.sol";

contract TestVoteForSweaterV2 is VoteForSweaterV2 {

  function test_sweaterVote() {
    assert(getVotes("turtle neck") == 0);
    sweaterVote("turtle neck");
    assert(getVotes("turtle neck") == 0);

    assert(getVotes("blue") == 0);
    sweaterVote("blue");
    assert(getVotes("blue") == 1);
    sweaterVote("blue");
    assert(getVotes("blue") == 2);
  }
}
