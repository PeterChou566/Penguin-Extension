//
//  WhistleViewController.swift
//  GitHub-Penguin
//
//  Created by M.A.D. Crew on 13/11/2016.
//  Copyright © 2016 M.A.D. Crew. All rights reserved.
//

import UIKit
import AVFoundation

class WhistleViewController: UIViewController {
    
    @IBOutlet weak var Logo: UIImageView!
    
    
    //Initialization for audio playing functionality
    var myPlayer:AVAudioPlayer?
    
    var Alarm_1_Button_Tapped_Count = 0
    
    @IBAction func Start_Alarm_1_Button_Tapped(_ sender: UIButton) {
        
        Alarm_2_Button_Tapped_Count = 0
        Alarm_1_Button_Tapped_Count += 1
        
        if Alarm_1_Button_Tapped_Count % 2 == 0 {
            
            Alarm_1_Button_Tapped_Count = 0
            
            myPlayer?.stop()
            
            
        } else {
            
            let soundName = Manager.currentSoundEffect_Pervert
            
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
    
    
    var Alarm_2_Button_Tapped_Count = 0
    @IBAction func Start_Alarm_2_Button_Tapped(_ sender: UIButton) {
        
        
        Alarm_1_Button_Tapped_Count = 0
        Alarm_2_Button_Tapped_Count += 1
        
        if Alarm_2_Button_Tapped_Count % 2 == 0 {
            
            Alarm_2_Button_Tapped_Count = 0
            
            myPlayer?.stop()
            
            
        } else {
            
            let soundName = Manager.currentSoundEffect_Stalker
            
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
    
    
    @IBAction func Set_Alarms_Button_Tapped(_ sender: UIButton) {
        
        Alarm_1_Button_Tapped_Count = 0
        Alarm_2_Button_Tapped_Count = 0
        myPlayer?.stop()
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
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
