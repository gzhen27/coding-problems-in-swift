import UIKit

/*
#136. Single Number
 Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
 You must implement a solution with a linear runtime complexity and use only constant extra space.
 Example 1:
    Input: nums = [2,2,1]
    Output: 1
    
 Example 2:
    Input: nums = [4,1,2,1,2]
    Output: 4
 
 Example 3:
    Input: nums = [1]
    Output: 1
  

 Constraints:
     1 <= nums.length <= 3 * 104
     -3 * 104 <= nums[i] <= 3 * 104
     Each element in the array appears twice except for one element which appears only once.
*/

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var numberSet = Set<Int>()
        
        nums.forEach { num in
            if numberSet.contains(num) {
                numberSet.remove(num)
            } else {
                numberSet.insert(num)
            }
        }
        
        return numberSet.first!
    }
}

let s = Solution()
let result = s.singleNumber([2,3,4,5,4,3,2])
print(result)
