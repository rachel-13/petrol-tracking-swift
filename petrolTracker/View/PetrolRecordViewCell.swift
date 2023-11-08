//
//  PetrolRecordViewCell.swift
//  petrolTracker
//
//  Created by pohz on 08/11/2023.
//

import UIKit

class PetrolRecordViewCell: UITableViewCell {
  
  lazy var dateLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  lazy var priceLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  lazy var mileageLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  lazy var companyLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  lazy var literLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  lazy var kmPerLiterLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  lazy var pricePerLiterLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    contentView.addSubview(dateLabel)
    contentView.addSubview(priceLabel)
    contentView.addSubview(mileageLabel)
    contentView.addSubview(literLabel)
    contentView.addSubview(companyLabel)
    contentView.addSubview(kmPerLiterLabel)
    contentView.addSubview(pricePerLiterLabel)
    
    let constraints = [
      dateLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12.0),
      dateLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12.0),
      dateLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12.0),
      
      priceLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 12.0),
      priceLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12.0),
      priceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12.0),
      
      mileageLabel.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 12.0),
      mileageLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12.0),
      mileageLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12.0),
      
      literLabel.topAnchor.constraint(equalTo: mileageLabel.bottomAnchor, constant: 12.0),
      literLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12.0),
      literLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12.0),
      
      companyLabel.topAnchor.constraint(equalTo: literLabel.bottomAnchor, constant: 12.0),
      companyLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12.0),
      companyLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12.0),
      
      kmPerLiterLabel.topAnchor.constraint(equalTo: companyLabel.bottomAnchor, constant: 12.0),
      kmPerLiterLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12.0),
      kmPerLiterLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12.0),
      
      pricePerLiterLabel.topAnchor.constraint(equalTo: kmPerLiterLabel.bottomAnchor, constant: 12.0),
      pricePerLiterLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12.0),
      pricePerLiterLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12.0),
      
      pricePerLiterLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12.0)
    ]
    
    NSLayoutConstraint.activate(constraints)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
