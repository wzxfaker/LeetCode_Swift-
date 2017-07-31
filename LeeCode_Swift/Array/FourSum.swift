//
//  FourSum.swift
//  LeeCode_Swift
//
//  Created by admin on 31/07/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import UIKit

/**
 * Question Link: https://leetcode.com/problems/4sum/
 * Given an array S of n integers, are there elements a, b, c, and d in S such that a + b + c + d = target? Find all unique quadruplets in the array which gives the sum of target.
 
 Note: The solution set must not contain duplicate quadruplets.
 
 For example, given array S = [1, 0, -1, 0, -2, 2], and target = 0.
 
 A solution set is:
 [
 [-1,  0, 0, 1],
 [-2, -1, 1, 2],
 [-2,  0, 0, 2]
 ]//从一个数组中找到四个数相加等于target，而且元素之间不能重复，最后以数组的形式给出
 * Primary idea: Sort the array, and traverse it, increment left or decrease right
 *               predicated on their sum is greater or not than the target
 * Time Complexity: O(n^3), Space Complexity: O(nC4)
 */

class FourSum: NSObject {
    func fourSum(_ nums : [Int],_ target : Int) -> [[Int]] {
        let nums = nums.sorted(by: {$0 < $1});
        var threeSum = 0;
        var twoSum = 0;
        var left = 0;
        var right = 0;
        var res = [[Int]]();
        guard nums.count >= 4 else {
            return res;
        }
        for i in 0..<nums.count-3 {
            guard i == 0 || nums[i] != nums[i-1] else {
                continue;
            }
            threeSum = target - nums[i];
            for j in i+1..<nums.count-2 {
                guard j == i+1 || nums[j] != nums[j-1] else {
                    continue;
                }
                twoSum = threeSum - nums[j];
                left = j + 1;
                right = nums.count - 1;
                while left < right {
                    if nums[left] + nums[right] == twoSum {
                        res.append([nums[i],nums[j],nums[left],nums[right]]);
                        //repeat...while 循环不像 for 和 while 循环在循环体开始执行前先判断条件语句，而是在循环执行结束时判断条件是否符合。
                        repeat {
                            left += 1;
                        } while left < right && nums[left] == nums[left-1]
                        repeat {
                            right -= 1;
                        } while left < right && nums[right] == nums[right+1]
                    } else if nums[left] + nums[right] < twoSum {
                        repeat {
                            left += 1;
                        } while left < right && nums[left] == nums[left-1];
                    } else{
                        repeat {
                            right -= 1;
                        } while left < right && nums[right] == nums[right+1];
                    }
                }
            }
        }
        
        return res;
    }
    
    
}
