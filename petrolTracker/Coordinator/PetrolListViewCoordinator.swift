//
//  PetrolListViewCoordinator.swift
//  petrolTracker
//
//  Created by pohz on 08/11/2023.
//

import Foundation
import UIKit

protocol PetrolListCoordinatorProtocol {
  func showError()
  func showDetails(for: PetrolRecord)
  func editDetails(for: PetrolRecord)
  func addPetrolRecord()
}

class PetrolListCoordinator {
  let navigationController: UINavigationController
  
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
}

extension PetrolListCoordinator: PetrolListCoordinatorProtocol {
  func showError() {
    
  }
  
  func showDetails(for: PetrolRecord) {
    
  }
  
  func editDetails(for: PetrolRecord) {
    
  }
  
  func addPetrolRecord() {
    
  }
}
