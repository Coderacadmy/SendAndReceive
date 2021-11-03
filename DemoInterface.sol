// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

interface Human{
    event logString(string);
    
    
    
    
    function SetAge(int val) external virtual;
    
    function getAge() external virtual view returns(int);
    
    function doSomething() external virtual;
}

interface superHuman is Human{
    function breakWall() external virtual;
    function seeThroughWall() external virtual;
}

contract Student is Human{
    int public age;
    constructor() public{
        age = 5;
    }
    
    
    function SetAge(int val) public override{
        age = val;
    }
    
    function getAge() public override view returns(int){
        return age; 
    }
    
    function doSomething() public override{
       emit logString("Student doSomething");
    }
}

contract MainContract{
    
    
    function doSomething() public returns(int) {
        
        Human obj1 = new Student(); //contract deploy
        obj1.doSomething();
        return obj1.getAge(); //call return
        
    }
     
}

