class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var record: [Int] = []
        for i in operations {
            if i == "+" {
                let value = record[record.count - 1] + record[record.count - 2]
                record.append(value)
            } else if i == "D" {
                record.append(record.last! * 2)
            } else if i == "C" {
                record.removeLast()
            } else {
                if let val = Int(i) {
                    record.append(val)
                }
            }
        }
        return record.reduce(0, +)
 
    }
}
