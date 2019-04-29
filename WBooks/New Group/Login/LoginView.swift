//
//  LoginView.swift
//  WBooks
//
//  Created by Fermin Robilotte on 17/04/2019.
//  Copyright © 2019 Wolox. All rights reserved.
//

import Foundation
import UIKit
import WolmoCore

final class LoginView: UIView, NibLoadable {
    
    @IBOutlet weak var loginGoogle: UIButton! {
        didSet {
            loginGoogle.layer.cornerRadius = 20
            loginGoogle.layer.borderWidth = 1.5
            loginGoogle.layer.borderColor = UIColor.white.cgColor
        }
    }
    
}
