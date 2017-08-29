//
//  ProductExceptSelf.swift
//  LeeCode_Swift
//
//  Created by admin on 29/08/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

/**
 * Question Link: https://leetcode.com/problems/product-of-array-except-self/
 * 给出一个数组，求数组中除了本身元素意外其他所有元素的乘积组成的数组
 Primary idea: Use two arrays to hold multiplication result from left and right sides
 *               while iterating the original array
 * Time Complexity: O(n), Space Complexity: O(n)
 */

import UIKit

class ProductExceptSelf: UIView {
    
    func productExceptSelf(nums : [Int]) -> [Int] {
        var res = [Int]();
        guard nums.count > 0 else {
            return res;
        }
        let left = _initLeft(nums);
        let right = _initRight(nums);
        for i in 0..<nums.count {
            res.append(left[i] * right[i]);
        }
        return res;
    }
    
    private func _initLeft(_ nums : [Int]) -> [Int]{
        var left = [Int]();
        left.append(1);
        for i in 1..<nums.count {
            left.append(left[i-1] * nums[i-1]);
        }
        return left;
    }
    
    private func _initRight(_ nums : [Int]) -> [Int]{
        var right = Array(repeatElement(1, count: nums.count));
        //for i in stride(from: nums.count-2, to: 0, by: -1) {//Returns the sequence of values (self, self + stride, self + 2 * stride, … last) where last is the last value in the progression that is less than end.
        for i in stride(from: nums.count-2, through: 0, by: -1) {//Returns the sequence of values (self, self + stride, self + 2 * stride, … last) where last is the last value in the progression less than or equal to end.
            right[i] = right[i+1] * nums[i+1];
        }
        return right;
    }
    
}
