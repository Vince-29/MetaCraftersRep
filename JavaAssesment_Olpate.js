/*
Assessment Requirements
1. Create a variable that can hold a number of NFT's. What type of variable might this be?
2. Create an object inside your mintNFT function that will hold the metadata for your NFTs. 
   The metadata values will be passed to the function as parameters. When the NFT is ready, 
   you will store it in the variable you created in step 1
3. Your listNFTs() function will print all of your NFTs metadata to the console (i.e. console.log("Name: " + someNFT.name))
4. For good measure, getTotalSupply() should return the number of NFT's you have created
*/

// create a variable to hold your NFT's
const NFTs = [];

// this function will take in some values as parameters, create an
// NFT object using the parameters passed to it for its metadata, 
// and store it in the variable above.
function mintNFT (_name,_ID,_artStyle) {
    const myNFT = {
        "Name":_name,
        "ID":_ID,
        "ArtStyle":_artStyle
    };
    NFTs.push(myNFT);

    console.log(_name+" successfully minted!");
}

// create a "loop" that will go through an "array" of NFT's
// and print their metadata with console.log()
function listNFTs () {
    console.log("====== List of minted NFTs ======")
    for (let i = 0; i < NFTs.length; i++) {
        console.log("| "+(i+1)+" |");
        console.log("Name: "+NFTs[i].Name);
        console.log("ID: "+NFTs[i].ID);
        console.log("Art Style: " +NFTs[i].ArtStyle);
    }
}

// print the total number of NFTs we have minted to the console
function getTotalSupply() {
    console.log("Total NFT supply: "+NFTs.length);
}

// call your functions below this line
function IDnum() { // random number generator for ID
    var random = Math.floor(Math.random() * 1001);
    return random;
}


mintNFT("Warlock",IDnum(),"Anime");
mintNFT("Paladin",IDnum(),"Cubism");
mintNFT("Ranger",IDnum(),"Brutalist");

listNFTs();
console.log("---------------------------------")
getTotalSupply();



