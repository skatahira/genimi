//
//  MusicPlayManager.swift
//  genimi
//
//  Created by 片平駿介 on 2020/04/04.
//  Copyright © 2020 ShunsukeKatahira. All rights reserved.
//

import Foundation
import MediaPlayer

class MusicPlayManager {
    
    var player = MPMediaPickerController()
    /// 再生
    func musicPlay(player: MPMediaPickerController) {
//        player.play()
//        play()
    }
    
    /// 一時停止
    func musicPause() {
        pause()
    }
    
    /// 停止
    func musicStop() {
//        stop()
    }
}
