//
//  ViewController.swift
//  test1
//
//  Created by 宏輝 on 09/10/2019.
//  Copyright © 2019 Hiroki Kondo. All rights reserved.
//

import UIKit

class ViewController: UITableViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UITextFieldを生成
        let textField = UITextField()
        textField.frame = CGRect(x: 10, y: 100, width: UIScreen.main.bounds.size.width-20, height: 38)
        // プレースホルダを設定
        textField.placeholder = "入力してください。"
        // キーボードタイプを指定
        textField.keyboardType = .default
        // 枠線のスタイルを設定
        textField.borderStyle = .roundedRect
        // 改行ボタンの種類を設定
        textField.returnKeyType = .search
        // テキストを全消去するボタンを表示
        textField.clearButtonMode = .always
        // UITextFieldを追加
        self.view.addSubview(textField)
        // デリゲートを指定
        textField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }


}

