//
//  ArrayViewController.swift
//  LeeCode_Swift
//
//  Created by admin on 24/08/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import UIKit

class ArrayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        /********************************* Array *********************************/
        
        let test : Array = [1,2,3,4,5,3,4];
        let testSet : Set = Set(test);
        print("集合可以剔除相同元素--\(testSet)");
        //一个数组中是否存在相同元素且下标差距在k以内
        let containsII : ContainsDuplicateII = ContainsDuplicateII();
        print("containsDuplicate--\(containsII.containsNearbyDuplication(nums: test, 2))");
        //一个数组中是否存在四个数的和为target
        let fourSum : FourSum = FourSum();
        print("fourSum--\(fourSum.fourSum([-2,-3,-1,0,0,-1,1,2,3,3,5], 0))");
        //汽车加气转圈
        let gasStation = GasStation();
        print("gasStation--\(gasStation.canCompleteCircular([1,2,3,4,5,6], [2,1,4,3,6,5]))");
        //加热器
        let heater = Heater();
        print("heater--\(heater.findRadius([1,2,3,4,5,6,7], [3]))");
        //求两个数组的交集
        let intersection = IntersectionOfTwoArr();
        print("intersectionOfTwoArr--\(intersection.intersectionTwoArr([1,2,2,3,4,3], [2,3,3]))");
        print("数组交集--\(intersection.intersection([1,1,3,3,4], [1,3,3,3]))");
        //求两个数组交集
        let intersectionII = IntersectionOfTwoArrII();
        print("intersectionII--\(intersectionII.intersection([1,1,2,2,3], [1,1,3,4]))");
        //求周长
        let islandPerimeter = IslandPerimeter();
        print("islandPerimeter--\(islandPerimeter.islandPerimeter([[1,1,0,0],[1,0,0,0],[0,0,1,1],[0,1,0,1]]))");
        //求数组中最长连续元素长度
        let longestTool = LongestConsecutiveSequence();
        print("longestConsecutive--\(longestTool.longestConsecutive([100,2,3,4,6,8,9,10,11,5]))");
        //求数组中大部分元素
        let majority = MajorityElement();
        print("majorityElement--\(majority.findMajorityElement([1,2,2,3,4,3,3]))");
        //求数组中出现次数大于数组个数三分之一的元素
        let majorityII = MajorityElementII();
        print("majorityElementII--\(majorityII.findMajorityII([1,2,3,4,3,4,3,4,5,4]))");
        //求出数组中相同元素最大长度
        let maxConsecutive = MaxConsecutiveOnes();
        print("maxConsecutive--\(maxConsecutive.maxConsecutive([1,1,1,1,0,0,1,1,1]))");
        //求数组中子数组和为k的最大数组的长度
        let maxSizeSubArrSumEqualK = MaximumSizeSubarraySumEqualsK();
        print("maxSize--\(maxSizeSubArrSumEqualK.maxSubArrayLen([-2,-1,-2,1,0], -2))");
        //把数组中的0全部移到数组最后边
        let moveZeroesTool = MoveZeroes();
        var testArr = [0,1,4,0,1,5,2,0,1];
        print("moveZero--\(moveZeroesTool.moveZeroes(&testArr))");
        //求数组中的下一个全排列
        let permutationTool = NextPermutation();
        var permutationArr = [3,2,4];
        permutationTool.nextPermutation(&permutationArr);
        print("nextPermutation--\(permutationArr)");
        //求有多少个装着三个点元祖(i,j,k)，其中i与j距离跟i与k距离相等，
        let pointArr = [[0,0],[1,0],[2,0],[0,1],[2,1]];
        let boomerangsTool = NumberOfBoomerangs();
        print("numberOfBoomerangs--\(boomerangsTool.numOfBoomeranga(pointArr))");
        //求数组中除自己外其他项的乘积
        let product = ProductExceptSelf();
        let numsArr = [1,3,5,7];
        print("productExceptSelf--\(product.productExceptSelf(nums: numsArr))");
        //删除一个已排序数组中重复的元素并返回元素个数
        let removeDuplicateTool = RemoveDuplicatesFromSortedArray();
        var originalArr = [1,2,2,3,4,4,5];
        print("排除数组中的相同项，而且不能开辟新的空间--\(removeDuplicateTool.removeDuplicates(nums: &originalArr))");
        //翻转数组中从右边数k个数
        let rotateArrTool = RotateArray();
        var rotateOriArr = [1,2,3,4,5,6,7,8,9,10];
        print("翻转数组中的元素--\(rotateArrTool.rotate(&rotateOriArr, 3))");
        //rotateImage
        let rotateImageTool = RotateImage();
        var imageArr = [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]];
        print("翻转二维数组--\(rotateImageTool.rotate(&imageArr))");
        //shortestWordDistance
        let shortestTool = ShortestWordDistance();
        let wordsArr = ["two","one","three","four","one","five","two","three"];
        print("单词最短距离--\(shortestTool.shortestDistance(wordsArr,"one","three"))");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
