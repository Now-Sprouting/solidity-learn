// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract HelloWorld {
    bool boolVar = true;
    uint8 age = 255;
    // 默认为 unit256 
    uint maxNumber = 2555555555555555555;
    int intVar = -1;

    // bytes 一般来存储字符串
    bytes8 bytesVar = "hello wo"; 
    // string 是动态分配的 bytes
    string strVar = "hello world";

    address addrVar = 0xf970DaeD3f33a8038c24B491E1909757170c145f;

    // view 只读 public 函数调用权限
    function sayHello() public  view returns(string memory) {
        return  addresInfo(strVar);
    } 

    function setHello(string memory newString) public  {
        strVar = newString;
    }

    // pure 和 view 比较像，只做运算处理
    function addresInfo(string memory helloWorld) internal  pure returns ( string memory) {
        return string.concat(helloWorld, " from dogin's contract. ");
    } 
}