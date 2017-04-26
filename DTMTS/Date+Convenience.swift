//
//  NSDate+Convenience.swift
//  DTMTS
//
//  Created by Chris Delaney on 12/11/2016.
//  Copyright © 2016 Delaney. All rights reserved.
//

import Foundation

extension Date {
    
    //Get date in format yyyy-mm-dd
    func todaysDate() -> NSString {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: date)
    }
}
