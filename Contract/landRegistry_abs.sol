pragma solidity ^0.4.25;

contract landRegistrationManagement {
    struct userDetail{}
    struct khatian{}
    struct plot{}
    
    mapping (uint => userDetail)  userMapping;
    mapping (bytes32 => plot)  plotMapping;
    mapping (bytes32 => khatian)  khatianMapping;
    
    event creationOfplot(bytes32 plotHash);
    event creationOfUser(uint nid);
    event creationOfKhatian(bytes32 khatianHash);
    
    function addKhatianNew(uint64 _khatianiId, bytes32 _plotHash, uint16 _percentOwn, 
                            uint[] _user, uint16[] _percentage) public{}
    
    function addKhatianFromOld(uint64 _khatianiId, bytes32 _plotHash, uint16 _percentOwn, 
                            bytes32 _buyFrom, uint[] _user, uint16[] _percentage) public{}
    
    function getKhatianByHash(bytes32 khatianHash) public view 
                            returns(uint64 khatianiId, bytes32 plotHash, uint16 percentOwn, 
                            bytes32 buyFrom, bytes32[] sellTo, uint16[] sellPercentage, uint[] 
                            ownerArray, uint16[] perOwnerPercentage){}
    
    function addPlot(string _division, string _district, string _thana, uint16 _JLNo, 
                            uint16 _plotNo, uint8 _plotType, uint32 _plotArea) public{}

    function getPlotByHash(bytes32 plotHash) public view returns(bytes32 division, bytes32 district,
                            bytes32 thana, uint16 JLNo, uint16 plotNo, uint8 plotType, uint32 plotArea){}
    
    function creatNewUser(string _fullName, string _fatheName, string _district, string _thana, 
                            uint24 _postCode, string _village, uint _nid) public{}
    
    function getUserByNid(uint _nid) public view returns(bytes32 fullName, bytes32 fatheName, 
                            bytes32 district, bytes32 thana, uint24 postCode, bytes32 village){}
}
