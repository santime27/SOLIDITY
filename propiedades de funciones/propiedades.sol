////SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.6 <0.8.15;

contract funciones_globales{

    //funcion msg.sender devuelve la direccion de la transaccion
    function message_sender() public view returns(address){
        return msg.sender;
    }

    //funcion block coinbase 
    function coinbase() public view returns(address) {
        return block.coinbase;        
    }

    //funcion que devuelve la dificultad del bloque
    function dificultad_bloque() public view returns(uint){
        return block.difficulty;
    }

    //funcion now
    function timenow() public view returns(uint){
        return block.timestamp;
    }

    //funcion block number, devuelve un entero como numero del bloque actual
    function getNumber() public view returns (uint){
        return block.number;
    }

    //funcion gas price, devuelve el precio del gas de la funcion
    function gasPrice() public view returns(uint){
        return tx.gasprice;
    }

    //funciion contracadress, funcion que devuelve la direccion del contrato
    function contracAdress() public view returns(address){
        return address(this);
    }

    function informacion() public view returns (uint,uint){

        return (12,6);
    }
}