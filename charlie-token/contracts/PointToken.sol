pragma solidity >=0.4.21 <0.6.0;

import "@openzeppelin/contracts/ownership/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Mintable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";

contract PointToken is ERC20, ERC20Mintable, ERC20Burnable, Ownable {
  string public constant name = "BwG Point Token";
  string public constant symbol = "PNT00";
  uint public constant decimals = 8;
  uint public constant INITIAL_SUPPLY = 1000000000 * (10 ** decimals);

  constructor() public {
    _mint(msg.sender, INITIAL_SUPPLY);
  }
}