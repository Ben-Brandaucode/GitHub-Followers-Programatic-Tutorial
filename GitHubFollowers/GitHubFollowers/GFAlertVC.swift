//
//  GFAlertVC.swift
//  GitHubFollowers
//
//  Created by Ben Brandau Brandau on 11/27/20.
//

import UIKit

class GFAlertVC: UIViewController {
    
    let containerview = UIView()
    let titleLabel = GFTitleLabel(textAlignment: .center, fontSize: 20)
    let messageLabel = GFBodyLabel(textAlignment: .center)
    let actionButton = GFButton(backgroundColor: .systemPink, title: "Okay Bro")
    
    var alertTitle: String?
    var message: String?
    var buttonTitle: String?
    
    let padding: CGFloat = 20
    
    init (title: String, message: String, buttonTitle: String){
        super.init(nibName: nil, bundle: nil)
        self.alertTitle = title
        self.message     =  message
        self.buttonTitle = buttonTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75)
        configureContainerView()
        ConfigureTitleLabel()
    }
    
    func configureContainerView(){
        view.addSubview(containerview)
        containerview.backgroundColor = .systemBackground
        containerview.layer.cornerRadius = 16
        containerview.layer.borderWidth = 2
        containerview.layer.borderColor = UIColor.white.cgColor
        containerview.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            containerview.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerview.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerview.widthAnchor.constraint(equalToConstant: 280),
            containerview.heightAnchor.constraint(equalToConstant: 220)
            
        ])
    }
    
    func ConfigureTitleLabel(){
        containerview.addSubview(titleLabel)
        titleLabel.text = alertTitle ?? " someething went wrong"
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: containerview.topAnchor,constant: padding),
            titleLabel.leadingAnchor.constraint(equalTo: containerview.trailingAnchor, constant: padding),
            titleLabel.trailingAnchor.constraint(equalTo: containerview.trailingAnchor, constant: -padding),
            titleLabel.heightAnchor.constraint(equalToConstant: 28)
            
        ])
    }
    
    
    func configureActionButton(){
        containerview.addSubview(actionButton)
        actionButton

    }
}
