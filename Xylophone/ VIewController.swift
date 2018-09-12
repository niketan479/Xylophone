//
//  ViewController.swift
//  Xylophone
//


import UIKit
import AVFoundation
import AudioToolbox



class ViewController: UIViewController{
    
   
    var player: AVAudioPlayer?
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        print(sender.tag) // testing button pressed tag
        
        let path = Bundle.main.path(forResource: "note\(sender.tag)", ofType : "wav")!
        let url = URL(fileURLWithPath : path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch {
            
            print ("There is an issue with this code!")
            
        }


    }
        
        
        
    }

