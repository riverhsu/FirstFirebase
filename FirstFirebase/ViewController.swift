//
//  ViewController.swift
//  FirstFirebase
//
//  Created by Sgmedical on 2016/10/21.
//  Copyright © 2016年 Sgmedical. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func krakenBtnAction(_ sender: UIButton) {
        
        //如果是使用事先定義好的 events (kFIREventLogin, kFIREventSearch..., 則可以用下拉選單)
        //在下列中，因為使用自定義按鈕,所以，在參數 withName: 直接帶字串即可
        FIRAnalytics.logEvent(withName: "Press_button", parameters: nil)
    }

    @IBAction func switchBtnAction(_ sender: UISwitch) {
        
        FIRAnalytics.logEvent(withName: "flip_Switch", parameters: nil)
    }
    
    @IBAction func sliderBtnAction(_ sender: UISlider) {
        //使用 slider button, 必須使用 touch up events
        //原因是因為 XCode 預設是使用 value changed event, 一旦使用它，就會產生一大堆的 event (因為刻度造成改變)
        /*FIRAnalytics.logEvent(withName: <#T##String#>, parameters: <#T##[String : NSObject]?#>)
        */
        FIRAnalytics.logEvent(withName: "adjust_slider", parameters: ["newValue": sender.value as NSObject])
        
    }
    
}

