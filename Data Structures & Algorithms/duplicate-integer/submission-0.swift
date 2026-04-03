class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var seenBefore: Set<Int> = []
        for num in nums{
            if seenBefore.contains(num){
                return true
            }
            else{
                seenBefore.insert(num)
            }
        }
        return false

    }
}
