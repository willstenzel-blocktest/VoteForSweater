pragma solidity 0.4.25;

import "./VoteForSweaterV3.sol";

contract TestVoteForSweaterV3 is VoteForSweaterV3 {

  function test_sweaterVoteV3() {
    // Voting for an invalid option 'turtle neck'
    uint turtleneckVotes = 0;
    bool voted = checkAlreadyVoted(msg.sender);
    assert(getVotes("turtle neck") == turtleneckVotes);
    assert(voted == false);
    sweaterVote("turtle neck");
    voted = checkAlreadyVoted(msg.sender);
    assert(getVotes("turtle neck") == turtleneckVotes);
    assert(voted == false);

    // Voting for a valid option 'blue'
    uint blueVotes = getVotes("blue");
    assert(voted == false);
    sweaterVote("blue");
    blueVotes += 1;
    assert(getVotes("blue") == blueVotes);
    voted = checkAlreadyVoted(msg.sender);
    assert(voted == true);

    bool result = address(this).call(bytes4(keccak256("sweaterVote('green')")));
    assert(result == false);
  }
}
