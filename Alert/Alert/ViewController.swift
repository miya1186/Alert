//
//  ViewController.swift
//  Alert
//
//  Created by miyazawaryohei on 2020/10/09.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func alertAction(_ sender: Any) {
        
        let alert = UIAlertController(title: "タイトル", message: "メッセージ文", preferredStyle: .alert)
        
        alert.addAction(
            UIAlertAction(
                title: "ボタン１です",
                style: .default,
                handler: { (action) -> Void in
                    self.hello(action.title!)
                })
        )
        
        alert.addAction(
            UIAlertAction(
                title: "ボタン２です",
                style: .default,
                handler: { (action) -> Void in
                    self.hello(action.title!)
                })
        )
        
        alert.addAction(
            UIAlertAction(
                title: "キャンセル",
                style: .cancel,
                handler: nil)
        )
        
        alert.addAction(
            UIAlertAction(
                title: "削除します",
                style: .destructive,
                handler: { (action) -> Void in
                    self.hello(action.title!)
                })
        )
        
        self.present(alert, animated: true, completion:{ print("アラートが表示された")}
        )
    }
        
        func hello(_ msg:String) {
            print(msg)
        }
        
    }
