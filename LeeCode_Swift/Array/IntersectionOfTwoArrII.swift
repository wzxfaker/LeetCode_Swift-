//
//  IntersectionOfTwoArrII.swift
//  LeeCode_Swift
//
//  Created by admin on 02/08/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import UIKit

class IntersectionOfTwoArrII: NSObject {
    func intersection(_ nums1 : [Int],_ nums2 : [Int]) -> [Int] {
        var nums1 = nums1.sorted(by: {$0 < $1});
        var nums2 = nums2.sorted(by: {$0 < $1});
        
        var i = 0;
        var j = 0;
        var res = [Int]();
        
        while i < nums1.count && j < nums2.count {
            if nums1[i] < nums2[j] {
                i += 1;
            }else if nums1[i] > nums2[j] {
                j += 1;
            }else{
                res.append(nums1[i]);
                i += 1;
                j += 1;
            }
        }
        return res;
    }
    
    
}
