//
//  AppCoordinator.swift
//  petrolTracker
//
//  Created by pohz on 07/11/2023.
//

import Foundation
import UIKit


class AppCoordinator {
  
  let navigationController: UINavigationController
  let window: UIWindow?
  
  init(navigationController: UINavigationController, window: UIWindow?) {
    self.navigationController = navigationController
    self.window = window
  }
  
  func start() {
    let petrolRepository = PetrolRepository()
    let coordinator = PetrolListCoordinator(navigationController: navigationController)
    let petrolListViewController = PetrolListViewController()
    let petrolListViewModel = PetrolListViewModel(viewController: petrolListViewController,
                                                  repository: petrolRepository, 
                                                  coordinator: coordinator)
    
    petrolListViewController.viewModel = petrolListViewModel
    
    navigationController.pushViewController(petrolListViewController, animated: true)
  }
}
