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

    function name()
        public
        view
        returns (string memory) {
        return _name;
    }

    function symbol()
        public
        view
        returns (string memory) {
        return _symbol;
    }

    function decimals()
        public
        view
        returns (uint8) {
        return _decimals;
    }

    function totalSupply()
        public
        view
        returns (uint256) {
        return _totalSupply;
    }
    function transfer(address _to, uint256 _value) public returns (bool) {
     require(_to != address(0), "Can not send to null");
     require(_value <= balances[msg.sender], "Can not send more than balance");
     balances[msg.sender] = SafeMath.sub(balances[msg.sender], _value);
     balances[_to] = SafeMath.add(balances[_to], _value);
     emit Transfer(msg.sender, _to, _value);
     return true;
   }
}
