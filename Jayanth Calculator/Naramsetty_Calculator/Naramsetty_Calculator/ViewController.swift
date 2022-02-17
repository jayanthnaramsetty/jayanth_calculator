//
//  ViewController.swift
//  Naramsetty_Calculator
//
//  Created by Naramsetty,Jayanth on 2/8/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var DisplayLabel: UILabel!
    
    
   

    var num1 : Double = -1.1
    var num2 : Double = 0
    var result : Double = 0
    
    var Operator = "+"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ac(_ sender: UIButton) {
        num1 = 0
        num2 = 0
        DisplayLabel.text=""
          
    }
    
    @IBAction func c(_ sender: UIButton) {
        DisplayLabel.text=""
    }
    
    @IBAction func PlusOrMinus(_ sender: UIButton) {
        if(DisplayLabel.text?.first=="-"){
                    DisplayLabel.text?.removeFirst()
    }
        else{
            DisplayLabel.text="-\(DisplayLabel.text!)"
    }
        
    }
    
    @IBAction func diviedby(_ sender: UIButton) {
        Operator = "/"
        num1 = Double(DisplayLabel.text!)!
        DisplayLabel.text=""
    }
    
    @IBAction func seven(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "7"
    }
    
    @IBAction func eight(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "8"
    }
    
    @IBAction func nine(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "9"
    }
    
    @IBAction func multiply(_ sender: UIButton) {
        Operator = "*"
        num1 = Double(DisplayLabel.text!)!
        DisplayLabel.text=""
    }
    
    @IBAction func four(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "4"
    }
    
    @IBAction func five(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "5"
    }
    
    @IBAction func six(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "6"
    }
    
    @IBAction func minus(_ sender: UIButton) {
        Operator = "-"
        num1 = Double(DisplayLabel.text!)!
        DisplayLabel.text=""
    }
    
    @IBAction func one(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "1"
    }
    
    @IBAction func second(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "2"
    }
    
    @IBAction func three(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "3"
    }
    
    
    @IBAction func plus(_ sender: UIButton) {
        Operator = "+"
        num1 = Double(DisplayLabel.text!)!
        DisplayLabel.text=""
    }
    
    @IBAction func zero(_ sender: UIButton) {
        DisplayLabel.text = DisplayLabel.text! + "0"
    }
    
    @IBAction func decimal(_ sender: UIButton) {
        
        if(!DisplayLabel.text!.contains(".")){
            DisplayLabel.text = DisplayLabel.text! + "."
            return
    }
        
    }
    
    
    @IBAction func percentage(_ sender: UIButton) {
        Operator = "%"
        num1 = Double(DisplayLabel.text!)!
        DisplayLabel.text=""
    }
    
    
    
    
    
    
    @IBAction func equals(_ sender: UIButton) {
        
        num2 = Double(DisplayLabel.text!)!
                
                switch Operator {
                case "+":
                    result = num1+num2
                    DisplayLabel.text = String(result)
                case "-":
                    result = num1-num2
                    DisplayLabel.text = String(result)
                case "*":
                    result = num1*num2
                    DisplayLabel.text = String(result)
                case "/":
                    result = num1/num2
                    if(num2==0){
                        DisplayLabel.text="Error"
                    }
                    else{
                    let result1=round(result*100000)/100000
                    DisplayLabel.text = String(result1)
                    }
                case "%":

                    result = num1.truncatingRemainder(dividingBy: num2)
                    let result=round(result*10)/10
                    
                    DisplayLabel.text = String(result)
                default:
                    DisplayLabel.text = "ERROR"
    }
        let splitResult =  DisplayLabel.text!.components(separatedBy: ".")
        let test = DisplayLabel.text
        if(!(test == "Error")){
        if(splitResult[1]=="0"){
            DisplayLabel.text = splitResult[0]
        }
        }
        
    }
    

}

