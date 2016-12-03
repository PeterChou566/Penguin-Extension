//
//  FirstViewController.swift
//  GitHub-Penguin
//
//  Created by M.A.D. Crew on 13/11/2016.
//  Copyright © 2016 M.A.D. Crew. All rights reserved.
//

import UIKit
import AVFoundation

class ProvideMyLocationViewController: UIViewController {

    
    @IBAction func Center_Map_Button_Tapped(_ sender: UIButton) {
        
        
        
    }
    
    @IBAction func Set_Parents_Button_Tapped(_ sender: UIButton) {
        
        
    }
    
    @IBAction func Provide_My_Location_Button_Tapped(_ sender: UIButton) {
        
        
    }
    
    @IBOutlet weak var Provide_My_Location_Button_Text: UIButton!
    
    //Initialization for audio playing functionality
    var myPlayer:AVAudioPlayer?
    
    var Danger_Button_Tapped_Count = 0
    @IBAction func Danger_Button_Tapped(_ sender: UIButton) {
        
        Danger_Button_Tapped_Count += 1
        
        if Danger_Button_Tapped_Count % 2 == 0 {
            
            Danger_Button_Tapped_Count = 0
            
            myPlayer?.stop()

            
        } else {
            
            let soundName = Manager.currentSoundEffect_Danger
            
            //Choose audio file to be played
            let path = Bundle.main.path(forResource: "\(soundName)", ofType: "mp3")
            
            do {
                myPlayer = try AVAudioPlayer(contentsOf: NSURL.fileURL(withPath: path!))
            } catch _ {
                myPlayer = nil
            }
            
            //Play the audio file
            myPlayer?.stop()
            myPlayer?.currentTime = 0.0
            myPlayer?.play()
            
        }

    }
    
    
    func loadTheme() {
        
        if Manager.currentThemeNumber == 0 {
            
            self.view.backgroundColor = UIColor.init(red: 170.0/255.0, green: 226.0/255.0, blue: 252.0/255.0, alpha: 1.0)
            
            
            
            
        } else if Manager.currentThemeNumber == 1 {
            
            
            self.view.backgroundColor = UIColor.init(red: 238.0/255.0, green: 189.0/255.0, blue: 217.0/255.0, alpha: 1.0)
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadTheme()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

