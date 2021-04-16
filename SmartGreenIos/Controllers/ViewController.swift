  //
  //  ViewController.swift
  //  Basic Chat
  //
  //  Created by kenza graoudi on 07/04/2021.
  //

  import UIKit
  import CoreBluetooth

  class ViewController: UIViewController {
    
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUpElements()
    }

    func setUpElements() {
        
        Utilities.styleFilledButton(signUpButton)
        
        signUpButton.backgroundColor = UIColor(named: "buttonBackground")
        signUpButton.layer.cornerRadius = 16
        signUpButton.layer.shadowColor = UIColor(named: "buttonShadow")?.cgColor
        signUpButton.layer.shadowOpacity = 0.8
        signUpButton.layer.shadowOffset = CGSize(width: 1, height: 1)
        signUpButton.layer.borderWidth = 2
        signUpButton.layer.borderColor = UIColor(named: "buttonBorder")?.cgColor
        
        
        Utilities.styleHollowButton(loginButton)
        
        loginButton.backgroundColor = UIColor(named: "buttonBackground")
        loginButton.layer.cornerRadius = 16
        loginButton.layer.shadowColor = UIColor(named: "buttonShadow")?.cgColor
        loginButton.layer.shadowOpacity = 0.8
        loginButton.layer.shadowOffset = CGSize(width: 1, height: 1)
        loginButton.layer.borderWidth = 2
        loginButton.layer.borderColor = UIColor(named: "buttonBorder")?.cgColor
        
    }
  }
