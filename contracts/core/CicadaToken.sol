pragma solidity >=0.5.0 <0.6.0-0 <0.6.0;

import "../Tools/SafeMath.sol";
import "../Tools/ERCInterfaces.sol";

contract StandardToken is ERC20, ERC223 {
    using SafeMath for uint256;

    string internal _name;
    string internal _symbol;
    uint8 internal _decimals;
    uint256 internal _totalSupply;
}
