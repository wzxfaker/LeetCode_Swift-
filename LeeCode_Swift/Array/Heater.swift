//
//  heater.swift
//  LeeCode_Swift
//
//  Created by admin on 01/08/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import UIKit

/**
 * Question Link: https://leetcode.com/problems/heaters/   //加热所有的房间，求最小加热半径
 * Primary idea: Two pointers, get the closest heater for the house, and update radius
 * Time Complexity: O(nlogn), Space Complexity: O(1)
 */

class Heater: NSObject {
    func findRadius(_ houses : [Int],_ heaters : [Int]) -> Int {
        var i = 0,radius = 0;
        let houses = houses.sorted();
        let heaters = heaters.sorted();
        for house in houses {
            while i < heaters.count-1 && 2*house >= heaters[i]+heaters[i+1] {//位于两个加热器之间的房间时，并且靠近后边那个加热器的房间，最后求出所有的radius最大值，即离此加热器最远的房间距离
                i += 1;
            }
            radius = max(radius, abs(house-heaters[i]));
        }
        return radius;
    }
}
