//
//  ResultViewController.swift
//  MyCalc
//
//  Created by minamin on 2016/05/06.
//  Copyright © 2016年 minamin. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    //最初の画面で入力された金額
    var price :Int = 0
    
    //前の画面で入力されたパーセンテージ
    var percent :Int = 0
    
    //計算結果を表示するフィールド
    @IBOutlet weak var ResultField: UITextField!
    
    //画面生成時の処理
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //割引率を算出
        let percentValue = Float(percent) / 100
        
        //割引額を算出
        let waribikiPrice = Float(price) * percentValue
        
        //割引後の価格を算出
        let percentOffPrice = price - Int(waribikiPrice)
        
        //結果を表示
        ResultField.text = "\(percentOffPrice)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
