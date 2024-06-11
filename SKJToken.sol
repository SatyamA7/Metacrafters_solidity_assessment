// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MyToken {

    // Public variables
    string public token_name = "SatyamKumarJha";
    string public token_abbrv = "SKJ";
    uint public total_supply;

    // Mapping variable here
    mapping(address => uint) public balances;

    // Mint function
    function mint(address account_address, uint mint_value) public {
        total_supply += mint_value;
        balances[account_address] += mint_value;
    }

    // Burn function
    function burn(address account_address, uint burn_value) public {
        if (balances[account_address] >= burn_value) {
            total_supply -= burn_value;
            balances[account_address] -= burn_value;
        } 
    }
}
