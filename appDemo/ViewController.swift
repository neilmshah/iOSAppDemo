//
//  ViewController.swift
//  appDemo
//
//  Created by Neil Shah on 9/14/18.
//  Copyright © 2018 Neil Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var helloText: UITextField!
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundColor = view.backgroundColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeColor(_ sender: Any) {
        helloLabel.textColor = UIColor.orange
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.blue
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        if(helloText.text?.isEmpty)!{
            helloLabel.text = "Goodbye!"
        } else {
            helloLabel.text = helloText.text
            helloText.text = ""
        }
        view.endEditing(true)
    }
    
    @IBAction func resetGesture(_ sender: Any) {
        helloLabel.text = "Hello from Charlie!"
        helloLabel.textColor = UIColor.white
        view.backgroundColor = backgroundColor
    }
}

