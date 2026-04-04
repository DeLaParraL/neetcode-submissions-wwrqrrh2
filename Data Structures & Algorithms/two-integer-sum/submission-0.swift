//given an array of ints called nums and an int target,
//return the indicices of the elements such that add up to target int

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

        //empty dictionary to store the complements and their index
        var seenBefore: [Int:Int] = [:]
        for (i,num) in nums.enumerated(){
            var complement = target - num
            if let j = seenBefore[complement]{
                return[j,i]
            } else{
                seenBefore[num] = i
            }
        }
        return []
    }
}
