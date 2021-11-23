//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// We first import some OpenZeppelin Contracts.
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";
import "../libraries/Base64.sol";
import "../libraries/Svg.sol";

// We inherit the contract we imported. This means we'll have access
// to the inherited contract's methods.
contract MyEpicNFT is ERC721URIStorage {
    // Magic given to us by OpenZeppelin to help us keep track of tokenIds.
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;


    string[] firstWords = ["Achille", "Ceres", "Chia", "Danu", "Cepheus", "Leto", "Thanathos", "Tyr"];

    string[] secondWords = ["Juniper", "Bear", "Wren", "Cassia", "Peregrine", "Cedar", "Acacia", "earth"];

    string[] thirdWords = ["Mercury" ,"Venus" ,"Earth" ,"Mars", "Jupiter" ,"Saturn" ,"Uranus" ,"Neptune"];

    string[] list1 = ["Pink", "Crimson", "Red", "Maroon", "Brown", "Mist", "Rose", "Salmon", "Coral", "Orange-Red", "Chocolate", "Orange", "Gold", "Tan", "Beige"];

    string[] list2 = ["Lime", "Green", "Spring-green", "Aquamarine", "Turquoise", "Azure", "Aqua", "Teal", "Lavender", "Blue", "Navy", "Blue-Violet", "Indigo", "White", "Black"];

    //Notify the client 
    event NewEpicNFTMinted(address sender, uint256 tokenId, uint256 mintCount);

    // We need to pass the name of our NFTs token and it's symbol.
    constructor() ERC721 ("SquareNFT", "SQUARE") {
        console.log("This is my NFT contract. Woah!");
    }

    // Create a function to randomly pick a word from each array.
    function pickRandomFirstWord(uint256 tokenId) public view returns (string memory) {
        // Seed the random generator
        uint256 rand = random(string(abi.encodePacked("FIRST_WORD", Strings.toString(tokenId))));
        // Squash the # between 0 and the length of the array to avoid going out of bounds.
        rand = rand % firstWords.length;
        return firstWords[rand];
    }
    function pickRandomSecondWord(uint256 tokenId) public view returns (string memory) {
        // Seed the random generator
        uint256 rand = random(string(abi.encodePacked("SECOND_WORD", Strings.toString(tokenId))));
        // Squash the # between 0 and the length of the array to avoid going out of bounds.
        rand = rand % secondWords.length;
        return secondWords[rand];
    }
    function pickRandomThirdWord(uint256 tokenId) public view returns (string memory) {
        // Seed the random generator. 
        uint256 rand = random(string(abi.encodePacked("THIRD_WORD", Strings.toString(tokenId))));
        // Squash the # between 0 and the length of the array to avoid going out of bounds.
        rand = rand % thirdWords.length;
        return thirdWords[rand];
    }

    // Create a function to randomly pick a color from each array.
    function pickRandomFirstColor(uint256 tokenId) public view returns (string memory) {
        // Seed the random generator
        uint256 rand = random(string(abi.encodePacked("FIRST_COLOR", Strings.toString(tokenId))));
        // Squash the # between 0 and the length of the array to avoid going out of bounds.
        rand = rand % list1.length;
        return list1[rand];
    }
    function pickRandomSecondColor(uint256 tokenId) public view returns (string memory) {
        // Seed the random generator
        uint256 rand = random(string(abi.encodePacked("SECOND_COLOR", Strings.toString(tokenId))));
        // Squash the # between 0 and the length of the array to avoid going out of bounds.
        rand = rand % list2.length;
        return list2[rand];
    }

    function random(string memory input) internal pure returns (uint256) {
        return uint256(keccak256(abi.encodePacked(input)));
    }

    // A function our user will hit to get their NFT.
    function makeAnEpicNFT() public {
        // Get the current tokenId, this starts at 0.
        uint256 newItemId = _tokenIds.current();

        //Limit the number of NFT
        require(newItemId <= 50, 'Max count reached');

        string memory firstWord = pickRandomFirstWord(newItemId);
        string memory secondWord = pickRandomSecondWord(newItemId);
        string memory thirdWord = pickRandomThirdWord(newItemId);
        string memory combinedWord = string(abi.encodePacked(firstWord, secondWord, thirdWord));

        string memory firstColor = pickRandomFirstColor(newItemId);
        string memory secondColor = pickRandomSecondColor(newItemId);

        string memory finalSvg = Svg.generate(firstColor, secondColor);

        // Get all the JSON metadata in place and base64 encode it.
        string memory json = Base64.encode(
            bytes(
                string(
                    abi.encodePacked(
                        '{"name": "', combinedWord, '", "description": "A highly acclaimed collection of squares.", "image": "data:image/svg+xml;base64,',
                        Base64.encode(bytes(finalSvg)),
                        '"}'
                    )
                )
            )
        );

        // Prepend data:application/json;base64, to our data.
        string memory finalTokenUri = string(
            abi.encodePacked("data:application/json;base64,", json)
        );

        console.log("\n--------------------");
        console.log(string(
            abi.encodePacked(
                "https://nftpreview.0xdev.codes/?code=",
                finalTokenUri
            )
        ));
        console.log("--------------------\n");

        _safeMint(msg.sender, newItemId);
        
        // Update your URI!!!
        _setTokenURI(newItemId, finalTokenUri);

        _tokenIds.increment();
        console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);
        emit NewEpicNFTMinted(msg.sender, newItemId, newItemId);
    }
}