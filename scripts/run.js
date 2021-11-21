const main = async () => {
    const nftContractFactory = await hre.ethers.getContractFactory('MyEpicNFT')
    const nftContract = await nftContractFactory.deploy()
    await nftContract.deployed()

    console.log("NFT contract deployed to: ", nftContract.address);

    let tx = await nftContract.makeAnEpicNFT()
    await tx.wait()

    tx = await nftContract.makeAnEpicNFT()
    await tx.wait()
}

const runMain = async () => {
    try {
        await main()
        process.exit(0)
    }catch(err){
        console.log(err)
        process.exit(1)
    }
}

runMain()