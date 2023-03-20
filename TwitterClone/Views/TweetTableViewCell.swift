//
//  TweetTableViewCell.swift
//  TwitterClone
//
//  Created by MacBookPro on 19/03/23.
//

import UIKit

class TweetTableViewCell: UITableViewCell {
    
    static let indentifier = "TweetTableViewCell"
    
    private let avatarImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 25
        imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
        imageView.image = UIImage(systemName: "person")
        imageView.backgroundColor = .red
        return imageView
    }()
    
    private let displayNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Amr Hossam"
        label.font = .systemFont(ofSize: 18,weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "@Amr"
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 16,weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let tweetTextContentLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "This is my Mockup tweet. It is going to take multiple lines. I believe some more text is enough but lets add some more anyway.. and cheers youtube.!!!"
        label.numberOfLines = 0
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(avatarImageView)
        contentView.addSubview(displayNameLabel)
        contentView.addSubview(usernameLabel)
        contentView.addSubview(tweetTextContentLabel)
        configureConstrains()
    }
    
    private func configureConstrains(){
        
        let avatarImageViewConstrains = [
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 20),
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 14),
            avatarImageView.heightAnchor.constraint(equalToConstant: 50),
            avatarImageView.widthAnchor.constraint(equalToConstant: 50)
        ]
        
        let displayNameLabelConstrains = [
            displayNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor,constant: 20),
            displayNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 20)
        ]
        
        let usernameLabelConstrains = [
            usernameLabel.leadingAnchor.constraint(equalTo: displayNameLabel.trailingAnchor, constant: 10),
            usernameLabel.centerYAnchor.constraint(equalTo: displayNameLabel.centerYAnchor)
        ]
        
        let tweetTextContentLabelConstrains = [
            tweetTextContentLabel.leadingAnchor.constraint(equalTo: displayNameLabel.leadingAnchor),
            tweetTextContentLabel.topAnchor.constraint(equalTo: displayNameLabel.bottomAnchor,constant: 10),
            tweetTextContentLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -15),
            tweetTextContentLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -15)
            
        ]
        
        NSLayoutConstraint.activate(avatarImageViewConstrains)
        NSLayoutConstraint.activate(displayNameLabelConstrains)
        NSLayoutConstraint.activate(usernameLabelConstrains)
        NSLayoutConstraint.activate(tweetTextContentLabelConstrains)
        
        
    }
    
    required init?(coder: NSCoder){
        fatalError()
    }
}
