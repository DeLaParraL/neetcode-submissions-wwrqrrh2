class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count { return false }
        var count = [Character: Int]()
        for char in s {
            count[char, default: 0] += 1
        }
        for char in t {
            count[char, default: 0] -= 1
            if count[char]! < 0 {
                return false 
            }
        }
        return true 
    }
}
