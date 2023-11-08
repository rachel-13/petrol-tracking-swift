//
//  PetrolViewModel.swift
//  petrolTracker
//
//  Created by pohz on 07/11/2023.
//

import Foundation

protocol PetrolViewModelProtocol {
  func viewDidLoad()
}

class PetrolViewModel {
  var viewController: PetrolViewControllerProtocol
  
  
}

extension PetrolViewModel: PetrolViewModelProtocol {
  func viewDidLoad() {
    <#code#>
  }
}
