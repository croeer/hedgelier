pragma solidity ^0.4.0;
contract Hedgelier {

    address public owner = msg.sender;
    uint public creationTime = now;

    // Modifiers can be used to change
    // the body of a function.
    // If this modifier is used, it will
    // prepend a check that only passes
    // if the function is called from
    // a certain address.
    modifier onlyBy(address _account)
    {
        require(msg.sender == _account);
        // Do not forget the "_;"! It will
        // be replaced by the actual function
        // body when the modifier is used.
        _;
    }

    /// Make `_newOwner` the new owner of this
    /// contract.
    function changeOwner(address _newOwner)
        public
        onlyBy(owner)
    {
        owner = _newOwner;
    }

    function () payable public {}


    function doIt()
        public
        onlyBy(owner)
    {
        address hedgely = 0x3815BF4d2f463d0c2b03Ba4903a3FA49a4dA4FE6;
        hedgely.call.value(1000000000000000)(bytes4(sha3("invest(uint256)")), 0);
        hedgely.call.value(1000000000000000)(bytes4(sha3("invest(uint256)")), 1);
        hedgely.call.value(1000000000000000)(bytes4(sha3("invest(uint256)")), 2);
        hedgely.call.value(1000000000000000)(bytes4(sha3("invest(uint256)")), 3);
    }
  

}
