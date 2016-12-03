//
//  TodayViewController.swift
//  PenguinExtension2
//
//  Created by 周大剛 on 2016/12/3.
//  Copyright © 2016年 M.A.D. Crew. All rights reserved.
//

import UIKit
import NotificationCenter
import AVFoundation

class TodayViewController: UIViewController, NCWidgetProviding {
    var player:AVAudioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var locateMeLabel: UILabel!
    @IBOutlet weak var alarmOnLabel: UIButton!
    
    @IBAction func alarmOnButton(_ sender: AnyObject) {
        if player.isPlaying == true{
            player.pause()
            alarmOnLabel.setTitle("Alarm Off🔕", for: .normal)
        }else{
            player.play()
            alarmOnLabel.setTitle("Alarm On🔔", for: .normal)
            print("Play successfully")
        }
        
    }
    
    ////////////// Launch App Setting ////////////////
    ////////////// NSURL的String 必須 Match GitHub-Penguin資料夾中，plist的URL Shemem /////////
    func doLaunchApp(){
        if let url = NSURL(string: "PenguinExtension2://"){
            self.extensionContext?.open(url as URL, completionHandler: nil)
            print("///////////----------")
        }
        print("NNNNNNNNNNN")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /////////////// Insert Music to Extension with only 1 song////////////////
        do{
            let audioPath = Bundle.main.path(forResource: "DANGER Alarm SOUND EFFECT", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath:audioPath!) as URL)
        }
        catch{
            // ERROR
        }
        
        /////////////// Display App  /////////////////
        locateMeLabel.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(TodayViewController.doLaunchApp))
        locateMeLabel.addGestureRecognizer(tapGesture)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdate(completionHandler: ((NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
