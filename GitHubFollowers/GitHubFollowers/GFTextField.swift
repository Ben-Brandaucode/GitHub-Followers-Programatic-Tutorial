//
//  GFTextField.swift
//  GitHubFollowers
//
//  Created by Ben Brandau Brandau on 11/22/20.
//

import UIKit

class GFTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func configure(){
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius      = 10
        layer.borderWidth       = 5
        layer.borderColor       = UIColor.systemBlue.cgColor
        
        textColor               = .label
        tintColor               = .label
        textAlignment           = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        minimumFontSize         = 12
        
        backgroundColor         = .tertiarySystemBackground
        autocorrectionType      = .no
        returnKeyType           = .go
        
        placeholder = " Enter a UserName:"
        
    }
}
