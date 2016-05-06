//
//  ViewController.swift
//  MyCalc
//
//  Created by minamin on 2016/05/05.
//  Copyright © 2016年 minamin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //次の画面を取り出す
        let viewController = segue.destinationViewController as! PercentViewController
        
        //金額フィールドの文字列を数値に変換する
        if let price = Int(priceField.text!) {
            //数値に変換した金額を次の画面に設定する
            viewController.price = price
        }
    }
    
    //数字ボタンが押された時
    @IBAction func tapNumberButton(sender: UIButton) {
        //ボタンに表示されている文字列を取得
        let puchedButtonNumber =  sender.titleLabel!.text
        //末尾に押された数字を追加する
        let value = priceField.text! + puchedButtonNumber!
        //文字列型の数字を数値型に変換，変換することで先頭の0を削除
        if let price = Int(value) {
            priceField.text = "\(price)"
        }
        
    }
    
    @IBAction func taped00Button(sender: AnyObject) {
        let value = priceField.text! + "00"
        if let price = Int(value) {
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tappedClearButton(sender: AnyObject) {
        priceField.text = "0"
    }
    
    @IBAction func restart(segue :UIStoryboardSegue) {
        priceField.text = "0"
    }
}

