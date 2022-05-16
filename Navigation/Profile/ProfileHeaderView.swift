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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(photoPrifile)
        addSubview(nameLabel)
        addSubview(statusLabel)
        
        button()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        photoPrifile.frame = CGRect(x: 16, y: 16, width: 150, height: 150)
        nameLabel.frame = CGRect(x: 16+150+16, y: 27, width: self.bounds.width - (16+150+16) - 16, height: 32)
        statusLabel.frame = CGRect(x: 182, y: 128, width: self.bounds.width - (16+150+16) - 16, height: 32)
    }
    func button () {
        // let button = UIButton(frame: CGRect(x: 16, y: 182, width: 200, height: 50))
        let button = UIButton()
        addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
     //  NSLayoutConstraint(item: button, attribute: .leading, relatedBy: .equal, toItem: button, attribute: .leftMargin, multiplier: 1, constant: 0).isActive = true
        
      let contstraints = [
            button.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            button.topAnchor.constraint(equalTo: topAnchor, constant: 182),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.rightAnchor.constraint(equalTo: rightAnchor, constant: -16)
            ]
        NSLayoutConstraint.activate(contstraints)
       
        button.setTitle("Show status", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 4
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.7
        button.layer.shadowColor = UIColor.black.cgColor
        
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    @objc func buttonPressed () {
        print(statusLabel)
    }
}
