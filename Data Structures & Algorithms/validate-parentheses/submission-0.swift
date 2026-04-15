class Solution {
    func isValid(_ s: String) -> Bool {
        var str = s
        while str.contains("()") || str.contains("{}") || str.contains("[]") {
            str = str.replacingOccurrences(of: "()", with: "")
            str = str.replacingOccurrences(of: "{}", with: "")
            str = str.replacingOccurrences(of: "[]", with: "")
        }
        return str.isEmpty
    }
}


//given a string s
//return true if every open bracket is closed by the same type of close bracket
//in correct order! has open bracket of the same type
//return false otherwise. 