pragma solidity ^0.8.0;

// node_module 폴더에있는 위 경로의 ERC20.sol 파일 import
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// ERC20.sol 파일에 현재의 Test 코드를 덮어쓰겠다.
contract MyToken is ERC20{
  uint public INITIAL_SUPPLY = 120000;

  // constructor는 스마트컨트렉트가 생성될때 1번만 호출됨.
  constructor() public ERC20("DONUT TOKEN", "DT"){
    // _mint 함수 사용법 :
    /**
    https://docs.openzeppelin.com/contracts/2.x/api/token/erc20#ERC20
    */
    _mint(msg.sender, INITIAL_SUPPLY);
  }
}
