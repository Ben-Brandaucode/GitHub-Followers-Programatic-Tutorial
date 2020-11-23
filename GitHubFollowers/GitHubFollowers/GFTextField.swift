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
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func condfigure(){
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius      = 10
        layer.borderWidth       = 2
        layer.borderColor       = UIColor.systemGray4.cgColor
        
        textColor               = .label
        tintColor               = .label
        textAlignment           = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        minimumFontSize         = 12
        
        backgroundColor         = .tertiarySystemBackground
        autocorrectionType      = .no
        
        placeholder = " Enter a UserName:"
        
    }
}
