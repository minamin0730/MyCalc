//
//  PercentViewController.swift
//  MyCalc
//
//  Created by minamin on 2016/05/06.
//  Copyright © 2016年 minamin. All rights reserved.
//

import UIKit

class PercentViewController: UIViewController {

    var price: Int = 0
    
    //割引％入力フィールド
    @IBOutlet weak var percentField: UITextField!
    //押されたボタンを取得して表示に反映させる
    @IBAction func tapNumberButton(sender: UIButton) {
        let pushedButtonNumber = sender.titleLabel!.text
        let value = percentField.text! + pushedButtonNumber!
        if let percent = Int(value) {
            percentField.text = "\(percent)"
        }
    }
    
    @IBAction func tapClearButton(sender: AnyObject) {
        percentField.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //次の画面を取り出す
        let viewController = segue.destinationViewController as! ResultViewController
        //次の画面に現在保持している金額を設定する
        viewController.price = price
        if let percent = Int(percentField.text!) {
            viewController.percent = percent
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
