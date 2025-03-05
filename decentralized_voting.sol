pragma solidity ^0.8.0;

contract Voting {
    mapping(string => uint256) public votes;
    string[] public candidates;

    constructor(string[] memory _candidates) {
        candidates = _candidates;
    }

    function vote(string memory _candidate) public {
        votes[_candidate]++;
    }

    function getVotes(string memory _candidate) public view returns (uint256) {
        return votes[_candidate];
    }
}
