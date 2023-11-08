//
//  PetrolViewModel.swift
//  petrolTracker
//
//  Created by pohz on 07/11/2023.
//

import Foundation

protocol PetrolListViewModelProtocol {
  var petrolRecords: [PetrolRecord] { get }
  func viewDidLoad()
  func selectedRecord(petrolRecord: PetrolRecord)
}

class PetrolListViewModel {
  let viewController: PetrolListViewControllerProtocol
  let repository: PetrolRepositoryProtocol
  let coordinator: PetrolListCoordinatorProtocol
  var petrolRecords: [PetrolRecord] = []
  
  init(viewController: PetrolListViewControllerProtocol, 
       repository: PetrolRepositoryProtocol,
       coordinator: PetrolListCoordinatorProtocol) {
    self.viewController = viewController
    self.repository = repository
    self.coordinator = coordinator
  }
}

extension PetrolListViewModel: PetrolListViewModelProtocol {
  func viewDidLoad() {
    guard let records = repository.getData() else {
      return
    }
    petrolRecords = records
    viewController.refreshData()
  }
  
  func selectedRecord(petrolRecord: PetrolRecord) {
    coordinator.showDetails(for: petrolRecord)
  }
}
