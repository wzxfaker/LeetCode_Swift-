//
//  LongestConsecutiveSequence.swift
//  LeeCode_Swift
//
//  Created by admin on 02/08/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import UIKit

/**
 * Question Link: https://leetcode.com/problems/longest-consecutive-sequence/
 * Given an unsorted array of integers, find the length of the longest consecutive elements sequence.
 
 For example,
 Given [100, 4, 200, 1, 3, 2],
 The longest consecutive elements sequence is [1, 2, 3, 4]. Return its length: 4.
 
 Your algorithm should run in O(n) complexity.
 * Primary idea: t the array and check all neighbor numbers with the help of set
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class LongestConsecutiveSequence: NSObject {
    func longestConsecutive(_ nums : [Int]) -> Int{
        var set = Set(nums);
        var longest = 0;
        for num in nums {
            if set.contains(num) {
                set.remove(num);
                longest = max(1+findConsecutive(&set,num,1)+findConsecutive(&set,num,-1), longest);//以num为中心，分别向左向右遍历，然后分别加上左边和右边
            }
        }
        return longest;
    }
    
    func findConsecutive(_ set : inout Set<Int>,_ num : Int,_ step : Int) -> Int {
        var len = 0;
        var num = num+step;
        while set.contains(num) {
            set.remove(num);
            len += 1;
            num += step;
        }
        return len;
    }
}
