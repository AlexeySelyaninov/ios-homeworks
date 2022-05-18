//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Алексей Селянинов on 28.04.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private lazy var photoPrifile: UIImageView = {
        let photoPrifile = UIImageView(image: UIImage(named: "photo1"))
        photoPrifile.layer.cornerRadius = 75
        photoPrifile.layer.masksToBounds = true
        photoPrifile.layer.borderWidth = 3
        photoPrifile.layer.borderColor = UIColor.white.cgColor
        return photoPrifile
    }()
    
    private lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "Selyaninov Alexey"
        nameLabel.textColor = UIColor.black
        nameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        return nameLabel
    }()
    
    private lazy var statusLabel: UILabel = {
        let statusLabel = UILabel()
        statusLabel.text = "Waiting for something..."
        statusLabel.textColor = UIColor.gray
        statusLabel.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        return statusLabel
    }()
    
    func button () {
        let button = UIButton()
        addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Show status", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 4
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.7
        button.layer.shadowColor = UIColor.black.cgColor
        
        let contstraints = [
              button.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
              button.topAnchor.constraint(equalTo: topAnchor, constant: 182),
              button.heightAnchor.constraint(equalToConstant: 50),
              button.rightAnchor.constraint(equalTo: rightAnchor, constant: -16)
              ]
          NSLayoutConstraint.activate(contstraints)
        
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    @objc func buttonPressed () {
        print(statusLabel)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(photoPrifile)
        photoPrifile.translatesAutoresizingMaskIntoConstraints = false
        addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(statusLabel)
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
    
        button()
        
        NSLayoutConstraint.activate([
            // photo profile
            photoPrifile.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            photoPrifile.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            photoPrifile.widthAnchor.constraint(equalToConstant: 150),
            photoPrifile.heightAnchor.constraint(equalToConstant: 150),
            // name label
            nameLabel.leadingAnchor.constraint(equalTo: photoPrifile.trailingAnchor, constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 27),
            // status label
            statusLabel.leadingAnchor.constraint(equalTo: photoPrifile.trailingAnchor, constant: 16),
            statusLabel.topAnchor.constraint(equalTo: topAnchor, constant: 148)
           ])
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
