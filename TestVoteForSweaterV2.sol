pragma solidity 0.4.25;

import "./VoteForSweaterV2.sol";

contract TestVoteForSweaterV2 is VoteForSweaterV2 {

  function test_sweaterVote() {
    assert(getVotes("turtle neck") == 0);
    sweaterVote("turtle neck");
    assert(getVotes("turtle neck") == 0);

    uint blueVotes = getVotes("blue");
    sweaterVote("blue");
    blueVotes += 1;
    assert(getVotes("blue") == blueVotes);
    sweaterVote("blue");
    blueVotes += 1;
    assert(getVotes("blue") == blueVotes);
  }
}
