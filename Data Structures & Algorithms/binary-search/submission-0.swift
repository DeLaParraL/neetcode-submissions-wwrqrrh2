class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
         var left = 0
         var right = nums.count - 1

         while left <= right{
            var mid = (left + right) / 2 
            if nums[mid] == target{
                return mid
            }
            else if nums[mid] < target {
                left = mid + 1
            }
            else if nums[mid] > target {
                right = mid - 1
            }
         }
         return -1
        }
    }
//given an array of ints called nums, sorted
//in ascending order and an int target

//search for target within nums, return its index
//otherwise return -1