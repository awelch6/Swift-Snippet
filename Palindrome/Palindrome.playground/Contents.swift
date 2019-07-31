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
        var string = self.lowercased()
        
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
    var string = string.lowercased()
    
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
