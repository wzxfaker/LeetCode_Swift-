//
//  MajorityElement.swift
//  LeeCode_Swift
//
//  Created by admin on 04/08/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import UIKit

/**
 * Question Link: https://leetcode.com/problems/majority-element/
 * Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
 * Primary idea: traverse the array and track the majority element accordingly
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class MajorityElement: NSObject {
    func findMajorityElement (_ nums : [Int]) -> Int{
        var major = nums.first!;
        var sum = 0;
        for num in nums {
            if num == major {
                sum += 1;
            }else{
                sum -= 1;
            }
            if sum == 0 {//每次sum为0的时候就说明找到了另外一个比当前major个数更多的数
                major = num;
                sum = 1;
            }
        }
        return major;
    }
}
