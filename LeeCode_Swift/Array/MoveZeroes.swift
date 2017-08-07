//
//  MoveZeroes.swift
//  LeeCode_Swift
//
//  Created by admin on 07/08/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import UIKit

/**
 * Question Link: https://leetcode.com/problems/move-zeroes/
 * Primary idea: keep index for element not equal to 0, traverse and set up the index
 * Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
 
 For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].
 
 Note:
 You must do this in-place without making a copy of the array.
 Minimize the total number of operations.
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class MoveZeroes: NSObject {
    func moveZeroes(_ nums : inout [Int]) -> [Int]{
        var idx = 0;
        for (_, num) in nums.enumerated() {
            if num != 0 {
                nums[idx] = num;
                idx += 1;
            }
        }
        while idx < nums.count {
            nums[idx] = 0;
            idx += 1;
        }
        return nums;
    }
}
