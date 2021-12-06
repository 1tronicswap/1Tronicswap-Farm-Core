// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

import './IBEP20.sol';

// import "@nomiclabs/buidler/console.sol";
interface IMigratorMike {
    // Perform LP token migration from legacy 1TronicSwap to e1trcSwap.
    // Take the current LP token address and return the new LP token address.
    // Migrator should have full access to the caller's LP token.
    // Return the new LP token address.
    //
    // XXX Migrator must have allowance access to 1TronicSwap LP tokens.
    // e1trcSwap must mint EXACTLY the same amount of e1trcSwap LP tokens or
    // else something bad will happen. Traditional 1TronicSwap does not
    // do that so be careful!
    function migrate(IBEP20 token) external returns (IBEP20);
}