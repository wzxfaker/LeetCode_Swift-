//
//  NextPermutation.swift
//  LeeCode_Swift
//
//  Created by X on 2017/8/8.
//  Copyright © 2017年 gcg. All rights reserved.
//

import UIKit

/**
 * Question Link: https://leetcode.com/problems/next-permutation/
 * Implement next permutation, which rearranges numbers into the lexicographically next greater permutation of numbers.
 
 If such arrangement is not possible, it must rearrange it as the lowest possible order (ie, sorted in ascending order).
 
 The replacement must be in-place, do not allocate extra memory.
 
 Here are some examples. Inputs are in the left-hand column and its corresponding outputs are in the right-hand column.
 1,2,3 → 1,3,2
 3,2,1 → 1,2,3
 1,1,5 → 1,5,1
 * Primary idea: Traverse the number from right to left, and replace the first smaller one
 *               with the least bigger one, then reverse all number afterwards
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */


class NextPermutation: NSObject {
    
    func nextPermutation(_ nums : inout [Int]){
        guard nums.count > 0 else {
            return;
        }
        var violate = -1;
        //find violate
        for i in stride(from: nums.count-1, to: 0, by: -1) {
            if nums[i] > nums[i-1] {
                violate = i-1;
                break;
            }
        }
        if violate != -1 {
            for i in stride(from: nums.count-1, to: violate, by: -1) {
                if nums[i] > nums[violate] {
                    swap(&nums, p: i, q: violate);
                    break;
                }
            }
        }
        reverse(&nums, violate+1, nums.count-1);
    }
    
    func reverse<T>(_ nums : inout [T],_ start : Int,_ end : Int){
        var start = start,end = end;
        while start < end {
            swap(&nums, p: start, q: end);
            start += 1;
            end -= 1;
        }
        
    }
    
    func swap<T>(_ nums : inout [T],p : Int,q : Int){
        (nums[p],nums[q]) = (nums[q],nums[p]);
    }
}
