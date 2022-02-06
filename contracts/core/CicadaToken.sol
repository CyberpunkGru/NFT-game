pragma solidity >=0.5.0 <0.6.0-0 <0.6.0;

import "../Tools/SafeMath.sol";
import "../Tools/ERCInterfaces.sol";

contract StandardToken is ERC20, ERC223 {
    using SafeMath for uint256;

    string internal _name;
    string internal _symbol;
    uint8 internal _decimals;
    uint256 internal _totalSupply;

    mapping (address => uint256) internal balances;
    mapping (address => mapping (address => uint256)) internal allowed;

    constructor(string memory name, string memory symbol, uint8 decimals, uint256 totalSupply) public {
        _symbol = symbol;
        _name = name;
        _decimals = decimals;
        _totalSupply = totalSupply;
        balances[msg.sender] = totalSupply;
    }
}
