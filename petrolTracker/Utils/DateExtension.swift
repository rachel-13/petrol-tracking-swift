//
//  DateExtension.swift
//  petrolTracker
//
//  Created by pohz on 08/11/2023.
//

import Foundation

extension Date {
  func formatDate(format: String = "dd MMM yyyy") -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = format
    let dateString = dateFormatter.string(from: self)
    return dateString
  }
}
