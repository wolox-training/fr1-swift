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
    
    @IBOutlet weak var loginGoogle: UIButton!
    
    @IBAction func ingresarButton(_ sender: UIButton) {
        print("Ingresando...")
    }
    
}
