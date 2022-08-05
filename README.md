# StackUp-30daysofWeb3
30 Days of Web3 practice by StackUp Discord

## escrow.sol
### Problem Statement
Alice wants to buy a car from Bob, but since they are both strangers, they don't trust each other. Alice doesn't want to give money to Bob without first receiving the car. On the other hand, Bob doesn't want to give the car to Alice without first guaranteeing that she has sufficient money to pay for it. No one wants to make the first move.

### Solution
Since they both don't trust each other, they will need to contact an arbiter (typically a lawyer) to facilitate the transaction. However, with the power of smart contracts, trustless deals are now possible and they no longer need to depend on an arbiter! Here's what the escrow contract does:

Alice first deposits ether (price of the car) into the contract
Bob, after seeing on the blockchain that the payment has been deposited into the contract, will deliver the car to Alice
After Alice receives the car, she will release the ether stored in the contract to Bob
This way, the escrow contract helps to remove the uncertainty for both parties:

Bob - since he is able to view on the blockchain that Alice's payment has been deposited to the escrow contract, he is assured that Alice does indeed have the money required for payment
Alice - with the smart contract, she doesn't have to blindly transfer the payment to Bob without first receiving the car
