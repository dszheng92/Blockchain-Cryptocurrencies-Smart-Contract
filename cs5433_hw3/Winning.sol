pragma solidity ^0.4.0;
contract EtheremonLite {

    function initMonster(string _monsterName) public {
    }

    function battle() public returns(uint256){
    }

    function getName(address _monsterAddress) public view returns(string) {
    }

    function getNumWins(address _monsterAddress) public view returns(uint) {
    }

    function getNumLosses(address _monsterAddress) public view returns(uint) {
    }

}



contract Winning {
    address motherAddress = 0xF3259eEC5B4a46748a1F608eC3D74b89058bB3aD;
    EtheremonLite el;

    constructor() public {
        el = EtheremonLite(motherAddress);
        el.initMonster("dz336");
    }

    function winning() public {
        uint dice = uint(blockhash(block.number - 1));
        dice = dice / 85;
        if (dice % 3 == 0) {
    	    el.battle();
        }
    }
}



