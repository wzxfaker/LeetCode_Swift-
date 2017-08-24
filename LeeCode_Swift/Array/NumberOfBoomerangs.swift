//
//  test.swift
//  LeeCode_Swift
//
//  Created by admin on 24/08/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import UIKit

/**
 * Question Link: https://leetcode.com/problems/number-of-boomerangs/
 * Primary idea: traverse the array and compare distance one by one
 * Given n points in the plane that are all pairwise distinct, a "boomerang" is a tuple of points (i, j, k) such that the distance between i and j equals the distance between i and k (the order of the tuple matters).
 
 Find the number of boomerangs. You may assume that n will be at most 500 and coordinates of points are all in the range [-10000, 10000] (inclusive).
 
 Example:
 Input:
 [[0,0],[1,0],[2,0]]
 
 Output:
 2
 
 Explanation:
 The two boomerangs are [[1,0],[0,0],[2,0]] and [[1,0],[2,0],[0,0]]
 * Time Complexity: O(n^2), Space Complexity: O(n)
 *
 */

class NumberOfBoomerangs: NSObject {
    func numOfBoomeranga(_ points : [[Int]]) -> Int {
        var num = 0;
        for (i,point) in points.enumerated() {
            var dict = [Int : Int]();
            for (j,anotherPoint) in points.enumerated() {
                if i == j {
                    continue;
                }
                let pointDistance = (point[0]-anotherPoint[0])*(point[0]-anotherPoint[0])+(point[1]-anotherPoint[1])*(point[1]-anotherPoint[1]);
                if let sameDistance = dict[pointDistance] {
                    dict[pointDistance] = sameDistance + 1;
                }else{
                    dict[pointDistance] = 1;
                }
            }
            for key in dict.keys {
                num += dict[key]! * (dict[key]!-1);
            }
        }
        return num;
    }
    
    
}
