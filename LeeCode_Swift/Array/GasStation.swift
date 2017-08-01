//
//  GasStation.swift
//  LeeCode_Swift
//
//  Created by admin on 01/08/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

/**
 * Question Link: https://leetcode.com/problems/gas-station/
 * There are N gas stations along a circular route, where the amount of gas at station i is gas[i].
 
 You have a car with an unlimited gas tank and it costs cost[i] of gas to travel from station i to its next station (i+1). You begin the journey with an empty tank at one of the gas stations.
 
 Return the starting gas station's index if you can travel around the circuit once, otherwise return -1.//如果一个数组的总和非负，那么一定可以找到一个起始位置，从他开始绕数组一圈，累加和一直都是非负的
 * Primary idea: use currentSum and total to keep track of the gas and cost,
 *               change start index when currentSum is less than 0
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

import UIKit

class GasStation: NSObject {
    func canCompleteCircular(_ gas : [Int],_ cost : [Int]) -> Int {
        guard gas.count == cost.count else {
            return -1;
        }
        var remainGas = 0;
        var total = 0;
        var startIdx = 0;
        
        for (i,curGas) in gas.enumerated() {
            remainGas += (curGas - cost[i]);
            total += (curGas - cost[i]);
            if remainGas < 0 {
                startIdx = i+1;
                remainGas = 0;
            }
        }
        if total < 0 {
            return -1;
        }
        return startIdx;
    }
}
