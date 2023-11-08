//
//  PetrolViewController.swift
//  petrolTracker
//
//  Created by pohz on 07/11/2023.
//

import UIKit

protocol PetrolListViewControllerProtocol {
  func refreshData()
}

class PetrolListViewController: UIViewController {
  
  let cellReuseIdentifier = "PetrolRecordViewCellIdentifier"
  
  lazy var petrolTableView: UITableView = {
    let tableView = UITableView()
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.delegate = self
    tableView.dataSource = self
    tableView.register(PetrolRecordViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
    return tableView
  }()
  
  var viewModel: PetrolListViewModelProtocol?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupUI()
    viewModel?.viewDidLoad()
  }
  
  private func setupUI() {
    navigationController?.navigationBar.topItem?.title = "Petrol History"
    view.backgroundColor = .white
    view.addSubview(petrolTableView)
    
    let constraints = [
      petrolTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
      petrolTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
      petrolTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      petrolTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    ]
    
    NSLayoutConstraint.activate(constraints)
  }
}

extension PetrolListViewController: UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewModel?.petrolRecords.count ?? 0
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let viewModel = viewModel,
      let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath) as? PetrolRecordViewCell else {
      return UITableViewCell()
    }
    
    cell.dateLabel.text = viewModel.petrolRecords[indexPath.row].date.formatDate()
    cell.priceLabel.text = "\(viewModel.petrolRecords[indexPath.row].price)"
    cell.mileageLabel.text = "\(viewModel.petrolRecords[indexPath.row].mileage)"
    cell.literLabel.text = "\(viewModel.petrolRecords[indexPath.row].liter)"
    cell.companyLabel.text = viewModel.petrolRecords[indexPath.row].company
    
    if let kmPerLiter = viewModel.petrolRecords[indexPath.row].kmPerLiter {
      cell.kmPerLiterLabel.text = String(format: "%.2f", kmPerLiter)
    }
    
    if let pricePerLiter = viewModel.petrolRecords[indexPath.row].pricePerLiter {
      cell.pricePerLiterLabel.text = String(format: "%.2f", pricePerLiter)
    }
    
    
    return cell
  }
}

extension PetrolListViewController: PetrolListViewControllerProtocol {
  func refreshData() {
    petrolTableView.reloadData()
  }
}

