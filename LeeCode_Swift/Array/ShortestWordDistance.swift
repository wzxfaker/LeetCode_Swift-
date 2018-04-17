//
//  ShortestWordDistance.swift
//  LeeCode_Swift
//
//  Created by admin on 27/10/2017.
//  Copyright © 2017 gcg. All rights reserved.
//

import UIKit

class ShortestWordDistance: NSObject {
    func shortestDistance(_ words : [String],_ word1 : String,_ word2 : String) -> Int {
        var distance = Int.max;
        var firstIndex = -1,secondIndex = -1;
        for (i,word) in words.enumerated() {
            if word == word1 {
                firstIndex = i;
            }
            if word == word2 {
                secondIndex = i;
            }
            if firstIndex != -1 && secondIndex != -1 {
                distance = min(distance, abs(firstIndex-secondIndex));
            }
        }
        return distance;
    }

    func myMethod(_ words : [String],_ word1 : String,_ word2 : String) -> Int{
        var idx = -1,res = Int.max;
        for word in words {
            if word == word1 || word == word2 {
                if idx != -1 || words[idx] != word {
                    res = min(res, words.index(of: word)!-idx);
                }
            }
            idx = words.index(of: word)!;
        }
        return res;
    }
}
