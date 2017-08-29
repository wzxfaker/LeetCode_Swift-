//
//  RemoveDuplicatesFromSortedArray.swift
//  LeeCode_Swift
//
//  Created by admin on 29/08/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import UIKit
/**
 * Question Link: https://leetcode.com/problems/remove-duplicates-from-sorted-array/
 * Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.
 
 Do not allocate extra space for another array, you must do this in place with constant memory.
 
 For example,
 Given input array nums = [1,1,2],
 
 Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively. It doesn't matter what you leave beyond the new length.
 * Primary idea: keep a index, compare the element at that index with the element moving forward
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class RemoveDuplicatesFromSortedArray: UIView {

    func removeDuplicates( nums : inout [Int]) -> Int {
        if nums.count <= 1 {
            return nums.count;
        }
        var lastIndex = 0;
        for num in nums {
            if  num != nums[lastIndex] {//数组中不能有重复的
//            if nums[lastIndex] != nums[i] || nums[lastIndex] != nums[lastIndex - 1] {//此条件是数组中有重复的不能超过两个[1,1,1,2,2,3] -> [1,1,2,2,3]
                lastIndex += 1;
                nums[lastIndex] = num;
            }
        }
        return lastIndex+1;
    }

}






/**
 * Question Link: https://leetcode.com/problems/remove-element/
 * 从数组中删除指定的元素
 * Primary idea: keep a index, compare the element at that index with val while moving forward
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class RemoveElement {
    func removeElement( nums: inout [Int], _ val: Int) -> Int {
        nums = nums.filter { (num) in num != val }//参见http://www.jianshu.com/p/7233f140e6c3
        return nums.count
    }
}
