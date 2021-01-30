//
//  ViewController.swift
//  Crediit Card
//
//  Created by Aisel Usmanova on 1/24/21.
//  Copyright © 2021 Aisel Usmanova. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate  {
    private var previousTextFieldContent: String?
    private var previousSelection: UITextRange?
    
    @IBOutlet weak var CardNumberText: CustomTextField!
    
    @IBOutlet weak var mmyyText: CustomTextField!
    @IBOutlet weak var SecurityText: CustomTextField!
    @IBOutlet weak var FirstNameText: CustomTextField!
    @IBOutlet weak var LastNameText: CustomTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    @IBAction func SubmitBtn(_ sender: Any) {
        var ccnum = CardNumberText.text!
        if ccnum.count > 16 && ccnum.count < 16{
            CardNumberText.layer.borderColor = UIColor.red.cgColor
        }else if SecurityText.text!.count > 3 && SecurityText.text!.count < 3{
            SecurityText.layer.borderColor = UIColor.red.cgColor
        }
        let alert = UIAlertController(title: "", message: "Payment successful", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))

        self.present(alert, animated: true)
    }
    
    

}

