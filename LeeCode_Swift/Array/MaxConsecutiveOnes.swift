//
//  MaxConsecutiveOnes.swift
//  LeeCode_Swift
//
//  Created by admin on 07/08/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import UIKit

/**
 * Question Link: https://leetcode.com/problems/max-consecutive-ones/
 * Given a binary array, find the maximum number of consecutive 1s in this array.
 
 Example 1:
 Input: [1,1,0,1,1,1]
 Output: 3
 Explanation: The first two digits or the last three digits are consecutive 1s.
 The maximum number of consecutive 1s is 3.
 Note:
 
 The input array will only contain 0 and 1.
 The length of input array is a positive integer and will not exceed 10,000
 * Primary idea: Iterate the whole array and summarize consective ones locally and update globally encountering 0
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class MaxConsecutiveOnes: NSObject {
    func maxConsecutive(_ nums : [Int]) -> Int{
        var globalMax = 0,localMax = 0;
        for num in nums {
            if num == 1 {
                localMax += 1;
                globalMax = max(localMax, globalMax);
            }else{
                localMax = 0;
            }
        }
        return globalMax;
    }
}
