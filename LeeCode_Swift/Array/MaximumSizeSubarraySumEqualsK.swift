//
//  MaximumSizeSubarraySumEqualsK.swift
//  LeeCode_Swift
//
//  Created by admin on 07/08/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import UIKit

/**
 * Question Link: https://leetcode.com/problems/maximum-size-subarray-sum-equals-k/
 * Primary idea: Use a dictionary to track the sum so far since the first until the current
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class MaximumSizeSubarraySumEqualsK: NSObject {
    func maxSubArrayLen(_ nums : [Int],_ k : Int) -> Int {
        var longest = 0,sum = 0;
        var sumToIdx = [Int : Int]();
        sumToIdx[0] = -1;
        for (i,num) in nums.enumerated() {
            sum += num;
            if let idx = sumToIdx[sum - k] {
                longest = max(longest, i - idx);
            }
            guard let idx = sumToIdx[sum] else {
                sumToIdx[sum] = i;
                continue;
            }
        }
        return longest;
    }
    
}
