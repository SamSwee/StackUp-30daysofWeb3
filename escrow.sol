pragma solidity ^0.8.2;

contract Escrow {
    address public alice;
    address payable public bob;
    uint public price;

    enum State { AWAITING_DEPOSIT, AWAITING_CAR_DELIVERY, COMPLETED }
    State public currState;

    constructor(address _alice, address payable _bob, uint _price) public payable{
        alice = _alice;
        bob = _bob;
        price = _price;
    }

    modifier onlyAlice() {
        require(msg.sender == alice, "Only Alice can call this function");
        _;
    }

    function deposit() onlyAlice external payable {
        require(currState == State.AWAITING_DEPOSIT, "Funds already deposited");
        require(msg.value == price, "Deposit must match price of the car");
        currState = State.AWAITING_CAR_DELIVERY;
    }

    function confirmCarDelivered() onlyAlice external {
        require(currState == State.AWAITING_CAR_DELIVERY, "Cannot confirm delivery at current state");
        bob.transfer(address(this).balance);
        currState = State.COMPLETED;
    }
}
