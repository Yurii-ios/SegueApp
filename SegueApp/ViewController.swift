//
//  ViewController.swift
//  SegueApp
//
//  Created by Yurii Sameliuk on 01/02/2020.
//  Copyright © 2020 Yurii Sameliuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var userName = ""
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad called")
        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
       print("viewDidAppear called")
    }

    @IBAction func myButton(_ sender: UIButton) {
       
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        
        userName = myTextField.text!
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
}

