//SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.6 <0.8.15;
pragma experimental ABIEncoderV2; 

//contrato que sirve para calcular el hash de un parametro mediante el algotirmo SHA256
contract hash{

    //computo del hash de un string
    function calcular_hash(string memory _cadena) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_cadena));
    }

    //computo del hash de una composicion de distintos parametros
    function calcularhash_2(string memory _cadena,uint _k, address _dir ) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_cadena,_k,_dir));
    }

    //calculo del hash de distintos parametros mas un string que se le adiciona
    function calcularhash_3 (string memory _cadena, uint _k,address _dir) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_cadena,_k,_dir,"hola",uint(2)));

    }



}