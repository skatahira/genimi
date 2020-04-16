//
//  TopViewController.swift
//  genimi
//
//  Created by 片平駿介 on 2020/03/29.
//  Copyright © 2020 ShunsukeKatahira. All rights reserved.
//

import UIKit
import Gemini
import MediaPlayer

// Top画面
class TopViewController: UIViewController {
    
    @IBOutlet weak var playStopButton: UIButton!
    
    let musicPlayManager = MusicPlayManager()
    var music = MPMediaPickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playStopButton.setTitle("再生", for: .normal)
//        playStopButton.setImage(UIImage.init(named: "play"), for: .normal)
    }
    
    /// 再生ボタン押下
    @IBAction func tapPlayStopButton(_ sender: Any) {
        musicPlayManager.musicPlay(player: music)
        
    }
    
}
