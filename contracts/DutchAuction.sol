pragma solidity ^0.8.15;


import "erc721a/contracts/IERC721A.sol";



contract DutchAuction {

    // Dutch Aution start price, by wei
    uint128 startPrice;

    // Dutch Aution end price, by wei
    uint128 endPrice;

    // Time in the auction range
    uint32 duration;

    // Dutch Aution start time
    uint32 startAt;

    // Dutch Auction end time
    uint32 endAt;

    // Nft token id
    uint256 public tokenId;

    // Dutch Auction NFT seller
    address public immutable seller;

    // Make sure the initialize function works only once
    uint private _lock = 1;

    IERC721A private immutable _nft;

    function initialize(address nft_) public {
        require(_lock == 1);
        
        seller = payable(msg.sender);
        require(nft_ != address(0), "The nft address is zero address.");
        _nft = IERC721A(nft_);
        // locked
        _lock = 2;
    }


    function createAuction(
        uint128 _startAtPrice,
        uint128  _endPrice,
        uint32 _duration,
        uint32 _startAt,
        uint32 _endAt,
        uint32 _startTokenId,
        uint32 _endTokenId
    ) external {
        // Overflow check !
        require(_startAtPrice < type(uint128).max);
        require(_endPrice < type(uint128).max);
        // The auction time cannot be less than 1 minutes
        require(_duration < type(uint32).max && _duration >= 1 minutes);
        require(_startAt < type(uint32).max);
        require(_endAt < type(uint32).max);
        require(_startTokenId < type(uint32).max);
        require(_endTokenId < type(uint32).max);

        startPrice = _startAtPrice;
        endPrice = _endPrice;
        duration = _duration;
        startAt = _startAt;
        endAt = _endAt;

        if (_startTokenId == _endTokenId) {
            // ...
        } else {
            // `_startTokenId` and `_endTokenId` Indicates the Token start and end range
            for (_startTokenId; i == _endTokenId; ++i) {
                
            }
        }

    }

    function bid() 


    /**
     * @dev return `block.timestamp` or `now`
     */
    function current() public view returns(uint) {
        return block.timestamp;
    }




