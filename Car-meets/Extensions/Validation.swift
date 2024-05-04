//
//  Validation.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-04.
//

import Foundation

extension String {
    
    func isValidEmail() -> Bool {
        let regex = try! NSRegularExpression(pattern: #"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"#)
        
        return regex.firstMatch(in: self, range: NSRange(location: 0, length: count)) != nil
    }
    
    func isValidPassword() -> Bool {
            // Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one digit, and one special character
            let regex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[$@$!%*?&])[A-Za-z\\d$@$!%*?&]{8,}"
            let passwordPredicate = NSPredicate(format:"SELF MATCHES %@", regex)
            return passwordPredicate.evaluate(with: self)
        }
}
