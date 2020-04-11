//
//  Music.swift
//  SingletonPattern
//
//  Created by Ferraz on 14/02/20.
//  Copyright © 2020 Ferraz. All rights reserved.
//

import Foundation
import AVFoundation

class Music{
    
    static var music: Music = {
        let instance = Music()
        do{
            let path = Bundle.main.path(forResource: "musica1", ofType: "wav")
            let url = URL(fileURLWithPath: path!)
            instance.song = try AVAudioPlayer(contentsOf: url)
            instance.song!.play()
            print("foi")
        } catch {
            print("error na musica")
        }
        return instance
    }()
    
    var song: AVAudioPlayer?
    
    init() {
//        getInstance()
    }
    
//    func getInstance(){
//        if Music.music == nil{
//            Music.music = Music()
//        } else {
//            do{
//                let path = Bundle.main.path(forResource: "musica1", ofType: "wav")
//                let url = URL(fileURLWithPath: path!)
//                song = try AVAudioPlayer(contentsOf: url)
//                song!.play()
//                print("foi")
//            } catch {
//                print("error na musica")
//            }
//        }
//    }
}
