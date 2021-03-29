pragma solidity ^0.6.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MockERC20 is ERC20, Ownable {
    constructor(
        string memory _name,
        string memory _symbol,
        uint256 _supply
    ) public ERC20(_name, _symbol) {
        _mint(msg.sender, _supply);
    }

    function mint(address account, uint256 amount) external onlyOwner {
        _mint(account, amount);
    }
}
