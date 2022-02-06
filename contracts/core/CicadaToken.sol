pragma solidity ^0.5 <0.6.0;

import '../Tools/SafeMath.sol';
import '../Tools/ERCInterfaces.sol';

contract StandardToken is ERC20, ERC223 {
  using SafeMath for uint;

}