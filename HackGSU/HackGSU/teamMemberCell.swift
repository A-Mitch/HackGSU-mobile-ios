//
//  teamMemberCell.swift
//  hackGSU
//
//  Created by Alexander Mitchell "MitchellOfficial" on 10/6/16.
//  Copyright © 2016 hackGSU. All rights reserved.
//

import UIKit


class teamMemberCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    
    let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "profilePic")
        iv.contentMode = .scaleAspectFill
        iv.backgroundColor = .red
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.layer.cornerRadius = 75
        iv.layer.borderColor = UIColor.black.cgColor
        iv.layer.borderWidth = 1
        return iv
    }()
    
    
    let teamTextLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "iOS Developer"
        return label
    }()
    
    let nameTextLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Alex Mitchell"
        return label
    }()
    
    
    func setupView() {
        backgroundColor = .white
        addSubview(profileImageView)
        addSubview(teamTextLabel)
        addSubview(nameTextLabel)
        
        //ios 9 constraints x,y, width , height
        
        profileImageView.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -1).isActive = true
        profileImageView.centerYAnchor.constraint(equalTo: topAnchor).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        
        teamTextLabel.topAnchor.constraint(equalTo: nameTextLabel.bottomAnchor).isActive = true
        teamTextLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 1).isActive = true
        
        nameTextLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor).isActive = true
        nameTextLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0.5).isActive = true
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
