//
//  LoginViewController.swift
//  WBooks
//
//  Created by Fermin Robilotte on 17/04/2019.
//  Copyright © 2019 Wolox. All rights reserved.
//

import Foundation
import UIKit
import WolmoCore

final class LoginViewController: UIViewController {
    
    private let _loginView: LoginView = LoginView.loadFromNib()!
    
    override func loadView() {
        view = _loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _loginView.loginGoogle.layer.cornerRadius = 20
        _loginView.loginGoogle.layer.borderWidth = 1.5
        _loginView.loginGoogle.layer.borderColor = UIColor.white.cgColor
        
        _loginView.loginGoogle.addTarget(self, action: #selector(loginToMain(sender:)), for: .touchUpInside)
        
    }
    
    @objc
    func loginToMain(sender: UIButton) {
        let libraryController = LibraryViewController()
        let navigationController = UINavigationController(rootViewController: libraryController)
        let tabBarController = TabBarViewController()
        self.present(tabBarController, animated: true, completion: .none)
    }
}
