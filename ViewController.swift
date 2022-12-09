//
//  ViewController.swift
//  View life cycle demo
//
//  Created by Mac on 19/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBOutlet weak var stateTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindDataToViews()
    }
    func bindDataToViews(){
        
        firstNameLabel.text = "Shruti"
        lastNameLabel.text = "Ahirekar"
        cityTextField.text = "Satara"
        cityTextField.textColor = .black
        cityTextField.backgroundColor = .gray
        
    stateTextField?.text = "Maharashtra"
    stateTextField?.textColor = .black
    stateTextField?.backgroundColor = .gray
        
        }
    override func viewWillAppear(_ animated: Bool) {
        print("View Will Appear Called")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("View Did Appear Called")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("View Did Disappear Called")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("View Will Disappear Called")
    }
    override func didReceiveMemoryWarning() {
        print("did Rx Mem Warning Called")
    }

    @IBAction func buttonClickEvent(_ sender: Any) {
    let SecondviewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondviewController")
        navigationController?.pushViewController(SecondviewController!, animated: true)
        
    }
    
}


    
