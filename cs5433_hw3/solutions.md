
CS 5433: Blockchain HW3
Disheng Zheng
NetID: dz336


1.	The ERC20 contract address is: 0x5a9715505cae36b8e5705a157643e9d530593b60
You can also find it here: https://rinkeby.etherscan.io/tx/0x078ed30964975e58af57ef00681cb22cd342d84ae0acceedb49594ac91b386ae


2.	The Winning contract address is:  0xdd16669d2bfc7c3d526b3f78b56a8c27bc235767
You can also find it here:
https://rinkeby.etherscan.io/tx/0x411dafeddbc09ddfe74a0d66ca44dfe884dca6255645cc67f2b755f657a43dfd


3.1
Rafael’s master key for my challenge is:

08aaa00d172e4df326107a19e731cea6fcae7d8837e660ea

3.2 The vulnerability would be that the user could try to double spend the money, meaning that one transaction is not valid on chain. We will have 191 bits after 192 transactions tries and therefore would not be able to uncover the secret key. We can design our backdoor wallet such as to limit the user to only be able to generate one transaction during one block time so that every transaction can be validated on chain and we would not have trouble to uncover the user’s secret key.

3.3 The scheme of our backdoor wallet can be modified so that each transaction leaks a user’s private key two bits at a time. (The two least significant bits of a transaction signature reveal the most significant bits of the secret key) Only 96 transactions are required to reveal a secret key. This cuts time in half.


4. By observation, for the 4 tumbler and output pairs down below, the tumblers have almost the same amount transaction value as the output. And the outputs happen after tumbler transactions by a short delay time. The tiny differences in values are the transaction fee. Therefore, people can well guess and implicate on the address of the user and the transaction value. This defeats the purpose of using tumbler, and de-anonymize transactions. Mixing bitcoin transactions on chain won’t completely solve the anonymity problem. Sometime, the output time is earlier than transaction time as one of the schemas of mixers to maintain anonymity.

Tumblers / Mix: Input: 1GcZjZnfQUCs9L9RoAFLdd8YET2WQWrDAz
Amount: 0.01 BTC
Output: 18RwKzXtL5YGvFwa9BHrPRvqXLkdYWsGfp
Amount: 0.00987 BTC

Tumblers / Mix: Input: 135g5Es7VXvbaAkwzguv7q7xaSSTifav5H
Amount: 0.05 BTC
Output: 13MUZ1Qk36LqExdcSRDZCxNRP1pcz1b5mT
Amount: 0.04874 BTC


Tumblers / Mix: Input: 1KGhtebk4Nr2zZSn2NaFepeNF6KyjxpPJZ
Amount: 0.02 BTC
Output: 1BCaztysy2paguXjuC8c652vckNMks69ce
Amount: 0.01986549 BTC


Tumblers / Mix: Input: 1MVXpgczazLvbtS8Nfp9v3Qpj4d8pUNXQM
Amount: 0.025 BTC
Output: 1MTbp4bFftessrbTTpM5SC5Ap1iKaMHrM7
Amount: 0.02441339 BTC





Evaluations
• Did you find the homework easy, appropriately difficult, or too difficult?
appropriately difficult,

• How many hours total (excluding breaks :)) were spent on the completion of this
assignment?
10 hours

• Did you feel there was too much coding, the appropriate amount of coding, or not
enough coding?
The appropriate amount of coding.
