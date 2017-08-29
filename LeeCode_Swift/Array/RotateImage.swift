//
//  RotateImage.swift
//  LeeCode_Swift
//
//  Created by admin on 29/08/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import UIKit

/**
 * Question Link: https://leetcode.com/problems/rotate-image/
 * Primary idea: Go from clockwise and from outside to inside, use offset for convenience
 * Given input matrix =
 [
 [ 5, 1, 9,11],
 [ 2, 4, 8,10],
 [13, 3, 6, 7],
 [15,14,12,16]
 ],
 
 rotate the input matrix in-place such that it becomes:
 [
 [15,13, 2, 5],
 [14, 3, 4, 1],
 [12, 6, 8, 9],
 [16, 7,10,11]
 ]
 * Time Complexity: O(n^2), Space Complexity: O(1)
 */

class RotateImage: NSObject {
    func rotate(_ matrix : inout [[Int]]) -> [[Int]] {
        let n = matrix.count;
        for layer in 0 ..< n/2 {
            let start = layer,end = n-layer-1;
            for i in start ..< end {
                let offset = i-start;
                (matrix[start][i],matrix[i][end],matrix[end][end-offset],matrix[end-offset][start]) = (matrix[end - offset][start], matrix[start][i], matrix[i][end], matrix[end][end - offset]);
            }
        }
        return matrix;
    }
}
