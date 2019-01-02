//
//  ViewController.swift
//  MoneyMachine
//
//  Created by Aseel Alshohatee on 1/1/19.
//  Copyright © 2019 Aseel Alshohatee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ProgramTitle: UILabel!
    @IBOutlet weak var AskingMoneyFromUser: UILabel!
    @IBOutlet weak var textFieldMoneyInDoller: UITextField!
    
    @IBOutlet weak var moneyAfterConverting: UILabel!
    @IBOutlet weak var LabelAfterConvertingText: UILabel!
    
    @IBOutlet weak var pennyButton: UIButton!;
    @IBOutlet weak var nickelButton: UIButton!
    @IBOutlet weak var dimeButton: UIButton!
    @IBOutlet weak var quarterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ProgramTitle.text = "Money Machine";
        AskingMoneyFromUser.text = "How much money do you want to change?"
        LabelAfterConvertingText.text = ""
        
    }
    
    @IBAction func editingDidBegin(_ sender: UITextField) {
        pennyButton.isEnabled = false;
        nickelButton.isEnabled = false;
        dimeButton.isEnabled = false;
        quarterButton.isEnabled = false;
    }
    
    //keyboard return button pressed
   
    @IBAction func moneyEnterCalc(_ sender: UITextField) {
        //let moneyEntered = TextFieldMoneyInDoller.text!;
        //var m : Double =  Double(moneyEntered)!
        sender.resignFirstResponder();
        pennyButton.isEnabled = true;
        nickelButton.isEnabled = true;
        dimeButton.isEnabled = true;
        quarterButton.isEnabled = true;
    }
    
    @IBAction func coinSelected(_ sender: UIButton) {
        //var m : Double = 0;
        //let moneyEntered: String = textFieldMoneyInDoller.text!;
        
        let buttonTitle: String = sender.title(for: .normal)!;
        var factor: Double = 0;  //how many of these coins per dollar
        var pluralButtonTitle: String = "";
        
        switch buttonTitle {
        case "penny":
            factor = 100;
            pluralButtonTitle = "pennies";
        case "nickel":
            factor = 20;
             pluralButtonTitle = "nickels"
        case "dime":
            factor = 10;
            pluralButtonTitle = "dimes"
        case "quarter":
            factor = 4;
            pluralButtonTitle = "quarters"
            
        default:
            print("bad title \(buttonTitle)");
            pluralButtonTitle = "unknowns"
        }
        
        let m: Double =  Double(textFieldMoneyInDoller.text!)!;
        
        let converter: Double  = factor * m;       //(m / 0.01)
        
            
        //moneyAfterConverting.text =  "The money after the change is " + String(converter) + " penny"
        moneyAfterConverting.text =  "The money after the change is \(String(converter)) \(converter == 1 ? buttonTitle : pluralButtonTitle)"
    }
    
    /*
    @IBAction func nickelPressed(_ sender: Any) {
        var m : Double = 0;
        let moneyEntered = textFieldMoneyInDoller.text!
        m =  Double(moneyEntered)!;
        let converter: Double  = (m / 0.05)
        moneyAfterConverting.text =  "The money after the change is " + String(converter) + " nickel"
    }
    
    @IBAction func dimePressed(_ sender: Any) {
        
        var m : Double = 0;
        let moneyEntered = textFieldMoneyInDoller.text!
        m =  Double(moneyEntered)!;
        let converter: Double  = (m / 0.10)
        moneyAfterConverting.text =  "The money after the change is " + String(converter) + " dime"
        
    }
    
    @IBAction func quarterPressed(_ sender: Any) {
        var m : Double = 0;
        let moneyEntered = textFieldMoneyInDoller.text!
        m =  Double(moneyEntered)!;
        let converter: Double  = (m / 0.25)
        moneyAfterConverting.text = "The money after the change is " + String(converter)
            + " quarter"
        
    }
    */
}




