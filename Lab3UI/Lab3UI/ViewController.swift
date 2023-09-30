//
//  ViewController.swift
//  Lab3UI
//
//  Created by user235381 on 9/29/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fName: UITextField!
    
    
    @IBOutlet weak var lName: UITextField!
    
    
    @IBOutlet weak var country: UITextField!
    
    
    @IBOutlet weak var age: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var viewText: UITextView!
    
    
    @IBAction func addData(_ sender: UIButton)
    {
        let firstName = fName.text!
        let lastName = lName.text!
        let cName = country.text!
        let Age = age.text!
        
        viewText.text = "Full Name:\(firstName) \(lastName) \n Country: \(cName) \n Age:\(Age) "
        
    }
    
    @IBOutlet weak var iLabel: UILabel!
    
    @IBAction func submitData(_ sender: UIButton)
    {
        let firstName = fName.text!
        let lastName = lName.text!
        let cName = country.text!
        let Age = age.text!
        
        if((!firstName.isEmpty) && (!lastName.isEmpty) && (!cName.isEmpty) && (!Age.isEmpty))
        {
            iLabel.text = "Successfully submitted , Thank you!"
        }
        else
        {
            iLabel.text = "Complete the missing info!"
        }
    }
    
    
    
    
    
    @IBAction func clearInput(_ sender: Any) {
        fName.text = nil
        lName.text = nil
        country.text = nil
        age.text = nil
        viewText.text = nil
        iLabel.text = nil
    }
    
    
    
    
    
}

