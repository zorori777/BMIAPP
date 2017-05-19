//
//  ViewController.swift
//  BMI　APP
//
//  Created by 渡邉拓未 on 2017/05/16.
//  Copyright © 2017年 takumi watanabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate  {
    @IBOutlet weak var youtall: UITextField!
    @IBOutlet weak var youweight: UITextField!
    @IBOutlet weak var myage: UITextField!
    @IBOutlet weak var yougender: UISegmentedControl!
    
    var finalvalue :Double!
    var realgender :Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        youtall.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pushsegue"{
            let secondViewController = segue.destination as! ViewController2ViewController
            finalvalue = caluculate()
            realgender = yougender.selectedSegmentIndex

            secondViewController.params = finalvalue
            secondViewController.ageparams = self.myage.text
            secondViewController.genderparams = yougender.titleForSegment(at: realgender)
        }
    }
    
    @IBAction func BMIbutton(_ sender: UIButton) {
    }
    
    func caluculate() -> Double {
        let m_tall :Double
        let tall = Double(youtall.text!)
         m_tall = tall! / 100
        let weight = Double(youweight.text!)
        let realweight = weight!
        let dbtall = m_tall * m_tall
        
        var result = realweight / dbtall * 10
        return (round(result) / 10)
        //http://swift.tecc0.com/?p=476

    }

    func textFieldShouldReturn(_ youtall: UITextField) -> Bool {
        youtall.resignFirstResponder()
        return true
    }
}
