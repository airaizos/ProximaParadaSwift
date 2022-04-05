//
//  ButtonView.swift
//  ProximaParadaSwift
//
//  Created by Adrian Iraizos Mendoza on 31/3/22.
//

import UIKit

struct ButtonView {
    let buttonTitle: String
    let buttonSubtitle: String
    let buttonImage: UIImage
    
    init(buttonTitle: String, buttonSubtitle: String, buttonImage: UIImage) {
        self.buttonTitle = buttonTitle
        self.buttonSubtitle = buttonSubtitle
        self.buttonImage = buttonImage
    }
    
    static let buttonStyle1: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.title = "title"
        configuration.subtitle = "subtitle"
        configuration.image = UIImage(systemName: "togglepower")!
        
        let button  = UIButton(type: .system)
        
        return button
    }()
}


class ButtonVie: UIViewController {
    /*
    let buttonTitle: String
    let buttonSubtitle: String
    let buttonImage: UIImage
    
    init(buttonTitle: String = "", buttonSubtitle: String = "", buttonImage: UIImage = UIImage(systemName: "togglepower")!) {
        self.buttonTitle = buttonTitle
        self.buttonSubtitle = buttonSubtitle
        self.buttonImage = buttonImage
    }
    */
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let buttonStyle1: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.title = "titulo"
        configuration.subtitle = "subtitle"
        configuration.image = UIImage(systemName: "togglepower")!
        
        let button  = UIButton(type: .system)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

   
    }
}

