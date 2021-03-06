// SPDX-License-Identifier: MIT LICENSE

pragma solidity ^0.8.0;

import "./Train.sol";

interface ITrain {
    function addManyToTrainAndPack(address account, uint16[] calldata tokenIds) external;
    function randomSheriffOwner(uint256 seed) external view returns (address);
    function train(uint256) external view returns(uint16, uint80, address);
    function totalWestEarned() external view returns(uint256);
    function lastClaimTimestamp() external view returns(uint256);
    function setOldTokenInfo(uint256 _tokenId) external;

    function pack(uint256, uint256) external view returns(Train3.Stake memory);
    function packIndices(uint256) external view returns(uint256);

}