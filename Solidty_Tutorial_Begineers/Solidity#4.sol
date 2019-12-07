pragma solidity ^0.5.1;

//import "./Math.sol"; // Use openZepplin SafeMath.sol
import "./SafeMath.sol";

contract MyContract {
    // DRY - "Don't Repeat Yourself"
    using SafeMath for uint256;
    uint256 public value;
    
    function calculate(uint _value1, uint _value2) public {
        //value = _value1 / _value2; // zero
        //value = SafeMath.divide(_value1, _value2);
        value = _value1.div(_value2);
    }
}