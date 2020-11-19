//
//  ViewController.swift
//  Chatter
//
//  Created by Aiden on 18/11/2020.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {


    @IBOutlet weak var welcomeTitle: CLTypingLabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeTitle.text = K.appName
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view will appear.")
    }
    
    

    @IBAction func signUpPressed(_ sender: Any) {
        performSegue(withIdentifier: K.signUpSegue, sender: self)
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        performSegue(withIdentifier: K.logInSegue, sender: self)
    }
}

@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}


