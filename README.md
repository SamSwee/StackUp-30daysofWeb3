# StackUp-30daysofWeb3
30 Days of Web3 practice by StackUp Discord

## escrow.sol
This smart contract is meant to hold some funds in escrow. Alice wants to buy a car from Bob. Alice doesn't want to give money to Bob without first receiving the car. On the other hand, Bob doesn't want to give the car to Alice without first guaranteeing that she has sufficient money to pay for it. The contract works like this: 
- Alice first deposits ether (price of the car) into the contract
- Bob, after seeing on the blockchain that the payment has been deposited into the contract, will deliver the car to Alice
- After Alice receives the car, she will release the ether stored in the contract to Bob
- This way, the escrow contract helps to remove the uncertainty for both parties
