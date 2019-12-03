pragma solidity ^0.5.1;

contract MyContract {
    mapping(address => uint256) public balances;
    address payable wallet;
    
    event Purchase(
        address indexed _buyer,
        uint256 _amount
    );
    
    constructor(address payable _wallet) public {
        wallet = _wallet;
    }
    
    function() external payable {
        buyToken();
    }
    
    function buyToken() public payable {
        // buy a token
        balances[msg.sender] += 1;
        wallet.transfer(msg.value);
        // send ether to the wallet
        emit Purchase(msg.sender, 1);
    }
}