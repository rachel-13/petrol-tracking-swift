//
//  PetrolRepository.swift
//  petrolTracker
//
//  Created by pohz on 08/11/2023.
//

import Foundation

protocol PetrolRepositoryProtocol {
  func getData() -> [PetrolRecord]?
  func saveData(petrolRecord: PetrolRecord)
}

class PetrolRepository {
  
  init() {
    
  }
}

extension PetrolRepository: PetrolRepositoryProtocol {
  
  func getData() -> [PetrolRecord]? {
    let dummyData = [
      PetrolRecord(date: Date(), price: 65.00, mileage: 200, liter: 35, company: "BHP", kmPerLiter: 12.5, pricePerLiter: 2.05),
      PetrolRecord(date: Date(), price: 75.00, mileage: 300, liter: 36, company: "Petronas", kmPerLiter: 12.4, pricePerLiter: 2.05),
      PetrolRecord(date: Date(), price: 85.00, mileage: 400, liter: 340, company: "Shell", kmPerLiter: 14.5, pricePerLiter: 2.05)
    ]
    return dummyData
  }
  
  func saveData(petrolRecord: PetrolRecord) {
    
  }
}
