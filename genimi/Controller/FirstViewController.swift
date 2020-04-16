//
//  FirstViewController.swift
//  genimi
//
//  Created by 片平駿介 on 2020/03/28.
//  Copyright © 2020 ShunsukeKatahira. All rights reserved.
//

import UIKit

// スプラッシュ画面
class FirstViewController: UIViewController {
    
    @IBOutlet weak var iconImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // 50%まで縮小
        UIView.animate(
            withDuration: 0.5,
            delay: 0.5,
            options: UIView.AnimationOptions.curveEaseOut,
            animations: { () in
                self.iconImage.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        },
            completion: { (Bool) in})
        
        // 8倍にする
        UIView.animate(
            withDuration: 0.6,
            delay: 1.0,
            options: UIView.AnimationOptions.curveEaseOut,
            animations: { () in
                self.iconImage.transform = CGAffineTransform(scaleX: 8.0, y: 8.0)
                self.iconImage.alpha = 0
        },
            completion: { (Bool) in
                self.iconImage.removeFromSuperview()
                
                // storyboardのインスタンス取得（別のstoryboardの場合）
                let storyboard: UIStoryboard = UIStoryboard(name: "Top", bundle: nil)
                // 遷移先ViewControllerのインスタンス取得
                let topView = storyboard.instantiateViewController(withIdentifier: "TopView") as! TopViewController
                
                // フルスクリーンで表示する
                topView.modalPresentationStyle = .fullScreen
                // 画面遷移
                self.present(topView, animated: false, completion: nil)
        })
        
    }


}

