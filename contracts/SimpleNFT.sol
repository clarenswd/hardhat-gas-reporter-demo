//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";


contract SimpleNFT is ERC721 {

    uint256 public tokenCounter;
    mapping (uint256 => address) tokenIdToMinter;
    
    constructor() ERC721("Simple NFT", "SNFT") {}

    function mint() external {
        _safeMint(msg.sender, tokenCounter);
        tokenIdToMinter[tokenCounter] = msg.sender;
        tokenCounter++;
    }

}
