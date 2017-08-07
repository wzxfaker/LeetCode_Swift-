//
//  IntersectionOfTwoArr.swift
//  LeeCode_Swift
//
//  Created by admin on 02/08/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import UIKit

/**
 * Question Link: https://leetcode.com/problems/intersection-of-two-arrays/
 * Given two arrays, write a function to compute their intersection.
 
 Example:
 Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2].
 
 Note:
 Each element in the result must be unique.
 The result can be in any order.
 * Primary idea: Use set interact function to help
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class IntersectionOfTwoArr: NSObject {
    //自己写的方法
    func intersectionTwoArr(_ nums1 : [Int],_ nums2 : [Int]) -> [Int] {
        var res = [Int]();
        let set1 = Set(nums1);
        let set2 = Set(nums2);
        let smallSet = set1.count < set2.count ? set1 : set2;
        let bigSet = set1.count > set2.count ? set1 : set2;
        for (_,item) in smallSet.enumerated(){
            if bigSet.contains(item) {
                res.append(item);
            }
        }
        return res;
    }
    
    //用系统的方法
    func intersection(_ nums1 : [Int],_ nums2 : [Int]) -> [Int] {
        return [Int](Set<Int>(nums1).intersection(nums2));//直接返回两个集合中相同的元素
    }
    
}
