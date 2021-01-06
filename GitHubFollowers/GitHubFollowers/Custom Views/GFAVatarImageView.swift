//
//  GFAVatarImageView.swift
//  GitHubFollowers
//
//  Created by Ben Brandau Brandau on 12/17/20.
//

import UIKit

class GFAVatarImageView: UIImageView {
    let placeholderImage = UIImage(named: "avatar-placeholder")!

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure(){
        layer.cornerRadius = 10
        clipsToBounds      = true
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
        
        
    }
}
