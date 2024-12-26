class Solution {
    func convertDateToBinary(_ date: String) -> String {
        let components = date.split(separator: "-")

        guard let year = Int(components[0]), let month = Int(components[1]), let day = Int(components[2]) else{
            return ""
        }

        let yearBinary = String(year, radix: 2)
        let monthBinary = String(month, radix: 2)
        let dayBinary = String(day, radix: 2)

        return "\(yearBinary)-\(monthBinary)-\(dayBinary)"

    }
}