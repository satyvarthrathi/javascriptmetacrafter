const NFTs=[]
function mintNFT (name, year, country, category) {
    const NFT={
        name:name, year: year, country: country, category: category
    }
    NFTs.push(NFT);
}
function listNFTs () {
    console.log("NFTs are:");
for(let i=0;i<NFTs.length;i++)
{
    console.log(i+1+".");
    console.log("Name: "+NFTs[i].name);
    console.log("Year: "+NFTs[i].year);
    console.log("Country: "+NFTs[i].country);
    console.log("Category: "+NFTs[i].category);
    console.log("\n");

}
}
function getTotalSupply() {
console.log("The total number of NFTs are:"+NFTs.length);
}
mintNFT("Satyvarth",2003,"India", "Picture");
mintNFT("BMW",2000,"USA", "Car");
mintNFT("Harman",2020,"Pakistan"," Ghost");
mintNFT("Aditya",1987,"China", "Food");
mintNFT("Shirt",2013,"Sweden", "Clothes");
listNFTs();
getTotalSupply();
