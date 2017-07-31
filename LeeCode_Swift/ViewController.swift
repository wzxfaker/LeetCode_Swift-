//
//  ViewController.swift
//  LeeCode_Swift
//
//  Created by admin on 31/07/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let test : Array = [1,2,3,4,5,3,4];
        let testSet : Set = Set(test);
        print(testSet);
        //一个数组中是否存在相同元素且下标差距在k以内
        let containsII : ContainsDuplicateII = ContainsDuplicateII();
        print(containsII.containsNearbyDuplication(nums: test, 2));
        //一个数组中是否存在四个数的和为target
        let fourSum : FourSum = FourSum();
        print(fourSum.fourSum([-2,-3,-1,0,0,-1,1,2,3,3,5,-6], 0));
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

