//
//  IslandPerimeter.swift
//  LeeCode_Swift
//
//  Created by admin on 02/08/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import UIKit

/**
 * Question Link: https://leetcode.com/problems/island-perimeter/
 * You are given a map in form of a two-dimensional integer grid where 1 represents land and 0 represents water. Grid cells are connected horizontally/vertically (not diagonally). The grid is completely surrounded by water, and there is exactly one island (i.e., one or more connected land cells). The island doesn't have "lakes" (water inside that isn't connected to the water around the island). One cell is a square with side length 1. The grid is rectangular, width and height don't exceed 100. Determine the perimeter of the island.
 
 Example:
 
 [[0,1,0,0],
 [1,1,1,0],
 [0,1,0,0],
 [1,1,0,0]]
 
 Answer: 16
 Explanation: The perimeter is the 16 yellow stripes in the image below:
 
 * Primary idea: Go through the matrix and check right and down neighbors.//只需要看右边和下边是不是为1，最后用公式求出即可
 * Time Complexity: O(nm), Space Complexity: O(1)
 *
 */

class IslandPerimeter: NSObject {
    func islandPerimeter (_ grid : [[Int]]) -> Int {
        var islands = 0;
        var neighbors = 0;
        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if grid[i][j] == 1 {
                    islands += 1;
                    if i < grid.count-1 && grid[i+1][j] == 1 {
                        neighbors += 1;
                    }
                    if j < grid[0].count-1 && grid[i][j+1] == 1 {
                        neighbors += 1;
                    }
                }
            }
        }
        return islands*4 - neighbors*2;
    }
    
}
