// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../src/PolicyScore.sol";

contract PolicyScoreTest {
    function test_case_1() public {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(73, 107, 19, 19, 7);
        require(scorer.score(signal) == 58, "score mismatch");
        require(scorer.accepted(signal) == false, "decision mismatch");
    }
    function test_case_2() public {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(74, 107, 24, 18, 5);
        require(scorer.score(signal) == 43, "score mismatch");
        require(scorer.accepted(signal) == false, "decision mismatch");
    }
    function test_case_3() public {
        PolicyScore scorer = new PolicyScore();
        PolicyScore.Signal memory signal = PolicyScore.Signal(95, 70, 8, 5, 6);
        require(scorer.score(signal) == 205, "score mismatch");
        require(scorer.accepted(signal) == true, "decision mismatch");
    }
}
