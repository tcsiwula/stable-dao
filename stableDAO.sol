pragma solidity ^0.4.25;

contract stableDAO {
    
     /* Define variable owner of the type address */
    address stable_dao_owner;
  
    struct Fund {
        uint stable_weight;
        string stable_name;
    }
    
    mapping (address => Fund) fund_output;
    address[] public fund_outputAccts;
    
    struct StableToken {
        address token_owner;
        string token_name;
        string token_ticker;
        uint amount;
        uint[] objective_functions;
    }
    
    struct StableIndex {
        address owner;
        // mapping(uint => uint) tokens;
        address[] stable_index_owners;
        string[] index_tokens;
        mapping (string => uint) total_tokens;
        //mapping (address => StableToken) stable_index_tokens;
    }
    
    function computeObjectiveFunctions(uint[] input, uint index)
        public
        pure
        returns (uint[] memory ouput)
    {
        
    }
    
    // make a mapping from tokens to amounts
    mapping(address => uint) public tokensToAmountsMapping;
    
    function addTokentoFund(address _address, uint _stable_weight, string _stable_name) public {
        var fund = fund_output[_address];
        fund.stable_weight = _stable_weight;
        fund.stable_name = _stable_name;
        fund_outputAccts.push(_address) -1;
    }
    
    function getFunds() view public returns(address[]) {
        return fund_outputAccts;
    }
    
     // function updateIndex(address voters, uint indexTokens) public constant returns
    // (uint) {
    //     return 1;
    // }
    
    //event _Deposit(string stableToken, uint added, uint newTotal);
    
    // function deposit(string _stableToken, uint _amount) external {
        
        
    // }

}


//      function:   deposit()
//
//      input:      stableTokens[a,b,c..] // tokens you want to swap for index 
//                  weights[x,y,z..], // objective functions and their weights 
//                  amount[h,i,j..]     // deposit amounts?
//
//      output:     stableFundToken 
//


// we need the following
// aa -- objective -- numeric
    
// bb -- democratic -- voting
//
// cc -- aa && bb 
//      vote on objective numeric metric (stdev, loss funciton, covariance)

// specification
//
// stable tokens -- which ones




