pragma solidity 0.4.25;

import "./VoteForSweaterV3.sol";

contract TestVoteForSweaterV3 is VoteForSweaterV3 {

  function test_sweaterVote() {
    // Voting for a valid option 'blue'
    uint blueVotes = getVotes("blue");
    assert(checkAlreadyVoted(msg.sender) == false);
    sweaterVote("blue");
    blueVotes += 1;
    assert(getVotes("blue") == blueVotes);
    assert(checkAlreadyVoted(msg.sender) == true);

    // Voting for an invalid option 'turtle neck'
    assert(getVotes("turtle neck") == 0);
    assert(checkAlreadyVoted(msg.sender) == false);
    sweaterVote("turtle neck");
    assert(getVotes("turtle neck") == 0);
    assert(checkAlreadyVoted(msg.sender) == false);
  }
}
