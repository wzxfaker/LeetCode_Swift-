//
//  ContainsDuplicate.swift
//  LeeCode_Swift
//
//  Created by admin on 31/07/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import UIKit

class ContainsDuplicate: NSObject {
    /**
     * Question Link: https://leetcode.com/problems/contains-duplicate/
     * Primary idea: traverse the array and use a set to check duplicates，查看数组中有没有重复的元素
     *
     * Time Complexity: O(n), Space Complexity: O(n)
     *
     */
    func containsDuplicate(nums : [Int]) -> Bool {
        return nums.count > Set(nums).count;//An unordered collection of unique elements.可以将数组中的相同元素抛除
    }
    
}
