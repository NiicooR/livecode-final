// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

contract ProposalContract {

  struct Proposal {
    bytes32 title;
    bytes32 description;
  }

  mapping(uint => Proposal) public proposals;
  uint public proposalCount;

  function addTask(bytes32 _title, bytes32 _description ) public {
    proposalCount++;
    proposals[proposalCount] = Proposal(_title, _description);
  }

//   function getTasks() public view returns (bytes32, bool){
//     return (tasks[_taskId].description, tasks[_taskId].completed);
//   }

  function getTaskCount() public view returns (uint) {
    return proposalCount;
  }
}