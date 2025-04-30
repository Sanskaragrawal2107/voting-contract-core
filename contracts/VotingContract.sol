// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SimpleDAO {
    struct Proposal {
        string description;
        uint256 voteCount;
        bool executed;
    }

    address public admin;
    mapping(address => bool) public members;
    Proposal[] public proposals;

    constructor(address[] memory _members) {
        admin = msg.sender;
        for (uint i = 0; i < _members.length; i++) {
            members[_members[i]] = true;
        }
    }

    modifier onlyMember() {
        require(members[msg.sender], "Not a DAO member");
        _;
    }

    function createProposal(string memory description) external onlyMember {
        proposals.push(Proposal(description, 0, false));
    }

    mapping(uint256 => mapping(address => bool)) public hasVoted;

    function vote(uint256 proposalId) external onlyMember {
        require(!hasVoted[proposalId][msg.sender], "Already voted");
        proposals[proposalId].voteCount += 1;
        hasVoted[proposalId][msg.sender] = true;
    }

    function executeProposal(uint256 proposalId) external {
        Proposal storage p = proposals[proposalId];
        require(p.voteCount > 1, "Not enough votes");
        require(!p.executed, "Already executed");
        p.executed = true;
        // Add logic to take action (send funds, call other contract, etc.)
    }
}
