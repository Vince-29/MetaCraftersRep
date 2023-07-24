// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract IfElse {
    function foo(uint x) public pure returns (uint) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    function ternary(uint _x) public pure returns (uint) {
        // if (_x < 10) {
        //     return 1;
        // }
        // return 2;

        // shorthand way to write if / else statement
        // the "?" operator is called the ternary operator

        return _x < 10 ? 1 : 2;
    }
}





///////// NOTES

/*
contract Arrays{
// Array can be dynamic or fixed-size
// Initialization
// Insert (.push), get, update, delete, pop, lenght
// Creating array in memory
// Returning array from function

    uint[] public arr = [1,2,3]; // DYNAMIC - can be changed
    uint[3] public arrFixed = [4,5,6]; // FIXED - cannot be changed (you specify the size of array inside the bracket)

        //====> Array Operations 
    function arrOp() external {
        arr.push(4); // inserts at the end of the array [only in dynamic]
        uint get = arr[1]; // getting the element of an array at a specified index
        arrFixed[2] = 7; // updates the element of an array at a specified index
        delete arrFixed[1]; // deletes the element of an array at a specified index (the default value will be 0)
        arr.pop(); // removes at the end of the array [only in dynamic]
        uint len = arrFixed.length; // gets the length of an array

        //====> Creating array in memory
        uint[] memory arrMemo = new uint[](6); //the array in memory is always in fixed size
    }
        //====> Returning array
    function returnArray() external view returns (uint[] memory){
        return arr;
    }
}
*/

/*
contract Structs{
    //STRUCTS allows us to group data together for organization and code optimization
    struct Anime{ // making a struct
        string character;
        uint episodes;
        address powers;
    }

    //ways of using STRUCTS in a state variable
    Anime public FairyTale = Anime("Natsu", 200,msg.sender); //1 
    Anime[] public animes; //2
    mapping (address => Anime[]) public multiAnime; 3//

    function AnimeFinder() external{
        //ways of using STRUCTS in a state variable
        Anime memory OnePiece = Anime("Luffy",1000,msg.sender);//the elements inside the parenthesis should be in order as how you put in struct
        Anime memory Naruto = Anime({powers:msg.sender,character: "Naruto",episodes: 700});//using a key value pair or {} grants you to place the element not in order
        Anime memory Bleach; // normal initializing which defaults the value of what you put in struct
            //putting date into a default call of struct
            Bleach.character = "Ichigo";
            Bleach.episodes = 500;
            Bleach.powers = msg.sender;

        animes.push(Anime({character:"Isaki", powers:msg.sender, episodes: 13})); //initializing directly to push inside the array
            animes.push(OnePiece);
            animes.push(Naruto);
            animes.push(Bleach);


        Anime memory _animeShow = animes[0]; //to get access for showing
        _animeShow.character; //getting the elements from the specified index
        _animeShow.episodes;
        _animeShow.powers;

        Anime storage _animeUpdate = animes[2];//to get access for updating and deleting elements (use storage instead of memory)
        _animeUpdate.character = "Sakura";
        delete _animeUpdate.powers;

        //deleting whole struct
        delete animes[3];
    }

}
*/

/*
contract Mapping{
    //what is MAPPING?
        // >> data structure used to create associations between keys and values. (mapping(KeyType => ValueType) public myMapping;)
    //how to declare a mapping (simple and nested)

    mapping(string => string) public getWaifu; //simple mapping
    mapping(string => mapping(uint => bool)) public multiWaifu; //complex mapping

    function start() external{
        //setting the map (mapName[key] = value)
        getWaifu["Luffy"] = "Boa Hancock"; 
        getWaifu["Naruto"] = "Hinata";
        getWaifu["Shirogane"] = "Kaguya";

        multiWaifu["Raku"][3] = true;
        multiWaifu["Subaru"][5] = true;

    }
}
*/
/*
contract ifElse{
    function condition(uint _num) external pure returns (uint){
        if (_num > 0){
            return 2;
        } else {
            return _num;
        }
    }
}
*/

