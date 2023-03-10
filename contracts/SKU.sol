// SPDX-License-Identifier: GPL-2.0-or-later

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./base/Permission.sol";

contract SKU is Permission, ERC20 {
	constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {}

	function mint(address _to, uint256 _amount) external onlyPermission {
	   _mint(_to, _amount);
	}

	function burn(address _from, uint256 _amount) external onlyPermission {
	    _burn(_from, _amount);
	}
}