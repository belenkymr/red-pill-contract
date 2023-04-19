// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SpecialVariablesReader {
    // Define events to emit special variables
    event Coinbase(address indexed coinbase);
    event GasPrice(uint256 indexed gasPrice);
    event BlockHash(uint256 indexed blockNumber, bytes32 blockHash);
    event BaseFee(uint256 indexed baseFee);

    // Emit the COINBASE (i.e., the address of the block miner)
    function emitCoinbase() public {
        emit Coinbase(block.coinbase);
    }

    // Emit the GASPRICE of the transaction
    function emitGasPrice() public {
        emit GasPrice(tx.gasprice);
    }
    
    // Emit the BASEFEE of the transaction
    function emitBaseFee() public {
        emit BaseFee(block.basefee);
    }

    // Emit all special variables: COINBASE, GASPRICE, BASEFEE
    function emitAllSpecialVariables() public {
        emitCoinbase();
        emitGasPrice();
        emitBaseFee();
    }
}
