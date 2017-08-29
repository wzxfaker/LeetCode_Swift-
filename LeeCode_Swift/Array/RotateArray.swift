//
//  RotateArray.swift
//  LeeCode_Swift
//
//  Created by admin on 29/08/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import UIKit

/**
 * Question Link: https://leetcode.com/problems/rotate-array/
 *
 * Primary idea: reverse the whole array, then reverse parts of it seperately
 * Note: Argument of a function in Swift is let by default, so change it to var if you need to alter the value
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class RotateArray: NSObject {
    func rotate(_ nums : inout [Int],_ k : Int) -> [Int]{
        let k = k % nums.count;
        _reverse(&nums, 0, nums.count-1);
        _reverse(&nums, 0, k-1);
        _reverse(&nums, k, nums.count-1);
        return nums;
    }
    
    private func _reverse(_ nums : inout [Int],_ startIndex : Int,_ endIndex : Int){
        if startIndex < 0 || endIndex > nums.count || endIndex < startIndex{
            return;
        }
        var startIndex = startIndex;
        var endIndex = endIndex;
        while startIndex < endIndex {
            _swap(&nums,startIndex,endIndex);
            startIndex += 1;
            endIndex -= 1;
        }
    }
    
    private func _swap<T>(_ nums : inout Array<T>,_ p : Int,_ q : Int){
        (nums[p],nums[q]) = (nums[q],nums[p]);
    }
    
}
