// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract Vehical{
    
    event logString(string);
    
    function Service() public virtual{
        
    }
    
    function doSomething() public virtual {
        emit logString("Service dosomething");
    }
}

contract Car is Vehical {
    
    function doSomething() public virtual override {
        emit logString("Car dosomething");
    }
     
}

contract Van is Vehical{
    
    function doSomething() public virtual override {
        emit logString("Van dosomething");
    }
    
}

contract Bus is Vehical {
    function doSomething() public override virtual{
        emit logString("Bus dosomething");
    }
}

contract ServiceCenter{
    
    
    function doSomething() public returns(int) {
        
        Vehical obj1 = new Car(); //contract deploy
        Vehical obj2 = new Van();
        Vehical obj3 = new Bus(); //Multi level inheritance
       
        obj1.doSomething();
        
    }
     
}
