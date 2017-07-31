//
//  ContainsDuplicateII.swift
//  LeeCode_Swift
//
//  Created by admin on 31/07/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import UIKit
/**
 * Question Link: https://leetcode.com/problems/contains-duplicate-ii/
 * Given an array of integers and an integer k, find out whether there are two distinct indices i and j in the array such that nums[i] = nums[j] and the absolute difference between i and j is at most k.判断一个数组中是否有两个元素相等而且下标相差最多为k
 * Primary idea: use a dictionary to check duplicates, then judge if their distance is less than k
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class ContainsDuplicateII: NSObject {
    func containsNearbyDuplication(nums : [Int],_ k : Int) -> Bool {
        if nums.count <= 1 {
            return false;
        }
        //key:num[index]  value:index
        var dic : Dictionary = [Int : Int]();
        for i in 0..<nums.count {
            guard let index = dic[nums[i]] , i-index <= k else {
                dic[nums[i]] = i;
                continue;
            }
            return true;
        }
        return false;
    }
    
}
