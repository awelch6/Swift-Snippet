// MARK: Quick & Easy Way to Check For Palidrome

extension String {
    var palidrome: Bool {
        let string  = self.lowercased()
        return string == String(string.reversed())
    }
}

// MARK: Test Cases

"Hello".palidrome
"World".palidrome
"Redder".palidrome
"Racecar".palidrome


// MARK: Custom Implementation to Check For Palidrome

// MARK: Using extensions
extension String {
    var isPalindrome: Bool {
        // Make sure the string is all the same case. This doesn't necessarily need to be here if we want this to be case sensitive
        var string = self.lowercased()
        
        // Iterate through all elements, removing the first and last element, until there is only 1 or 0 elements left.
        // If the first element does not equal the last element then return false.
        while string.count > 1 {
            if string.removeFirst() != string.removeLast() {
                return false
            }
        }
        return true
    }
}

"Hello".isPalindrome
"World".isPalindrome
"Redder".isPalindrome
"Racecar".isPalindrome


// MARK: Without Using Extensions
func isPalindrome(_ string: String) -> Bool {
    // Make sure the string is all the same case. This doesn't necessarily need to be here if we want this to be case sensitive
    var string = string.lowercased()
    
    // Iterate through all elements, removing the first and last element, until there is only 1 or 0 elements left.
    // If the first element does not equal the last element then return false.
    while string.count > 1 {
        if string.removeFirst() != string.removeLast() {
            return false
        }
    }
    return true
}

isPalindrome("Hello")
isPalindrome("World")
isPalindrome("Redder")
isPalindrome("Racecar")
