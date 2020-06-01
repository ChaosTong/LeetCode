class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map: [Int: Int] = [:]
        for (i, x) in nums.enumerated() {
            if let lastIndex = map[target - x] {
                return [lastIndex, i]
            } else {
                map[x] = i
            }
        }
        return [-1, -1]    
    }
}
