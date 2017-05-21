//
//  ViewController2ViewController.swift
//  BMI　APP
//
//  Created by 渡邉拓未 on 2017/05/16.
//  Copyright © 2017年 takumi watanabe. All rights reserved.
//

import UIKit

class ViewController2ViewController: UIViewController {
    @IBOutlet weak var finalresult: UILabel!
    @IBOutlet weak var finalgender: UILabel!
    @IBOutlet weak var finalage: UILabel!
    
    var params: Double!
    var ageparams: String!
    var genderparams: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let final: String = String(params)
        //http://qiita.com/Kenya/items/ba8a19f84a830f229e1b
        self.finalresult.text = final
        self.finalage.text = self.ageparams
        self.finalgender.text = self.genderparams
        
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
